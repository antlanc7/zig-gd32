const gd32 = @import("lib/GD32F4xx.zig");
const systick = @import("systick.zig");
const std = @import("std");
const IRC_FREQ = 16000000;
const Uart = @import("uart.zig");

pub fn main() noreturn {
    systick.init(IRC_FREQ / 1000);

    // enable clock for gpio A and C
    gd32.peripherals.RCU.AHB1EN.modify(.{
        .PCEN = 1,
        .PEEN = 1,
    });
    // enable usart 2 (attached to usb vcom via gpio A2 and A15)
    gd32.peripherals.RCU.APB1EN.modify(.{ .UART7EN = 1 });
    // pin 2 and 15 mode alternate function
    gd32.peripherals.GPIOE.CTL.modify(.{
        .CTL0 = 2,
        .CTL1 = 2,
    });
    // pin 0 and 1 alternate function 8 = uart
    gd32.peripherals.GPIOE.AFSEL0.modify(.{ .SEL0 = 8, .SEL1 = 8 });

    // usart 2 configuration: 115200 baudrate, only transmit and enable
    gd32.peripherals.UART7.BAUD.write_raw(IRC_FREQ / 115200);
    gd32.peripherals.UART7.CTL0.modify(.{
        // .RE = 1,
        .TEN = 1,
        .UEN = 1,
    });

    // gpio b3 output (onboard led)
    gd32.peripherals.GPIOC.CTL.modify(.{ .CTL4 = 1 });
    const delay_ms = 500;
    var uart_buffer: [1024]u8 = undefined;
    var uart: Uart = .{ .regs = gd32.peripherals.UART7 };
    var uart7_writer = uart.writer(&uart_buffer);

    while (true) {
        const curr_sec = systick.getTicks() / 1000;
        uart7_writer.interface.print("ciao da zig, {}\r\n", .{curr_sec}) catch unreachable;
        uart7_writer.interface.flush() catch unreachable;
        gd32.peripherals.GPIOC.BOP.modify(.{ .BOP4 = 1 }); // set gpio out value
        systick.delay(delay_ms);
        gd32.peripherals.GPIOC.BC.modify(.{ .CR4 = 1 }); // set gpio out value
        systick.delay(delay_ms);
    }
}
