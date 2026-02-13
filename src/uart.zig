const std = @import("std");
const Io = std.Io;
const gd32 = @import("lib/GD32F4xx.zig");
const UART = *volatile gd32.types.peripherals.UART3;

const Uart = @This();
regs: UART,

fn write(uart: *Uart, bytes: []const u8) usize {
    for (bytes) |byte| {
        uart.regs.DATA.write_raw(byte);
        while (uart.regs.STAT0.read().TBE != 1) asm volatile ("");
    }
    return bytes.len;
}

pub const Writer = struct {
    uart: *Uart,
    interface: Io.Writer,
};

fn drain(w: *Io.Writer, data: []const []const u8, splat: usize) Io.Writer.Error!usize {
    const uartWriter: *Writer = @alignCast(@fieldParentPtr("interface", w));
    const self = uartWriter.uart;
    const b = w.buffered();
    var written: usize = 0;
    while (written < b.len) {
        written += self.write(b[written..]);
    }
    w.end = 0;
    written = 0;
    for (data[0 .. data.len - 1]) |bytes| {
        written += self.write(bytes);
    }
    for (0..splat) |_| {
        written += self.write(data[data.len - 1]);
    }
    return written;
}

pub fn writer(uart: *Uart, buffer: []u8) Writer {
    return .{
        .uart = uart,
        .interface = .{
            .buffer = buffer,
            .end = 0,
            .vtable = &.{
                .drain = drain,
            },
        },
    };
}
