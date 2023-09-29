const gd32_lib = @import("lib/GD32F4xx.zig");
const gd32_types = gd32_lib.types.peripherals;
const gd32 = gd32_lib.devices.GD32F4xx.peripherals;
const systick = @import("systick.zig");
const std = @import("std");
const IRC_FREQ = 16000000;

// fn uart_write(uart: *volatile gd32_types.USART, bytes: []const u8) error{}!usize {
//     for (bytes) |byte| {
//         uart.TDR.write_raw(byte);
//         while (uart.ISR.read().TC != 1) asm volatile ("");
//     }
//     return bytes.len;
// }

// const uart2_writer = std.io.Writer(
//     *volatile gd32_types.USART,
//     error{},
//     uart_write,
// ){
//     .context = gd32.USART2,
// };

pub fn main() noreturn {
    systick.init(IRC_FREQ / 1000);

    // enable clock for gpio A and C
    gd32.RCU.AHB1EN.modify(.{
        .PAEN = 1,
        .PCEN = 1,
    });
    // // enable usart 2 (attached to usb vcom via gpio A2 and A15)
    // gd32.RCU.APB1EN.modify(.{ .USART2EN = 1 });
    // // pin 2 and 15 mode alternate function
    // gd32.GPIOA.CTL.modify(.{
    //     .CTL2 = 2,
    //     .CTL15 = 2,
    // });
    // // pin 2 and 15 alternate function 1 = uart
    // gd32.GPIOA.AFRL.modify(.{ .AFRL2 = 1 });
    // gd32.GPIOA.AFRH.modify(.{ .AFRH15 = 1 });

    // // usart 2 configuration: 115200 baudrate, only transmit and enable
    // gd32.USART2.BRR.write_raw(IRC_FREQ / 115200);
    // gd32.USART2.CR1.modify(.{
    //     // .RE = 1,
    //     .TE = 1,
    //     .UE = 1,
    // });

    // gpio b3 output (onboard led)
    gd32.GPIOC.CTL.modify(.{ .CTL4 = 1 });
    var counter: u32 = 0;
    const delay_ms = 500;
    while (true) {
        // uart2_writer.print("ciao da zig, {}\r\n", .{counter}) catch unreachable;
        gd32.GPIOC.BOP.modify(.{ .BOP4 = 1 }); // set gpio out value
        systick.delay(delay_ms);
        gd32.GPIOC.BC.modify(.{ .CR4 = 1 }); // set gpio out value
        systick.delay(delay_ms);
        counter +%= 1;
    }
}
