const gd32 = @import("lib/GD32F4xx.zig").devices.GD32F4xx.peripherals;

const systick_t = packed struct {
    STK_CSR: packed struct(u32) {
        ENABLE: u1,
        TICKINT: u1,
        CLKSOURCE: u1,
        padding: u13,
        COUNTFLAG: u1,
        padding2: u15,
    },
    STK_RVR: packed struct(u32) {
        RELOAD: u24,
        padding: u8,
    },
    STK_CVR: packed struct(u32) {
        CURRENT: u24,
        padding: u8,
    },
    STK_CALIB: packed struct(u32) {
        TENMS: u24,
        padding: u8,
    },
};
const SYSTICK: *volatile systick_t = @ptrFromInt(0xe000e010);

pub fn init(reload: u24) void {
    gd32.RCU.APB2EN.modify(.{ .SYSCFGEN = 1 });
    SYSTICK.STK_RVR.RELOAD = reload;
    SYSTICK.STK_CVR.CURRENT = 0;
    SYSTICK.STK_CSR.CLKSOURCE = 1;
    SYSTICK.STK_CSR.TICKINT = 1;
    SYSTICK.STK_CSR.ENABLE = 1;
}

var systick: u32 = 0;
export fn sysTick_Handler() void {
    systick +%= 1;
}

pub fn delay(ms: u32) void {
    awaitTicks(ms + systick);
}

pub fn getTicks() u32 {
    return systick;
}

pub fn awaitTicks(ms: u32) void {
    while (systick < ms) {
        asm volatile ("" ::: "memory");
    }
}
