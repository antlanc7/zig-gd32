const gd32_lib = @import("lib/GD32F4xx.zig");
const gd32_types = gd32_lib.types.peripherals;
const gd32 = gd32_lib.devices.GD32F4xx.peripherals;
const systick = @import("systick.zig");
const std = @import("std");
const IRC_FREQ = 16000000;

fn uart_write(uart: *volatile gd32_types.UART3, bytes: []const u8) error{}!usize {
    for (bytes) |byte| {
        uart.DATA.write_raw(byte);
        while (uart.STAT0.read().TBE != 1) asm volatile ("");
    }
    return bytes.len;
}

const uart7_writer = std.io.Writer(
    *volatile gd32_types.UART3,
    error{},
    uart_write,
){
    .context = gd32.UART7,
};

pub fn main() noreturn {
    systick.init(IRC_FREQ / 1000);

    // enable clock for gpio A and C
    gd32.RCU.AHB1EN.modify(.{
        .PCEN = 1,
        .PEEN = 1,
    });
    // enable usart 2 (attached to usb vcom via gpio A2 and A15)
    gd32.RCU.APB1EN.modify(.{ .UART7EN = 1 });
    // pin 2 and 15 mode alternate function
    gd32.GPIOE.CTL.modify(.{
        .CTL0 = 2,
        .CTL1 = 2,
    });
    // pin 0 and 1 alternate function 8 = uart
    gd32.GPIOE.AFSEL0.modify(.{ .SEL0 = 8, .SEL1 = 8 });

    // usart 2 configuration: 115200 baudrate, only transmit and enable
    gd32.UART7.BAUD.write_raw(IRC_FREQ / 115200);
    gd32.UART7.CTL0.modify(.{
        // .RE = 1,
        .TEN = 1,
        .UEN = 1,
    });

    // gpio b3 output (onboard led)
    gd32.GPIOC.CTL.modify(.{ .CTL4 = 1 });
    const delay_ms = 500;
    while (true) {
        const curr_sec = systick.getTicks() / 1000;
        uart7_writer.print("ciao da zig, {}\r\n", .{curr_sec}) catch unreachable;
        gd32.GPIOC.BOP.modify(.{ .BOP4 = 1 }); // set gpio out value
        systick.delay(delay_ms);
        gd32.GPIOC.BC.modify(.{ .CR4 = 1 }); // set gpio out value
        systick.delay(delay_ms);
    }
}
