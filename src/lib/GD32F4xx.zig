const mmio = @import("mmio.zig");

pub const devices = struct {
    ///  GD32F4xx ARM 32-bit Cortex-M4 Microcontroller based device
    pub const GD32F4xx = struct {
        pub const properties = struct {
            pub const @"cpu.endian" = "little";
            pub const @"cpu.mpuPresent" = "1";
            pub const @"cpu.revision" = "r0p1";
            pub const @"cpu.name" = "CM4";
            pub const @"cpu.nvicPrioBits" = "4";
            pub const @"cpu.vendorSystickConfig" = "0";
            pub const @"cpu.fpuPresent" = "1";
        };

        pub const peripherals = struct {
            ///  General-purpose-timers
            pub const TIMER1 = @as(*volatile types.peripherals.TIMER1, @ptrFromInt(0x40000000));
            ///  General-purpose-timers
            pub const TIMER2 = @as(*volatile types.peripherals.TIMER1, @ptrFromInt(0x40000400));
            ///  General-purpose-timers
            pub const TIMER3 = @as(*volatile types.peripherals.TIMER1, @ptrFromInt(0x40000800));
            ///  General-purpose-timers
            pub const TIMER4 = @as(*volatile types.peripherals.TIMER1, @ptrFromInt(0x40000c00));
            ///  Basic-timers
            pub const TIMER5 = @as(*volatile types.peripherals.TIMER5, @ptrFromInt(0x40001000));
            ///  Basic-timers
            pub const TIMER6 = @as(*volatile types.peripherals.TIMER5, @ptrFromInt(0x40001400));
            ///  General-purpose-timers
            pub const TIMER11 = @as(*volatile types.peripherals.TIMER8, @ptrFromInt(0x40001800));
            ///  General-purpose-timers
            pub const TIMER12 = @as(*volatile types.peripherals.TIMER9, @ptrFromInt(0x40001c00));
            ///  General-purpose-timers
            pub const TIMER13 = @as(*volatile types.peripherals.TIMER9, @ptrFromInt(0x40002000));
            ///  Real-time clock
            pub const RTC = @as(*volatile types.peripherals.RTC, @ptrFromInt(0x40002800));
            ///  Window watchdog timer
            pub const WWDGT = @as(*volatile types.peripherals.WWDGT, @ptrFromInt(0x40002c00));
            ///  free watchdog timer
            pub const FWDGT = @as(*volatile types.peripherals.FWDGT, @ptrFromInt(0x40003000));
            ///  Serial peripheral interface
            pub const I2S1_add = @as(*volatile types.peripherals.SPI0, @ptrFromInt(0x40003400));
            ///  Serial peripheral interface
            pub const SPI1 = @as(*volatile types.peripherals.SPI0, @ptrFromInt(0x40003800));
            ///  Serial peripheral interface
            pub const SPI2 = @as(*volatile types.peripherals.SPI0, @ptrFromInt(0x40003c00));
            ///  Serial peripheral interface
            pub const I2S2_add = @as(*volatile types.peripherals.SPI0, @ptrFromInt(0x40004000));
            ///  Universal synchronous asynchronous receiver transmitter
            pub const USART1 = @as(*volatile types.peripherals.USART0, @ptrFromInt(0x40004400));
            ///  Universal synchronous asynchronous receiver transmitter
            pub const USART2 = @as(*volatile types.peripherals.USART0, @ptrFromInt(0x40004800));
            ///  Universal asynchronous receiver transmitter
            pub const UART3 = @as(*volatile types.peripherals.UART3, @ptrFromInt(0x40004c00));
            ///  Universal asynchronous receiver transmitter
            pub const UART4 = @as(*volatile types.peripherals.UART3, @ptrFromInt(0x40005000));
            ///  Inter integrated circuit
            pub const I2C0 = @as(*volatile types.peripherals.I2C0, @ptrFromInt(0x40005400));
            ///  Inter integrated circuit
            pub const I2C1 = @as(*volatile types.peripherals.I2C0, @ptrFromInt(0x40005800));
            ///  Inter integrated circuit
            pub const I2C2 = @as(*volatile types.peripherals.I2C0, @ptrFromInt(0x40005c00));
            ///  Controller area network
            pub const CAN0 = @as(*volatile types.peripherals.CAN0, @ptrFromInt(0x40006400));
            ///  Controller area network
            pub const CAN1 = @as(*volatile types.peripherals.CAN0, @ptrFromInt(0x40006800));
            ///  Clock trim controller
            pub const CTC = @as(*volatile types.peripherals.CTC, @ptrFromInt(0x40006c00));
            ///  Power management unit
            pub const PMU = @as(*volatile types.peripherals.PMU, @ptrFromInt(0x40007000));
            ///  Digital-to-analog converter
            pub const DAC = @as(*volatile types.peripherals.DAC, @ptrFromInt(0x40007400));
            ///  Universal asynchronous receiver transmitter
            pub const UART6 = @as(*volatile types.peripherals.UART3, @ptrFromInt(0x40007800));
            ///  Universal asynchronous receiver transmitter
            pub const UART7 = @as(*volatile types.peripherals.UART3, @ptrFromInt(0x40007c00));
            ///  Programmable current reference
            pub const IREF = @as(*volatile types.peripherals.IREF, @ptrFromInt(0x4000c400));
            ///  Advanced-timers
            pub const TIMER0 = @as(*volatile types.peripherals.TIMER0, @ptrFromInt(0x40010000));
            ///  Advanced-timers
            pub const TIMER7 = @as(*volatile types.peripherals.TIMER0, @ptrFromInt(0x40010400));
            ///  Universal synchronous asynchronous receiver transmitter
            pub const USART0 = @as(*volatile types.peripherals.USART0, @ptrFromInt(0x40011000));
            ///  Universal synchronous asynchronous receiver transmitter
            pub const USART5 = @as(*volatile types.peripherals.USART0, @ptrFromInt(0x40011400));
            ///  Analog to digital converter
            pub const ADC0 = @as(*volatile types.peripherals.ADC0, @ptrFromInt(0x40012000));
            ///  Analog to digital converter
            pub const ADC1 = @as(*volatile types.peripherals.ADC0, @ptrFromInt(0x40012100));
            ///  Analog to digital converter
            pub const ADC2 = @as(*volatile types.peripherals.ADC0, @ptrFromInt(0x40012200));
            ///  common ADC register
            pub const ADC_Common = @as(*volatile types.peripherals.ADC_Common, @ptrFromInt(0x40012300));
            ///  Secure digital input/output interface
            pub const SDIO = @as(*volatile types.peripherals.SDIO, @ptrFromInt(0x40012c00));
            ///  Serial peripheral interface
            pub const SPI0 = @as(*volatile types.peripherals.SPI0, @ptrFromInt(0x40013000));
            ///  Serial peripheral interface
            pub const SPI3 = @as(*volatile types.peripherals.SPI0, @ptrFromInt(0x40013400));
            ///  System configuration controller
            pub const SYSCFG = @as(*volatile types.peripherals.SYSCFG, @ptrFromInt(0x40013800));
            ///  External interrupt/event controller
            pub const EXTI = @as(*volatile types.peripherals.EXTI, @ptrFromInt(0x40013c00));
            ///  General-purpose-timers
            pub const TIMER8 = @as(*volatile types.peripherals.TIMER8, @ptrFromInt(0x40014000));
            ///  General-purpose-timers
            pub const TIMER9 = @as(*volatile types.peripherals.TIMER9, @ptrFromInt(0x40014400));
            ///  General-purpose-timers
            pub const TIMER10 = @as(*volatile types.peripherals.TIMER9, @ptrFromInt(0x40014800));
            ///  Serial peripheral interface
            pub const SPI4 = @as(*volatile types.peripherals.SPI0, @ptrFromInt(0x40015000));
            ///  Serial peripheral interface
            pub const SPI5 = @as(*volatile types.peripherals.SPI5, @ptrFromInt(0x40015400));
            ///  TFT-LCD interface
            pub const TLI = @as(*volatile types.peripherals.TLI, @ptrFromInt(0x40016800));
            ///  General-purpose I/Os
            pub const GPIOA = @as(*volatile types.peripherals.GPIOA, @ptrFromInt(0x40020000));
            ///  General-purpose I/Os
            pub const GPIOB = @as(*volatile types.peripherals.GPIOB, @ptrFromInt(0x40020400));
            ///  General-purpose I/Os
            pub const GPIOC = @as(*volatile types.peripherals.GPIOC, @ptrFromInt(0x40020800));
            ///  General-purpose I/Os
            pub const GPIOD = @as(*volatile types.peripherals.GPIOC, @ptrFromInt(0x40020c00));
            ///  General-purpose I/Os
            pub const GPIOE = @as(*volatile types.peripherals.GPIOC, @ptrFromInt(0x40021000));
            ///  General-purpose I/Os
            pub const GPIOF = @as(*volatile types.peripherals.GPIOC, @ptrFromInt(0x40021400));
            ///  General-purpose I/Os
            pub const GPIOG = @as(*volatile types.peripherals.GPIOC, @ptrFromInt(0x40021800));
            ///  General-purpose I/Os
            pub const GPIOH = @as(*volatile types.peripherals.GPIOC, @ptrFromInt(0x40021c00));
            ///  General-purpose I/Os
            pub const GPIOI = @as(*volatile types.peripherals.GPIOC, @ptrFromInt(0x40022000));
            ///  cyclic redundancy check calculation unit
            pub const CRC = @as(*volatile types.peripherals.CRC, @ptrFromInt(0x40023000));
            ///  Reset and clock unit
            pub const RCU = @as(*volatile types.peripherals.RCU, @ptrFromInt(0x40023800));
            ///  FMC
            pub const FMC = @as(*volatile types.peripherals.FMC, @ptrFromInt(0x40023c00));
            ///  DMA controller
            pub const DMA0 = @as(*volatile types.peripherals.DMA0, @ptrFromInt(0x40026000));
            ///  DMA controller
            pub const DMA1 = @as(*volatile types.peripherals.DMA0, @ptrFromInt(0x40026400));
            ///  Ethernet: media access control
            pub const ENET_MAC = @as(*volatile types.peripherals.ENET_MAC, @ptrFromInt(0x40028000));
            ///  Ethernet: MAC statistics counters
            pub const ENET_MSC = @as(*volatile types.peripherals.ENET_MSC, @ptrFromInt(0x40028100));
            ///  Ethernet: Precision time protocol
            pub const ENET_PTP = @as(*volatile types.peripherals.ENET_PTP, @ptrFromInt(0x40028700));
            ///  Ethernet: DMA controller operation
            pub const ENET_DMA = @as(*volatile types.peripherals.ENET_DMA, @ptrFromInt(0x40029000));
            ///  MAC flow control threshold register
            pub const ENET_MAC_FCTH = @as(*volatile types.peripherals.ENET_MAC_FCTH, @ptrFromInt(0x40029080));
            ///  Image processing accelerator
            pub const IPA = @as(*volatile types.peripherals.IPA, @ptrFromInt(0x4002b000));
            ///  USB high speed global registers
            pub const HS_GLOBAL = @as(*volatile types.peripherals.HS_GLOBAL, @ptrFromInt(0x40040000));
            ///  USB on the go full speed host
            pub const HS_HOST = @as(*volatile types.peripherals.HS_HOST, @ptrFromInt(0x40040400));
            ///  USB on the go high speed device
            pub const HS_DEVICE = @as(*volatile types.peripherals.HS_DEVICE, @ptrFromInt(0x40040800));
            ///  USB on the go high speed power and clock
            pub const HS_PWRCLK = @as(*volatile types.peripherals.HS_PWRCLK, @ptrFromInt(0x40040e00));
            ///  USB full speed global registers
            pub const FS_GLOBAL = @as(*volatile types.peripherals.FS_GLOBAL, @ptrFromInt(0x50000000));
            ///  USB on the go full speed host
            pub const FS_HOST = @as(*volatile types.peripherals.FS_HOST, @ptrFromInt(0x50000400));
            ///  USB on the go full speed device
            pub const FS_DEVICE = @as(*volatile types.peripherals.FS_DEVICE, @ptrFromInt(0x50000800));
            ///  USB on the go full speed
            pub const FS_PWRCLK = @as(*volatile types.peripherals.FS_PWRCLK, @ptrFromInt(0x50000e00));
            ///  Digital Camera Interface
            pub const DCI = @as(*volatile types.peripherals.DCI, @ptrFromInt(0x50050000));
            ///  Ture random number generator
            pub const TRNG = @as(*volatile types.peripherals.TRNG, @ptrFromInt(0x50060800));
            ///  External memory controller
            pub const EXMC = @as(*volatile types.peripherals.EXMC, @ptrFromInt(0xa0000000));
            ///  Nested Vectored Interrupt Controller
            pub const NVIC = @as(*volatile types.peripherals.NVIC, @ptrFromInt(0xe000e100));
            ///  Debug support
            pub const DBG = @as(*volatile types.peripherals.DBG, @ptrFromInt(0xe0042000));
        };
    };
};

pub const types = struct {
    pub const peripherals = struct {
        ///  Analog to digital converter
        pub const ADC0 = extern struct {
            ///  status register
            STAT: mmio.Mmio(packed struct(u32) {
                ///  Analog watchdog event flag
                WDE: u1,
                ///  End of group conversion flag
                EOC: u1,
                ///  End of inserted group conversion flag
                EOIC: u1,
                ///  Start flag of inserted channel group
                STIC: u1,
                ///  Start flag of regular channel group
                STRC: u1,
                ///  Regular data register overflow
                ROVF: u1,
                padding: u26,
            }),
            ///  control register 0
            CTL0: mmio.Mmio(packed struct(u32) {
                ///  Analog watchdog channel select
                WDCHSEL: u5,
                ///  Interrupt enable for EOC
                EOCIE: u1,
                ///  Analog watchdog WDE
                WDEIE: u1,
                ///  Interrupt enable for EOIC
                EOICIE: u1,
                ///  Scan mode
                SM: u1,
                ///  When in scan mode, analog watchdog is effective on a single channel
                WDSC: u1,
                ///  Inserted channel group convert automatically
                ICA: u1,
                ///  Discontinuous mode on regular channels
                DISRC: u1,
                ///  Discontinuous mode on inserted channels
                DISIC: u1,
                ///  Number of conversions in discontinuous mode
                DISNUM: u3,
                reserved22: u6,
                ///  Inserted channel analog watchdog enable
                IWDEN: u1,
                ///  Regular channel analog watchdog enable
                RWDEN: u1,
                ///  ADC data resolution
                DRES: u2,
                ///  Interrupt enable for ROVF
                ROVFIE: u1,
                padding: u5,
            }),
            ///  control register 1
            CTL1: mmio.Mmio(packed struct(u32) {
                ///  ADC on
                ADCON: u1,
                ///  Continuous mode
                CTN: u1,
                ///  ADC calibration
                CLB: u1,
                ///  Reset calibration
                RSTCLB: u1,
                reserved8: u4,
                ///  DMA request enable
                DMA: u1,
                ///  DMA disable mode
                DDM: u1,
                ///  End of conversion mode
                EOCM: u1,
                ///  Data alignment
                DAL: u1,
                reserved16: u4,
                ///  External trigger select for inserted channel
                ETSIC: u4,
                ///  External trigger mode for inserted channel
                ETMIC: u2,
                ///  Software start on inserted channel
                SWICST: u1,
                reserved24: u1,
                ///  External trigger select for regular channel
                ETSRC: u4,
                ///  External trigger mode for regular channel
                ETMRC: u2,
                ///  Software start on regular channel
                SWRCST: u1,
                padding: u1,
            }),
            ///  Sample time register 0
            SAMPT0: mmio.Mmio(packed struct(u32) {
                ///  Channel 10 sample time selection
                SPT10: u3,
                ///  Channel 11 sample time selection
                SPT11: u3,
                ///  Channel 12 sample time selection
                SPT12: u3,
                ///  Channel 13 sample time selection
                SPT13: u3,
                ///  Channel 14 sample time selection
                SPT14: u3,
                ///  Channel 15 sample time selection
                SPT15: u3,
                ///  Channel 16 sample time selection
                SPT16: u3,
                ///  Channel 17 sample time selection
                SPT17: u3,
                ///  Channel 18 sample time selection
                SPT18: u3,
                padding: u5,
            }),
            ///  Sample time register 1
            SAMPT1: mmio.Mmio(packed struct(u32) {
                ///  Channel 0 sample time selection
                SPT0: u3,
                ///  Channel 1 sample time selection
                SPT1: u3,
                ///  Channel 2 sample time selection
                SPT2: u3,
                ///  Channel 3 sample time selection
                SPT3: u3,
                ///  Channel 4 sample time selection
                SPT4: u3,
                ///  Channel 5 sample time selection
                SPT5: u3,
                ///  Channel 6 sample time selection
                SPT6: u3,
                ///  Channel 7 sample time selection
                SPT7: u3,
                ///  Channel 8 sample time selection
                SPT8: u3,
                ///  Channel 9 sample time selection
                SPT9: u3,
                padding: u2,
            }),
            ///  Inserted channel data offset register 0
            IOFF0: mmio.Mmio(packed struct(u32) {
                ///  Data offset for inserted channel 0
                IOFF: u12,
                padding: u20,
            }),
            ///  Inserted channel data offset register 1
            IOFF1: mmio.Mmio(packed struct(u32) {
                ///  Data offset for inserted channel 1
                IOFF: u12,
                padding: u20,
            }),
            ///  Inserted channel data offset register 2
            IOFF2: mmio.Mmio(packed struct(u32) {
                ///  Data offset for inserted channel 2
                IOFF: u12,
                padding: u20,
            }),
            ///  Inserted channel data offset register 3
            IOFF3: mmio.Mmio(packed struct(u32) {
                ///  Data offset for inserted channel 3
                IOFF: u12,
                padding: u20,
            }),
            ///  watchdog higher threshold register
            WDHT: mmio.Mmio(packed struct(u32) {
                ///  Analog watchdog higher threshold
                WDHT: u12,
                padding: u20,
            }),
            ///  watchdog lower threshold register
            WDLT: mmio.Mmio(packed struct(u32) {
                ///  Analog watchdog lower threshold
                WDLT: u12,
                padding: u20,
            }),
            ///  regular sequence register 0
            RSQ0: mmio.Mmio(packed struct(u32) {
                ///  13th conversion in regular sequence
                RSQ12: u5,
                ///  14th conversion in regular sequence
                RSQ13: u5,
                ///  15th conversion in regular sequence
                RSQ14: u5,
                ///  16th conversion in regular sequence
                RSQ15: u5,
                ///  Regular channel group length
                RL: u4,
                padding: u8,
            }),
            ///  regular sequence register 1
            RSQ1: mmio.Mmio(packed struct(u32) {
                ///  7th conversion in regular sequence
                RSQ6: u5,
                ///  8th conversion in regular sequence
                RSQ7: u5,
                ///  9th conversion in regular sequence
                RSQ8: u5,
                ///  10th conversion in regular sequence
                RSQ9: u5,
                ///  11th conversion in regular sequence
                RSQ10: u5,
                ///  12th conversion in regular sequence
                RSQ11: u5,
                padding: u2,
            }),
            ///  regular sequence register 2
            RSQ2: mmio.Mmio(packed struct(u32) {
                ///  1st conversion in regular sequence
                RSQ0: u5,
                ///  2nd conversion in regular sequence
                RSQ1: u5,
                ///  3rd conversion in regular sequence
                RSQ2: u5,
                ///  4th conversion in regular sequence
                RSQ3: u5,
                ///  5th conversion in regular sequence
                RSQ4: u5,
                ///  6th conversion in regular sequence
                RSQ5: u5,
                padding: u2,
            }),
            ///  Inserted sequence register
            ISQ: mmio.Mmio(packed struct(u32) {
                ///  1st conversion in inserted sequence
                ISQ0: u5,
                ///  2nd conversion in inserted sequence
                ISQ1: u5,
                ///  3rd conversion in inserted sequence
                ISQ2: u5,
                ///  4th conversion in inserted sequence
                ISQ3: u5,
                ///  Inserted channel group length
                IL: u2,
                padding: u10,
            }),
            ///  Inserted data register 0
            IDATA0: mmio.Mmio(packed struct(u32) {
                ///  Inserted number n conversion data
                IDATAn: u16,
                padding: u16,
            }),
            ///  Inserted data register 1
            IDATA1: mmio.Mmio(packed struct(u32) {
                ///  Inserted number n conversion data
                IDATAn: u16,
                padding: u16,
            }),
            ///  Inserted data register 2
            IDATA2: mmio.Mmio(packed struct(u32) {
                ///  Inserted number n conversion data
                IDATAn: u16,
                padding: u16,
            }),
            ///  Inserted data register 3
            IDATA3: mmio.Mmio(packed struct(u32) {
                ///  Inserted number n conversion data
                IDATAn: u16,
                padding: u16,
            }),
            ///  regular data register
            RDATA: mmio.Mmio(packed struct(u32) {
                ///  Regular channel data
                RDATA: u16,
                padding: u16,
            }),
            reserved128: [48]u8,
            ///  Oversample control register
            OVSAMPCTL: mmio.Mmio(packed struct(u32) {
                ///  Oversampling Enable
                OVSEN: u1,
                reserved2: u1,
                ///  Oversampling ratio
                OVSR: u3,
                ///  Oversampling shift
                OVSS: u4,
                ///  Triggered Oversampling
                TOVS: u1,
                padding: u22,
            }),
        };

        ///  Window watchdog timer
        pub const WWDGT = extern struct {
            ///  Control register
            CTL: mmio.Mmio(packed struct(u32) {
                ///  7-bit counter
                CNT: u7,
                ///  Activation bit
                WDGTEN: u1,
                padding: u24,
            }),
            ///  Configuration register
            CFG: mmio.Mmio(packed struct(u32) {
                ///  7-bit window value
                WIN: u7,
                ///  Prescaler
                PSC: u2,
                ///  Early wakeup interrupt
                EWIE: u1,
                padding: u22,
            }),
            ///  Status register
            STAT: mmio.Mmio(packed struct(u32) {
                ///  Early wakeup interrupt flag
                EWIF: u1,
                padding: u31,
            }),
        };

        ///  USB on the go high speed power and clock
        pub const HS_PWRCLK = extern struct {
            ///  power and clock gating control register (PWRCLKCTL)
            PWRCLKCTL: mmio.Mmio(packed struct(u32) {
                ///  Stop the USB clock
                SUCLK: u1,
                ///  Stop HCLK
                SHCLK: u1,
                padding: u30,
            }),
        };

        ///  common ADC register
        pub const ADC_Common = extern struct {
            ///  summary status register
            SSTAT: mmio.Mmio(packed struct(u32) {
                ///  This bit equals to the WDE bit of ADC0
                WDE0: u1,
                ///  This bit equals to the EOC bit of ADC0
                EOC0: u1,
                ///  This bit equals to the EOIC bit of ADC0
                EOIC0: u1,
                ///  This bit equals to the STIC bit of ADC0
                STIC0: u1,
                ///  This bit equals to the STRC bit of ADC0
                STRC0: u1,
                ///  This bit equals to the ROVF bit of ADC0
                ROVF0: u1,
                reserved8: u2,
                ///  This bit equals to the WDE bit of ADC1
                WDE1: u1,
                ///  This bit equals to the EOC bit of ADC1
                EOC1: u1,
                ///  This bit equals to the EOIC bit of ADC1
                EOIC1: u1,
                ///  This bit equals to the STIC bit of ADC1
                STIC1: u1,
                ///  This bit equals to the STRC bit of ADC1
                STRC1: u1,
                ///  This bit equals to the ROVF bit of ADC1
                ROVF1: u1,
                reserved16: u2,
                ///  This bit equals to the WDE bit of ADC2
                WDE2: u1,
                ///  This bit equals to the EOC bit of ADC2
                EOC2: u1,
                ///  This bit equals to the EOIC bit of ADC2
                EOIC2: u1,
                ///  This bit equals to the STIC bit of ADC2
                STIC2: u1,
                ///  This bit equals to the STRC bit of ADC2
                STRC2: u1,
                ///  This bit equals to the ROVF bit of ADC2
                ROVF2: u1,
                padding: u10,
            }),
            ///  sync control register
            SYNCCTL: mmio.Mmio(packed struct(u32) {
                ///  ADC sync mode
                SYNCM: u5,
                reserved8: u3,
                ///  ADC sync delay
                SYNCDLY: u4,
                reserved13: u1,
                ///  ADC sync DMA disable mode
                SYNCDDM: u1,
                ///  ADC sync DMA mode selection
                SYNCDMA: u2,
                ///  ADC clock
                ADCCK: u3,
                reserved22: u3,
                ///  Channel 18 (1/4 voltate of external battery) enable of ADC0
                VBATEN: u1,
                ///  Channel 16 (temperature sensor) and 17 (internal reference voltage) enable of ADC0
                TSVREN: u1,
                padding: u8,
            }),
            ///  Sync regular data register
            SYNCDATA: mmio.Mmio(packed struct(u32) {
                ///  Regular data1 in ADC sync mode
                SYNCDATA1: u16,
                ///  Regular data2 in ADC sync mode
                SYNCDATA2: u16,
            }),
        };

        ///  Controller area network
        pub const CAN0 = extern struct {
            ///  Control register
            CTL: mmio.Mmio(packed struct(u32) {
                ///  Initial working mode
                IWMOD: u1,
                ///  Sleep working mode
                SLPWMOD: u1,
                ///  Transmit FIFO order
                TFO: u1,
                ///  Receive FIFO overwrite disable
                RFOD: u1,
                ///  Automatic retransmission disable
                ARD: u1,
                ///  Automatic wakeup
                AWU: u1,
                ///  Automatic bus-off recovery
                ABOR: u1,
                ///  Time-triggered communication
                TTC: u1,
                reserved15: u7,
                ///  Software reset
                SWRST: u1,
                ///  Debug freeze
                DFZ: u1,
                padding: u15,
            }),
            ///  Status register
            STAT: mmio.Mmio(packed struct(u32) {
                ///  Initial working state
                IWS: u1,
                ///  Sleep working state
                SLPWS: u1,
                ///  Error interrupt flag
                ERRIF: u1,
                ///  Status change interrupt flag of wakeup from sleep working mode
                WUIF: u1,
                ///  Status change interrupt flag of sleep working mode entering
                SLPIF: u1,
                reserved8: u3,
                ///  Transmitting state
                TS: u1,
                ///  Receiving state
                RS: u1,
                ///  Last sample value of RX pin
                LASTRX: u1,
                ///  RX level
                RXL: u1,
                padding: u20,
            }),
            ///  Transmit status register
            TSTAT: mmio.Mmio(packed struct(u32) {
                ///  Mailbox 0 transmit finished
                MTF0: u1,
                ///  Mailbox 0 transmit finished and no error
                MTFNERR0: u1,
                ///  Mailbox 0 arbitration lost
                MAL0: u1,
                ///  Mailbox 0 transmit error
                MTE0: u1,
                reserved7: u3,
                ///  Mailbox 0 stop transmitting
                MST0: u1,
                ///  Mailbox 1 transmit finished
                MTF1: u1,
                ///  Mailbox 1 transmit finished and no error
                MTFNERR1: u1,
                ///  Mailbox 1 arbitration lost
                MAL1: u1,
                ///  Mailbox 1 transmit error
                MTE1: u1,
                reserved15: u3,
                ///  Mailbox 1 stop transmitting
                MST1: u1,
                ///  Mailbox 2 transmit finished
                MTF2: u1,
                ///  Mailbox 2 transmit finished and no error
                MTFNERR2: u1,
                ///  Mailbox 2 arbitration lost
                MAL2: u1,
                ///  Mailbox 2 transmit error
                MTE2: u1,
                reserved23: u3,
                ///  Mailbox 2 stop transmitting
                MST2: u1,
                ///  number of the transmit FIFO mailbox in which the frame will be transmitted if at least one mailbox is empty
                NUM: u2,
                ///  Transmit mailbox 0 empty
                TME0: u1,
                ///  Transmit mailbox 1 empty
                TME1: u1,
                ///  Transmit mailbox 2 empty
                TME2: u1,
                ///  Transmit mailbox 0 last sending in transmit FIFO
                TMLS0: u1,
                ///  Transmit mailbox 1 last sending in transmit FIFO
                TMLS1: u1,
                ///  Transmit mailbox 2 last sending in transmit FIFO
                TMLS2: u1,
            }),
            ///  Receive message FIFO0 register
            RFIFO0: mmio.Mmio(packed struct(u32) {
                ///  Receive FIFO0 length
                RFL0: u2,
                reserved3: u1,
                ///  Receive FIFO0 full
                RFF0: u1,
                ///  Receive FIFO0 overfull
                RFO0: u1,
                ///  Receive FIFO0 dequeue
                RFD0: u1,
                padding: u26,
            }),
            ///  Receive message FIFO1 register
            RFIFO1: mmio.Mmio(packed struct(u32) {
                ///  Receive FIFO1 length
                RFL1: u2,
                reserved3: u1,
                ///  Receive FIFO1 full
                RFF1: u1,
                ///  Receive FIFO1 overfull
                RFO1: u1,
                ///  Receive FIFO1 dequeue
                RFD1: u1,
                padding: u26,
            }),
            ///  Interrupt enable register
            INTEN: mmio.Mmio(packed struct(u32) {
                ///  Transmit mailbox empty interrupt enable
                TMEIE: u1,
                ///  Receive FIFO0 not empty interrupt enable
                RFNEIE0: u1,
                ///  Receive FIFO0 full interrupt enable
                RFFIE0: u1,
                ///  Receive FIFO0 overfull interrupt enable
                RFOIE0: u1,
                ///  Receive FIFO1 not empty interrupt enable
                RFNEIE1: u1,
                ///  Receive FIFO1 full interrupt enable
                RFFIE1: u1,
                ///  Receive FIFO1 overfull interrupt enable
                RFOIE1: u1,
                reserved8: u1,
                ///  Warning error interrupt enable
                WERRIE: u1,
                ///  Passive error interrupt enable
                PERRIE: u1,
                ///  Bus-off interrupt enable
                BOIE: u1,
                ///  Error number interrupt enable
                ERRNIE: u1,
                reserved15: u3,
                ///  Error interrupt enable
                ERRIE: u1,
                ///  Wakeup interrupt enable
                WIE: u1,
                ///  Sleep working interrupt enable
                SLPWIE: u1,
                padding: u14,
            }),
            ///  Error register
            ERR: mmio.Mmio(packed struct(u32) {
                ///  Warning error
                WERR: u1,
                ///  Passive error
                PERR: u1,
                ///  Bus-off error
                BOERR: u1,
                reserved4: u1,
                ///  Error number
                ERRN: u3,
                reserved16: u9,
                ///  Transmit Error Count defined by the CAN standard
                TECNT: u8,
                ///  Receive Error Count defined by the CAN standard
                RECNT: u8,
            }),
            ///  Bit timing register
            BT: mmio.Mmio(packed struct(u32) {
                ///  Baud rate prescaler
                BUADPSC: u10,
                reserved16: u6,
                ///  Bit segment 1
                BS1: u4,
                ///  Bit segment 2
                BS2: u3,
                reserved24: u1,
                ///  Resynchronization jump width
                SJW: u2,
                reserved30: u4,
                ///  Loopback communication mode
                LCMOD: u1,
                ///  Silent communication mode
                SCMOD: u1,
            }),
            reserved384: [352]u8,
            ///  Transmit mailbox identifier register 0
            TMI0: mmio.Mmio(packed struct(u32) {
                ///  Transmit enable
                TEN: u1,
                ///  Frame type
                FT: u1,
                ///  Frame format
                FF: u1,
                ///  The frame identifier
                EFID: u18,
                ///  The frame identifier
                SFID_EFID: u11,
            }),
            ///  Transmit mailbox property register 0
            TMP0: mmio.Mmio(packed struct(u32) {
                ///  Data length code
                DLENC: u4,
                reserved8: u4,
                ///  Time stamp enable
                TSEN: u1,
                reserved16: u7,
                ///  Time stamp
                TS: u16,
            }),
            ///  Transmit mailbox data0 register
            TMDATA00: mmio.Mmio(packed struct(u32) {
                ///  Data byte 0
                DB0: u8,
                ///  Data byte 1
                DB1: u8,
                ///  Data byte 2
                DB2: u8,
                ///  Data byte 3
                DB3: u8,
            }),
            ///  Transmit mailbox data1 register
            TMDATA10: mmio.Mmio(packed struct(u32) {
                ///  Data byte 4
                DB4: u8,
                ///  Data byte 5
                DB5: u8,
                ///  Data byte 6
                DB6: u8,
                ///  Data byte 7
                DB7: u8,
            }),
            ///  Transmit mailbox identifier register 1
            TMI1: mmio.Mmio(packed struct(u32) {
                ///  Transmit enable
                TEN: u1,
                ///  Frame type
                FT: u1,
                ///  Frame format
                FF: u1,
                ///  The frame identifier
                EFID: u18,
                ///  The frame identifier
                SFID_EFID: u11,
            }),
            ///  Transmit mailbox property register 1
            TMP1: mmio.Mmio(packed struct(u32) {
                ///  Data length code
                DLENC: u4,
                reserved8: u4,
                ///  Time stamp enable
                TSEN: u1,
                reserved16: u7,
                ///  Time stamp
                TS: u16,
            }),
            ///  Transmit mailbox data0 register
            TMDATA01: mmio.Mmio(packed struct(u32) {
                ///  Data byte 0
                DB0: u8,
                ///  Data byte 1
                DB1: u8,
                ///  Data byte 2
                DB2: u8,
                ///  Data byte 3
                DB3: u8,
            }),
            ///  Transmit mailbox data1 register
            TMDATA11: mmio.Mmio(packed struct(u32) {
                ///  Data byte 4
                DB4: u8,
                ///  Data byte 5
                DB5: u8,
                ///  Data byte 6
                DB6: u8,
                ///  Data byte 7
                DB7: u8,
            }),
            ///  Transmit mailbox identifier register 2
            TMI2: mmio.Mmio(packed struct(u32) {
                ///  Transmit enable
                TEN: u1,
                ///  Frame type
                FT: u1,
                ///  Frame format
                FF: u1,
                ///  The frame identifier
                EFID: u18,
                ///  The frame identifier
                SFID_EFID: u11,
            }),
            ///  Transmit mailbox property register 2
            TMP2: mmio.Mmio(packed struct(u32) {
                ///  Data length code
                DLENC: u4,
                reserved8: u4,
                ///  Time stamp enable
                TSEN: u1,
                reserved16: u7,
                ///  Time stamp
                TS: u16,
            }),
            ///  Transmit mailbox data0 register
            TMDATA02: mmio.Mmio(packed struct(u32) {
                ///  Data byte 0
                DB0: u8,
                ///  Data byte 1
                DB1: u8,
                ///  Data byte 2
                DB2: u8,
                ///  Data byte 3
                DB3: u8,
            }),
            ///  Transmit mailbox data1 register
            TMDATA12: mmio.Mmio(packed struct(u32) {
                ///  Data byte 4
                DB4: u8,
                ///  Data byte 5
                DB5: u8,
                ///  Data byte 6
                DB6: u8,
                ///  Data byte 7
                DB7: u8,
            }),
            ///  Receive FIFO mailbox identifier register
            RFIFOMI0: mmio.Mmio(packed struct(u32) {
                reserved1: u1,
                ///  Frame type
                FT: u1,
                ///  Frame format
                FF: u1,
                ///  The frame identifier
                EFID: u18,
                ///  The frame identifier
                SFID_EFID: u11,
            }),
            ///  Receive FIFO0 mailbox property register
            RFIFOMP0: mmio.Mmio(packed struct(u32) {
                ///  Data length code
                DLENC: u4,
                reserved8: u4,
                ///  Filtering index
                FI: u8,
                ///  Time stamp
                TS: u16,
            }),
            ///  Receive FIFO0 mailbox data0 register
            RFIFOMDATA00: mmio.Mmio(packed struct(u32) {
                ///  Data byte 0
                DB0: u8,
                ///  Data byte 1
                DB1: u8,
                ///  Data byte 2
                DB2: u8,
                ///  Data byte 3
                DB3: u8,
            }),
            ///  Receive FIFO0 mailbox data1 register
            RFIFOMDATA10: mmio.Mmio(packed struct(u32) {
                ///  Data byte 4
                DB4: u8,
                ///  Data byte 5
                DB5: u8,
                ///  Data byte 6
                DB6: u8,
                ///  Data byte 7
                DB7: u8,
            }),
            ///  Receive FIFO1 mailbox identifier register
            RFIFOMI1: mmio.Mmio(packed struct(u32) {
                reserved1: u1,
                ///  Frame type
                FT: u1,
                ///  Frame format
                FF: u1,
                ///  The frame identifier
                EFID: u18,
                ///  The frame identifier
                SFID_EFID: u11,
            }),
            ///  Receive FIFO1 mailbox property register
            RFIFOMP1: mmio.Mmio(packed struct(u32) {
                ///  Data length code
                DLENC: u4,
                reserved8: u4,
                ///  Filtering index
                FI: u8,
                ///  Time stamp
                TS: u16,
            }),
            ///  Receive FIFO1 mailbox data0 register
            RFIFOMDATA01: mmio.Mmio(packed struct(u32) {
                ///  Data byte 0
                DB0: u8,
                ///  Data byte 1
                DB1: u8,
                ///  Data byte 2
                DB2: u8,
                ///  Data byte 3
                DB3: u8,
            }),
            ///  Receive FIFO1 mailbox data1 register
            RFIFOMDATA11: mmio.Mmio(packed struct(u32) {
                ///  Data byte 4
                DB4: u8,
                ///  Data byte 5
                DB5: u8,
                ///  Data byte 6
                DB6: u8,
                ///  Data byte 7
                DB7: u8,
            }),
            reserved512: [48]u8,
            ///  Filter control register
            FCTL: mmio.Mmio(packed struct(u32) {
                ///  Filter lock disable
                FLD: u1,
                reserved8: u7,
                ///  Header bank of CAN1 filter
                HBC1F: u6,
                padding: u18,
            }),
            ///  Filter mode configuration register
            FMCFG: mmio.Mmio(packed struct(u32) {
                ///  Filter mode
                FMOD0: u1,
                ///  Filter mode
                FMOD1: u1,
                ///  Filter mode
                FMOD2: u1,
                ///  Filter mode
                FMOD3: u1,
                ///  Filter mode
                FMOD4: u1,
                ///  Filter mode
                FMOD5: u1,
                ///  Filter mode
                FMOD6: u1,
                ///  Filter mode
                FMOD7: u1,
                ///  Filter mode
                FMOD8: u1,
                ///  Filter mode
                FMOD9: u1,
                ///  Filter mode
                FMOD10: u1,
                ///  Filter mode
                FMOD11: u1,
                ///  Filter mode
                FMOD12: u1,
                ///  Filter mode
                FMOD13: u1,
                ///  Filter mode
                FMOD14: u1,
                ///  Filter mode
                FMOD15: u1,
                ///  Filter mode
                FMOD16: u1,
                ///  Filter mode
                FMOD17: u1,
                ///  Filter mode
                FMOD18: u1,
                ///  Filter mode
                FMOD19: u1,
                ///  Filter mode
                FMOD20: u1,
                ///  Filter mode
                FMOD21: u1,
                ///  Filter mode
                FMOD22: u1,
                ///  Filter mode
                FMOD23: u1,
                ///  Filter mode
                FMOD24: u1,
                ///  Filter mode
                FMOD25: u1,
                ///  Filter mode
                FMOD26: u1,
                ///  Filter mode
                FMOD27: u1,
                padding: u4,
            }),
            reserved524: [4]u8,
            ///  Filter scale configuration register
            FSCFG: mmio.Mmio(packed struct(u32) {
                ///  Filter scale configuration
                FS0: u1,
                ///  Filter scale configuration
                FS1: u1,
                ///  Filter scale configuration
                FS2: u1,
                ///  Filter scale configuration
                FS3: u1,
                ///  Filter scale configuration
                FS4: u1,
                ///  Filter scale configuration
                FS5: u1,
                ///  Filter scale configuration
                FS6: u1,
                ///  Filter scale configuration
                FS7: u1,
                ///  Filter scale configuration
                FS8: u1,
                ///  Filter scale configuration
                FS9: u1,
                ///  Filter scale configuration
                FS10: u1,
                ///  Filter scale configuration
                FS11: u1,
                ///  Filter scale configuration
                FS12: u1,
                ///  Filter scale configuration
                FS13: u1,
                ///  Filter scale configuration
                FS14: u1,
                ///  Filter scale configuration
                FS15: u1,
                ///  Filter scale configuration
                FS16: u1,
                ///  Filter scale configuration
                FS17: u1,
                ///  Filter scale configuration
                FS18: u1,
                ///  Filter scale configuration
                FS19: u1,
                ///  Filter scale configuration
                FS20: u1,
                ///  Filter scale configuration
                FS21: u1,
                ///  Filter scale configuration
                FS22: u1,
                ///  Filter scale configuration
                FS23: u1,
                ///  Filter scale configuration
                FS24: u1,
                ///  Filter scale configuration
                FS25: u1,
                ///  Filter scale configuration
                FS26: u1,
                ///  Filter scale configuration
                FS27: u1,
                padding: u4,
            }),
            reserved532: [4]u8,
            ///  Filter associated FIFO register
            FAFIFO: mmio.Mmio(packed struct(u32) {
                ///  Filter 0 associated with FIFO
                FAF0: u1,
                ///  Filter 1 associated with FIFO
                FAF1: u1,
                ///  Filter 2 associated with FIFO
                FAF2: u1,
                ///  Filter 3 associated with FIFO
                FAF3: u1,
                ///  Filter 4 associated with FIFO
                FAF4: u1,
                ///  Filter 5 associated with FIFO
                FAF5: u1,
                ///  Filter 6 associated with FIFO
                FAF6: u1,
                ///  Filter 7 associated with FIFO
                FAF7: u1,
                ///  Filter 8 associated with FIFO
                FAF8: u1,
                ///  Filter 9 associated with FIFO
                FAF9: u1,
                ///  Filter 10 associated with FIFO
                FAF10: u1,
                ///  Filter 11 associated with FIFO
                FAF11: u1,
                ///  Filter 12 associated with FIFO
                FAF12: u1,
                ///  Filter 13 associated with FIFO
                FAF13: u1,
                ///  Filter 14 associated with FIFO
                FAF14: u1,
                ///  Filter 15 associated with FIFO
                FAF15: u1,
                ///  Filter 16 associated with FIFO
                FAF16: u1,
                ///  Filter 17 associated with FIFO
                FAF17: u1,
                ///  Filter 18 associated with FIFO
                FAF18: u1,
                ///  Filter 19 associated with FIFO
                FAF19: u1,
                ///  Filter 20 associated with FIFO
                FAF20: u1,
                ///  Filter 21 associated with FIFO
                FAF21: u1,
                ///  Filter 22 associated with FIFO
                FAF22: u1,
                ///  Filter 23 associated with FIFO
                FAF23: u1,
                ///  Filter 24 associated with FIFO
                FAF24: u1,
                ///  Filter 25 associated with FIFO
                FAF25: u1,
                ///  Filter 26 associated with FIFO
                FAF26: u1,
                ///  Filter 27 associated with FIFO
                FAF27: u1,
                padding: u4,
            }),
            reserved540: [4]u8,
            ///  Filter working register
            FW: mmio.Mmio(packed struct(u32) {
                ///  Filter working
                FW0: u1,
                ///  Filter working
                FW1: u1,
                ///  Filter working
                FW2: u1,
                ///  Filter working
                FW3: u1,
                ///  Filter working
                FW4: u1,
                ///  Filter working
                FW5: u1,
                ///  Filter working
                FW6: u1,
                ///  Filter working
                FW7: u1,
                ///  Filter working
                FW8: u1,
                ///  Filter working
                FW9: u1,
                ///  Filter working
                FW10: u1,
                ///  Filter working
                FW11: u1,
                ///  Filter working
                FW12: u1,
                ///  Filter working
                FW13: u1,
                ///  Filter working
                FW14: u1,
                ///  Filter working
                FW15: u1,
                ///  Filter working
                FW16: u1,
                ///  Filter working
                FW17: u1,
                ///  Filter working
                FW18: u1,
                ///  Filter working
                FW19: u1,
                ///  Filter working
                FW20: u1,
                ///  Filter working
                FW21: u1,
                ///  Filter working
                FW22: u1,
                ///  Filter working
                FW23: u1,
                ///  Filter working
                FW24: u1,
                ///  Filter working
                FW25: u1,
                ///  Filter working
                FW26: u1,
                ///  Filter working
                FW27: u1,
                padding: u4,
            }),
            reserved576: [32]u8,
            ///  Filter 0 data 0 register
            F0DATA0: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FD0: u1,
                ///  Filter bits
                FD1: u1,
                ///  Filter bits
                FD2: u1,
                ///  Filter bits
                FD3: u1,
                ///  Filter bits
                FD4: u1,
                ///  Filter bits
                FD5: u1,
                ///  Filter bits
                FD6: u1,
                ///  Filter bits
                FD7: u1,
                ///  Filter bits
                FD8: u1,
                ///  Filter bits
                FD9: u1,
                ///  Filter bits
                FD10: u1,
                ///  Filter bits
                FD11: u1,
                ///  Filter bits
                FD12: u1,
                ///  Filter bits
                FD13: u1,
                ///  Filter bits
                FD14: u1,
                ///  Filter bits
                FD15: u1,
                ///  Filter bits
                FD16: u1,
                ///  Filter bits
                FD17: u1,
                ///  Filter bits
                FD18: u1,
                ///  Filter bits
                FD19: u1,
                ///  Filter bits
                FD20: u1,
                ///  Filter bits
                FD21: u1,
                ///  Filter bits
                FD22: u1,
                ///  Filter bits
                FD23: u1,
                ///  Filter bits
                FD24: u1,
                ///  Filter bits
                FD25: u1,
                ///  Filter bits
                FD26: u1,
                ///  Filter bits
                FD27: u1,
                ///  Filter bits
                FD28: u1,
                ///  Filter bits
                FD29: u1,
                ///  Filter bits
                FD30: u1,
                ///  Filter bits
                FD31: u1,
            }),
            ///  Filter 0 data 1 register
            F0DATA1: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FD0: u1,
                ///  Filter bits
                FD1: u1,
                ///  Filter bits
                FD2: u1,
                ///  Filter bits
                FD3: u1,
                ///  Filter bits
                FD4: u1,
                ///  Filter bits
                FD5: u1,
                ///  Filter bits
                FD6: u1,
                ///  Filter bits
                FD7: u1,
                ///  Filter bits
                FD8: u1,
                ///  Filter bits
                FD9: u1,
                ///  Filter bits
                FD10: u1,
                ///  Filter bits
                FD11: u1,
                ///  Filter bits
                FD12: u1,
                ///  Filter bits
                FD13: u1,
                ///  Filter bits
                FD14: u1,
                ///  Filter bits
                FD15: u1,
                ///  Filter bits
                FD16: u1,
                ///  Filter bits
                FD17: u1,
                ///  Filter bits
                FD18: u1,
                ///  Filter bits
                FD19: u1,
                ///  Filter bits
                FD20: u1,
                ///  Filter bits
                FD21: u1,
                ///  Filter bits
                FD22: u1,
                ///  Filter bits
                FD23: u1,
                ///  Filter bits
                FD24: u1,
                ///  Filter bits
                FD25: u1,
                ///  Filter bits
                FD26: u1,
                ///  Filter bits
                FD27: u1,
                ///  Filter bits
                FD28: u1,
                ///  Filter bits
                FD29: u1,
                ///  Filter bits
                FD30: u1,
                ///  Filter bits
                FD31: u1,
            }),
            ///  Filter 1 data 0 register
            F1DATA0: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FD0: u1,
                ///  Filter bits
                FD1: u1,
                ///  Filter bits
                FD2: u1,
                ///  Filter bits
                FD3: u1,
                ///  Filter bits
                FD4: u1,
                ///  Filter bits
                FD5: u1,
                ///  Filter bits
                FD6: u1,
                ///  Filter bits
                FD7: u1,
                ///  Filter bits
                FD8: u1,
                ///  Filter bits
                FD9: u1,
                ///  Filter bits
                FD10: u1,
                ///  Filter bits
                FD11: u1,
                ///  Filter bits
                FD12: u1,
                ///  Filter bits
                FD13: u1,
                ///  Filter bits
                FD14: u1,
                ///  Filter bits
                FD15: u1,
                ///  Filter bits
                FD16: u1,
                ///  Filter bits
                FD17: u1,
                ///  Filter bits
                FD18: u1,
                ///  Filter bits
                FD19: u1,
                ///  Filter bits
                FD20: u1,
                ///  Filter bits
                FD21: u1,
                ///  Filter bits
                FD22: u1,
                ///  Filter bits
                FD23: u1,
                ///  Filter bits
                FD24: u1,
                ///  Filter bits
                FD25: u1,
                ///  Filter bits
                FD26: u1,
                ///  Filter bits
                FD27: u1,
                ///  Filter bits
                FD28: u1,
                ///  Filter bits
                FD29: u1,
                ///  Filter bits
                FD30: u1,
                ///  Filter bits
                FD31: u1,
            }),
            ///  Filter 1 data 1 register
            F1DATA1: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FD0: u1,
                ///  Filter bits
                FD1: u1,
                ///  Filter bits
                FD2: u1,
                ///  Filter bits
                FD3: u1,
                ///  Filter bits
                FD4: u1,
                ///  Filter bits
                FD5: u1,
                ///  Filter bits
                FD6: u1,
                ///  Filter bits
                FD7: u1,
                ///  Filter bits
                FD8: u1,
                ///  Filter bits
                FD9: u1,
                ///  Filter bits
                FD10: u1,
                ///  Filter bits
                FD11: u1,
                ///  Filter bits
                FD12: u1,
                ///  Filter bits
                FD13: u1,
                ///  Filter bits
                FD14: u1,
                ///  Filter bits
                FD15: u1,
                ///  Filter bits
                FD16: u1,
                ///  Filter bits
                FD17: u1,
                ///  Filter bits
                FD18: u1,
                ///  Filter bits
                FD19: u1,
                ///  Filter bits
                FD20: u1,
                ///  Filter bits
                FD21: u1,
                ///  Filter bits
                FD22: u1,
                ///  Filter bits
                FD23: u1,
                ///  Filter bits
                FD24: u1,
                ///  Filter bits
                FD25: u1,
                ///  Filter bits
                FD26: u1,
                ///  Filter bits
                FD27: u1,
                ///  Filter bits
                FD28: u1,
                ///  Filter bits
                FD29: u1,
                ///  Filter bits
                FD30: u1,
                ///  Filter bits
                FD31: u1,
            }),
            ///  Filter 2 data 0 register
            F2DATA0: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FD0: u1,
                ///  Filter bits
                FD1: u1,
                ///  Filter bits
                FD2: u1,
                ///  Filter bits
                FD3: u1,
                ///  Filter bits
                FD4: u1,
                ///  Filter bits
                FD5: u1,
                ///  Filter bits
                FD6: u1,
                ///  Filter bits
                FD7: u1,
                ///  Filter bits
                FD8: u1,
                ///  Filter bits
                FD9: u1,
                ///  Filter bits
                FD10: u1,
                ///  Filter bits
                FD11: u1,
                ///  Filter bits
                FD12: u1,
                ///  Filter bits
                FD13: u1,
                ///  Filter bits
                FD14: u1,
                ///  Filter bits
                FD15: u1,
                ///  Filter bits
                FD16: u1,
                ///  Filter bits
                FD17: u1,
                ///  Filter bits
                FD18: u1,
                ///  Filter bits
                FD19: u1,
                ///  Filter bits
                FD20: u1,
                ///  Filter bits
                FD21: u1,
                ///  Filter bits
                FD22: u1,
                ///  Filter bits
                FD23: u1,
                ///  Filter bits
                FD24: u1,
                ///  Filter bits
                FD25: u1,
                ///  Filter bits
                FD26: u1,
                ///  Filter bits
                FD27: u1,
                ///  Filter bits
                FD28: u1,
                ///  Filter bits
                FD29: u1,
                ///  Filter bits
                FD30: u1,
                ///  Filter bits
                FD31: u1,
            }),
            ///  Filter 2 data 1 register
            F2DATA1: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FD0: u1,
                ///  Filter bits
                FD1: u1,
                ///  Filter bits
                FD2: u1,
                ///  Filter bits
                FD3: u1,
                ///  Filter bits
                FD4: u1,
                ///  Filter bits
                FD5: u1,
                ///  Filter bits
                FD6: u1,
                ///  Filter bits
                FD7: u1,
                ///  Filter bits
                FD8: u1,
                ///  Filter bits
                FD9: u1,
                ///  Filter bits
                FD10: u1,
                ///  Filter bits
                FD11: u1,
                ///  Filter bits
                FD12: u1,
                ///  Filter bits
                FD13: u1,
                ///  Filter bits
                FD14: u1,
                ///  Filter bits
                FD15: u1,
                ///  Filter bits
                FD16: u1,
                ///  Filter bits
                FD17: u1,
                ///  Filter bits
                FD18: u1,
                ///  Filter bits
                FD19: u1,
                ///  Filter bits
                FD20: u1,
                ///  Filter bits
                FD21: u1,
                ///  Filter bits
                FD22: u1,
                ///  Filter bits
                FD23: u1,
                ///  Filter bits
                FD24: u1,
                ///  Filter bits
                FD25: u1,
                ///  Filter bits
                FD26: u1,
                ///  Filter bits
                FD27: u1,
                ///  Filter bits
                FD28: u1,
                ///  Filter bits
                FD29: u1,
                ///  Filter bits
                FD30: u1,
                ///  Filter bits
                FD31: u1,
            }),
            ///  Filter 3 data 0 register
            F3DATA0: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FD0: u1,
                ///  Filter bits
                FD1: u1,
                ///  Filter bits
                FD2: u1,
                ///  Filter bits
                FD3: u1,
                ///  Filter bits
                FD4: u1,
                ///  Filter bits
                FD5: u1,
                ///  Filter bits
                FD6: u1,
                ///  Filter bits
                FD7: u1,
                ///  Filter bits
                FD8: u1,
                ///  Filter bits
                FD9: u1,
                ///  Filter bits
                FD10: u1,
                ///  Filter bits
                FD11: u1,
                ///  Filter bits
                FD12: u1,
                ///  Filter bits
                FD13: u1,
                ///  Filter bits
                FD14: u1,
                ///  Filter bits
                FD15: u1,
                ///  Filter bits
                FD16: u1,
                ///  Filter bits
                FD17: u1,
                ///  Filter bits
                FD18: u1,
                ///  Filter bits
                FD19: u1,
                ///  Filter bits
                FD20: u1,
                ///  Filter bits
                FD21: u1,
                ///  Filter bits
                FD22: u1,
                ///  Filter bits
                FD23: u1,
                ///  Filter bits
                FD24: u1,
                ///  Filter bits
                FD25: u1,
                ///  Filter bits
                FD26: u1,
                ///  Filter bits
                FD27: u1,
                ///  Filter bits
                FD28: u1,
                ///  Filter bits
                FD29: u1,
                ///  Filter bits
                FD30: u1,
                ///  Filter bits
                FD31: u1,
            }),
            ///  Filter 3 data 1 register
            F3DATA1: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FD0: u1,
                ///  Filter bits
                FD1: u1,
                ///  Filter bits
                FD2: u1,
                ///  Filter bits
                FD3: u1,
                ///  Filter bits
                FD4: u1,
                ///  Filter bits
                FD5: u1,
                ///  Filter bits
                FD6: u1,
                ///  Filter bits
                FD7: u1,
                ///  Filter bits
                FD8: u1,
                ///  Filter bits
                FD9: u1,
                ///  Filter bits
                FD10: u1,
                ///  Filter bits
                FD11: u1,
                ///  Filter bits
                FD12: u1,
                ///  Filter bits
                FD13: u1,
                ///  Filter bits
                FD14: u1,
                ///  Filter bits
                FD15: u1,
                ///  Filter bits
                FD16: u1,
                ///  Filter bits
                FD17: u1,
                ///  Filter bits
                FD18: u1,
                ///  Filter bits
                FD19: u1,
                ///  Filter bits
                FD20: u1,
                ///  Filter bits
                FD21: u1,
                ///  Filter bits
                FD22: u1,
                ///  Filter bits
                FD23: u1,
                ///  Filter bits
                FD24: u1,
                ///  Filter bits
                FD25: u1,
                ///  Filter bits
                FD26: u1,
                ///  Filter bits
                FD27: u1,
                ///  Filter bits
                FD28: u1,
                ///  Filter bits
                FD29: u1,
                ///  Filter bits
                FD30: u1,
                ///  Filter bits
                FD31: u1,
            }),
            ///  Filter 4 data 0 register
            F4DATA0: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FD0: u1,
                ///  Filter bits
                FD1: u1,
                ///  Filter bits
                FD2: u1,
                ///  Filter bits
                FD3: u1,
                ///  Filter bits
                FD4: u1,
                ///  Filter bits
                FD5: u1,
                ///  Filter bits
                FD6: u1,
                ///  Filter bits
                FD7: u1,
                ///  Filter bits
                FD8: u1,
                ///  Filter bits
                FD9: u1,
                ///  Filter bits
                FD10: u1,
                ///  Filter bits
                FD11: u1,
                ///  Filter bits
                FD12: u1,
                ///  Filter bits
                FD13: u1,
                ///  Filter bits
                FD14: u1,
                ///  Filter bits
                FD15: u1,
                ///  Filter bits
                FD16: u1,
                ///  Filter bits
                FD17: u1,
                ///  Filter bits
                FD18: u1,
                ///  Filter bits
                FD19: u1,
                ///  Filter bits
                FD20: u1,
                ///  Filter bits
                FD21: u1,
                ///  Filter bits
                FD22: u1,
                ///  Filter bits
                FD23: u1,
                ///  Filter bits
                FD24: u1,
                ///  Filter bits
                FD25: u1,
                ///  Filter bits
                FD26: u1,
                ///  Filter bits
                FD27: u1,
                ///  Filter bits
                FD28: u1,
                ///  Filter bits
                FD29: u1,
                ///  Filter bits
                FD30: u1,
                ///  Filter bits
                FD31: u1,
            }),
            ///  Filter 4 data 1 register
            F4DATA1: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FD0: u1,
                ///  Filter bits
                FD1: u1,
                ///  Filter bits
                FD2: u1,
                ///  Filter bits
                FD3: u1,
                ///  Filter bits
                FD4: u1,
                ///  Filter bits
                FD5: u1,
                ///  Filter bits
                FD6: u1,
                ///  Filter bits
                FD7: u1,
                ///  Filter bits
                FD8: u1,
                ///  Filter bits
                FD9: u1,
                ///  Filter bits
                FD10: u1,
                ///  Filter bits
                FD11: u1,
                ///  Filter bits
                FD12: u1,
                ///  Filter bits
                FD13: u1,
                ///  Filter bits
                FD14: u1,
                ///  Filter bits
                FD15: u1,
                ///  Filter bits
                FD16: u1,
                ///  Filter bits
                FD17: u1,
                ///  Filter bits
                FD18: u1,
                ///  Filter bits
                FD19: u1,
                ///  Filter bits
                FD20: u1,
                ///  Filter bits
                FD21: u1,
                ///  Filter bits
                FD22: u1,
                ///  Filter bits
                FD23: u1,
                ///  Filter bits
                FD24: u1,
                ///  Filter bits
                FD25: u1,
                ///  Filter bits
                FD26: u1,
                ///  Filter bits
                FD27: u1,
                ///  Filter bits
                FD28: u1,
                ///  Filter bits
                FD29: u1,
                ///  Filter bits
                FD30: u1,
                ///  Filter bits
                FD31: u1,
            }),
            ///  Filter 5 data 0 register
            F5DATA0: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FD0: u1,
                ///  Filter bits
                FD1: u1,
                ///  Filter bits
                FD2: u1,
                ///  Filter bits
                FD3: u1,
                ///  Filter bits
                FD4: u1,
                ///  Filter bits
                FD5: u1,
                ///  Filter bits
                FD6: u1,
                ///  Filter bits
                FD7: u1,
                ///  Filter bits
                FD8: u1,
                ///  Filter bits
                FD9: u1,
                ///  Filter bits
                FD10: u1,
                ///  Filter bits
                FD11: u1,
                ///  Filter bits
                FD12: u1,
                ///  Filter bits
                FD13: u1,
                ///  Filter bits
                FD14: u1,
                ///  Filter bits
                FD15: u1,
                ///  Filter bits
                FD16: u1,
                ///  Filter bits
                FD17: u1,
                ///  Filter bits
                FD18: u1,
                ///  Filter bits
                FD19: u1,
                ///  Filter bits
                FD20: u1,
                ///  Filter bits
                FD21: u1,
                ///  Filter bits
                FD22: u1,
                ///  Filter bits
                FD23: u1,
                ///  Filter bits
                FD24: u1,
                ///  Filter bits
                FD25: u1,
                ///  Filter bits
                FD26: u1,
                ///  Filter bits
                FD27: u1,
                ///  Filter bits
                FD28: u1,
                ///  Filter bits
                FD29: u1,
                ///  Filter bits
                FD30: u1,
                ///  Filter bits
                FD31: u1,
            }),
            ///  Filter 5 data 1 register
            F5DATA1: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FD0: u1,
                ///  Filter bits
                FD1: u1,
                ///  Filter bits
                FD2: u1,
                ///  Filter bits
                FD3: u1,
                ///  Filter bits
                FD4: u1,
                ///  Filter bits
                FD5: u1,
                ///  Filter bits
                FD6: u1,
                ///  Filter bits
                FD7: u1,
                ///  Filter bits
                FD8: u1,
                ///  Filter bits
                FD9: u1,
                ///  Filter bits
                FD10: u1,
                ///  Filter bits
                FD11: u1,
                ///  Filter bits
                FD12: u1,
                ///  Filter bits
                FD13: u1,
                ///  Filter bits
                FD14: u1,
                ///  Filter bits
                FD15: u1,
                ///  Filter bits
                FD16: u1,
                ///  Filter bits
                FD17: u1,
                ///  Filter bits
                FD18: u1,
                ///  Filter bits
                FD19: u1,
                ///  Filter bits
                FD20: u1,
                ///  Filter bits
                FD21: u1,
                ///  Filter bits
                FD22: u1,
                ///  Filter bits
                FD23: u1,
                ///  Filter bits
                FD24: u1,
                ///  Filter bits
                FD25: u1,
                ///  Filter bits
                FD26: u1,
                ///  Filter bits
                FD27: u1,
                ///  Filter bits
                FD28: u1,
                ///  Filter bits
                FD29: u1,
                ///  Filter bits
                FD30: u1,
                ///  Filter bits
                FD31: u1,
            }),
            ///  Filter 6 data 0 register
            F6DATA0: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FD0: u1,
                ///  Filter bits
                FD1: u1,
                ///  Filter bits
                FD2: u1,
                ///  Filter bits
                FD3: u1,
                ///  Filter bits
                FD4: u1,
                ///  Filter bits
                FD5: u1,
                ///  Filter bits
                FD6: u1,
                ///  Filter bits
                FD7: u1,
                ///  Filter bits
                FD8: u1,
                ///  Filter bits
                FD9: u1,
                ///  Filter bits
                FD10: u1,
                ///  Filter bits
                FD11: u1,
                ///  Filter bits
                FD12: u1,
                ///  Filter bits
                FD13: u1,
                ///  Filter bits
                FD14: u1,
                ///  Filter bits
                FD15: u1,
                ///  Filter bits
                FD16: u1,
                ///  Filter bits
                FD17: u1,
                ///  Filter bits
                FD18: u1,
                ///  Filter bits
                FD19: u1,
                ///  Filter bits
                FD20: u1,
                ///  Filter bits
                FD21: u1,
                ///  Filter bits
                FD22: u1,
                ///  Filter bits
                FD23: u1,
                ///  Filter bits
                FD24: u1,
                ///  Filter bits
                FD25: u1,
                ///  Filter bits
                FD26: u1,
                ///  Filter bits
                FD27: u1,
                ///  Filter bits
                FD28: u1,
                ///  Filter bits
                FD29: u1,
                ///  Filter bits
                FD30: u1,
                ///  Filter bits
                FD31: u1,
            }),
            ///  Filter 6 data 1 register
            F6DATA1: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FD0: u1,
                ///  Filter bits
                FD1: u1,
                ///  Filter bits
                FD2: u1,
                ///  Filter bits
                FD3: u1,
                ///  Filter bits
                FD4: u1,
                ///  Filter bits
                FD5: u1,
                ///  Filter bits
                FD6: u1,
                ///  Filter bits
                FD7: u1,
                ///  Filter bits
                FD8: u1,
                ///  Filter bits
                FD9: u1,
                ///  Filter bits
                FD10: u1,
                ///  Filter bits
                FD11: u1,
                ///  Filter bits
                FD12: u1,
                ///  Filter bits
                FD13: u1,
                ///  Filter bits
                FD14: u1,
                ///  Filter bits
                FD15: u1,
                ///  Filter bits
                FD16: u1,
                ///  Filter bits
                FD17: u1,
                ///  Filter bits
                FD18: u1,
                ///  Filter bits
                FD19: u1,
                ///  Filter bits
                FD20: u1,
                ///  Filter bits
                FD21: u1,
                ///  Filter bits
                FD22: u1,
                ///  Filter bits
                FD23: u1,
                ///  Filter bits
                FD24: u1,
                ///  Filter bits
                FD25: u1,
                ///  Filter bits
                FD26: u1,
                ///  Filter bits
                FD27: u1,
                ///  Filter bits
                FD28: u1,
                ///  Filter bits
                FD29: u1,
                ///  Filter bits
                FD30: u1,
                ///  Filter bits
                FD31: u1,
            }),
            ///  Filter 7 data 0 register
            F7DATA0: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FD0: u1,
                ///  Filter bits
                FD1: u1,
                ///  Filter bits
                FD2: u1,
                ///  Filter bits
                FD3: u1,
                ///  Filter bits
                FD4: u1,
                ///  Filter bits
                FD5: u1,
                ///  Filter bits
                FD6: u1,
                ///  Filter bits
                FD7: u1,
                ///  Filter bits
                FD8: u1,
                ///  Filter bits
                FD9: u1,
                ///  Filter bits
                FD10: u1,
                ///  Filter bits
                FD11: u1,
                ///  Filter bits
                FD12: u1,
                ///  Filter bits
                FD13: u1,
                ///  Filter bits
                FD14: u1,
                ///  Filter bits
                FD15: u1,
                ///  Filter bits
                FD16: u1,
                ///  Filter bits
                FD17: u1,
                ///  Filter bits
                FD18: u1,
                ///  Filter bits
                FD19: u1,
                ///  Filter bits
                FD20: u1,
                ///  Filter bits
                FD21: u1,
                ///  Filter bits
                FD22: u1,
                ///  Filter bits
                FD23: u1,
                ///  Filter bits
                FD24: u1,
                ///  Filter bits
                FD25: u1,
                ///  Filter bits
                FD26: u1,
                ///  Filter bits
                FD27: u1,
                ///  Filter bits
                FD28: u1,
                ///  Filter bits
                FD29: u1,
                ///  Filter bits
                FD30: u1,
                ///  Filter bits
                FD31: u1,
            }),
            ///  Filter 7 data 1 register
            F7DATA1: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FD0: u1,
                ///  Filter bits
                FD1: u1,
                ///  Filter bits
                FD2: u1,
                ///  Filter bits
                FD3: u1,
                ///  Filter bits
                FD4: u1,
                ///  Filter bits
                FD5: u1,
                ///  Filter bits
                FD6: u1,
                ///  Filter bits
                FD7: u1,
                ///  Filter bits
                FD8: u1,
                ///  Filter bits
                FD9: u1,
                ///  Filter bits
                FD10: u1,
                ///  Filter bits
                FD11: u1,
                ///  Filter bits
                FD12: u1,
                ///  Filter bits
                FD13: u1,
                ///  Filter bits
                FD14: u1,
                ///  Filter bits
                FD15: u1,
                ///  Filter bits
                FD16: u1,
                ///  Filter bits
                FD17: u1,
                ///  Filter bits
                FD18: u1,
                ///  Filter bits
                FD19: u1,
                ///  Filter bits
                FD20: u1,
                ///  Filter bits
                FD21: u1,
                ///  Filter bits
                FD22: u1,
                ///  Filter bits
                FD23: u1,
                ///  Filter bits
                FD24: u1,
                ///  Filter bits
                FD25: u1,
                ///  Filter bits
                FD26: u1,
                ///  Filter bits
                FD27: u1,
                ///  Filter bits
                FD28: u1,
                ///  Filter bits
                FD29: u1,
                ///  Filter bits
                FD30: u1,
                ///  Filter bits
                FD31: u1,
            }),
            ///  Filter 8 data 0 register
            F8DATA0: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FD0: u1,
                ///  Filter bits
                FD1: u1,
                ///  Filter bits
                FD2: u1,
                ///  Filter bits
                FD3: u1,
                ///  Filter bits
                FD4: u1,
                ///  Filter bits
                FD5: u1,
                ///  Filter bits
                FD6: u1,
                ///  Filter bits
                FD7: u1,
                ///  Filter bits
                FD8: u1,
                ///  Filter bits
                FD9: u1,
                ///  Filter bits
                FD10: u1,
                ///  Filter bits
                FD11: u1,
                ///  Filter bits
                FD12: u1,
                ///  Filter bits
                FD13: u1,
                ///  Filter bits
                FD14: u1,
                ///  Filter bits
                FD15: u1,
                ///  Filter bits
                FD16: u1,
                ///  Filter bits
                FD17: u1,
                ///  Filter bits
                FD18: u1,
                ///  Filter bits
                FD19: u1,
                ///  Filter bits
                FD20: u1,
                ///  Filter bits
                FD21: u1,
                ///  Filter bits
                FD22: u1,
                ///  Filter bits
                FD23: u1,
                ///  Filter bits
                FD24: u1,
                ///  Filter bits
                FD25: u1,
                ///  Filter bits
                FD26: u1,
                ///  Filter bits
                FD27: u1,
                ///  Filter bits
                FD28: u1,
                ///  Filter bits
                FD29: u1,
                ///  Filter bits
                FD30: u1,
                ///  Filter bits
                FD31: u1,
            }),
            ///  Filter 8 data 1 register
            F8DATA1: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FD0: u1,
                ///  Filter bits
                FD1: u1,
                ///  Filter bits
                FD2: u1,
                ///  Filter bits
                FD3: u1,
                ///  Filter bits
                FD4: u1,
                ///  Filter bits
                FD5: u1,
                ///  Filter bits
                FD6: u1,
                ///  Filter bits
                FD7: u1,
                ///  Filter bits
                FD8: u1,
                ///  Filter bits
                FD9: u1,
                ///  Filter bits
                FD10: u1,
                ///  Filter bits
                FD11: u1,
                ///  Filter bits
                FD12: u1,
                ///  Filter bits
                FD13: u1,
                ///  Filter bits
                FD14: u1,
                ///  Filter bits
                FD15: u1,
                ///  Filter bits
                FD16: u1,
                ///  Filter bits
                FD17: u1,
                ///  Filter bits
                FD18: u1,
                ///  Filter bits
                FD19: u1,
                ///  Filter bits
                FD20: u1,
                ///  Filter bits
                FD21: u1,
                ///  Filter bits
                FD22: u1,
                ///  Filter bits
                FD23: u1,
                ///  Filter bits
                FD24: u1,
                ///  Filter bits
                FD25: u1,
                ///  Filter bits
                FD26: u1,
                ///  Filter bits
                FD27: u1,
                ///  Filter bits
                FD28: u1,
                ///  Filter bits
                FD29: u1,
                ///  Filter bits
                FD30: u1,
                ///  Filter bits
                FD31: u1,
            }),
            ///  Filter 9 data 0 register
            F9DATA0: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FD0: u1,
                ///  Filter bits
                FD1: u1,
                ///  Filter bits
                FD2: u1,
                ///  Filter bits
                FD3: u1,
                ///  Filter bits
                FD4: u1,
                ///  Filter bits
                FD5: u1,
                ///  Filter bits
                FD6: u1,
                ///  Filter bits
                FD7: u1,
                ///  Filter bits
                FD8: u1,
                ///  Filter bits
                FD9: u1,
                ///  Filter bits
                FD10: u1,
                ///  Filter bits
                FD11: u1,
                ///  Filter bits
                FD12: u1,
                ///  Filter bits
                FD13: u1,
                ///  Filter bits
                FD14: u1,
                ///  Filter bits
                FD15: u1,
                ///  Filter bits
                FD16: u1,
                ///  Filter bits
                FD17: u1,
                ///  Filter bits
                FD18: u1,
                ///  Filter bits
                FD19: u1,
                ///  Filter bits
                FD20: u1,
                ///  Filter bits
                FD21: u1,
                ///  Filter bits
                FD22: u1,
                ///  Filter bits
                FD23: u1,
                ///  Filter bits
                FD24: u1,
                ///  Filter bits
                FD25: u1,
                ///  Filter bits
                FD26: u1,
                ///  Filter bits
                FD27: u1,
                ///  Filter bits
                FD28: u1,
                ///  Filter bits
                FD29: u1,
                ///  Filter bits
                FD30: u1,
                ///  Filter bits
                FD31: u1,
            }),
            ///  Filter 9 data 1 register
            F9DATA1: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FD0: u1,
                ///  Filter bits
                FD1: u1,
                ///  Filter bits
                FD2: u1,
                ///  Filter bits
                FD3: u1,
                ///  Filter bits
                FD4: u1,
                ///  Filter bits
                FD5: u1,
                ///  Filter bits
                FD6: u1,
                ///  Filter bits
                FD7: u1,
                ///  Filter bits
                FD8: u1,
                ///  Filter bits
                FD9: u1,
                ///  Filter bits
                FD10: u1,
                ///  Filter bits
                FD11: u1,
                ///  Filter bits
                FD12: u1,
                ///  Filter bits
                FD13: u1,
                ///  Filter bits
                FD14: u1,
                ///  Filter bits
                FD15: u1,
                ///  Filter bits
                FD16: u1,
                ///  Filter bits
                FD17: u1,
                ///  Filter bits
                FD18: u1,
                ///  Filter bits
                FD19: u1,
                ///  Filter bits
                FD20: u1,
                ///  Filter bits
                FD21: u1,
                ///  Filter bits
                FD22: u1,
                ///  Filter bits
                FD23: u1,
                ///  Filter bits
                FD24: u1,
                ///  Filter bits
                FD25: u1,
                ///  Filter bits
                FD26: u1,
                ///  Filter bits
                FD27: u1,
                ///  Filter bits
                FD28: u1,
                ///  Filter bits
                FD29: u1,
                ///  Filter bits
                FD30: u1,
                ///  Filter bits
                FD31: u1,
            }),
            ///  Filter 10 data 0 register
            F10DATA0: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FD0: u1,
                ///  Filter bits
                FD1: u1,
                ///  Filter bits
                FD2: u1,
                ///  Filter bits
                FD3: u1,
                ///  Filter bits
                FD4: u1,
                ///  Filter bits
                FD5: u1,
                ///  Filter bits
                FD6: u1,
                ///  Filter bits
                FD7: u1,
                ///  Filter bits
                FD8: u1,
                ///  Filter bits
                FD9: u1,
                ///  Filter bits
                FD10: u1,
                ///  Filter bits
                FD11: u1,
                ///  Filter bits
                FD12: u1,
                ///  Filter bits
                FD13: u1,
                ///  Filter bits
                FD14: u1,
                ///  Filter bits
                FD15: u1,
                ///  Filter bits
                FD16: u1,
                ///  Filter bits
                FD17: u1,
                ///  Filter bits
                FD18: u1,
                ///  Filter bits
                FD19: u1,
                ///  Filter bits
                FD20: u1,
                ///  Filter bits
                FD21: u1,
                ///  Filter bits
                FD22: u1,
                ///  Filter bits
                FD23: u1,
                ///  Filter bits
                FD24: u1,
                ///  Filter bits
                FD25: u1,
                ///  Filter bits
                FD26: u1,
                ///  Filter bits
                FD27: u1,
                ///  Filter bits
                FD28: u1,
                ///  Filter bits
                FD29: u1,
                ///  Filter bits
                FD30: u1,
                ///  Filter bits
                FD31: u1,
            }),
            ///  Filter 10 data 1 register
            F10DATA1: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FD0: u1,
                ///  Filter bits
                FD1: u1,
                ///  Filter bits
                FD2: u1,
                ///  Filter bits
                FD3: u1,
                ///  Filter bits
                FD4: u1,
                ///  Filter bits
                FD5: u1,
                ///  Filter bits
                FD6: u1,
                ///  Filter bits
                FD7: u1,
                ///  Filter bits
                FD8: u1,
                ///  Filter bits
                FD9: u1,
                ///  Filter bits
                FD10: u1,
                ///  Filter bits
                FD11: u1,
                ///  Filter bits
                FD12: u1,
                ///  Filter bits
                FD13: u1,
                ///  Filter bits
                FD14: u1,
                ///  Filter bits
                FD15: u1,
                ///  Filter bits
                FD16: u1,
                ///  Filter bits
                FD17: u1,
                ///  Filter bits
                FD18: u1,
                ///  Filter bits
                FD19: u1,
                ///  Filter bits
                FD20: u1,
                ///  Filter bits
                FD21: u1,
                ///  Filter bits
                FD22: u1,
                ///  Filter bits
                FD23: u1,
                ///  Filter bits
                FD24: u1,
                ///  Filter bits
                FD25: u1,
                ///  Filter bits
                FD26: u1,
                ///  Filter bits
                FD27: u1,
                ///  Filter bits
                FD28: u1,
                ///  Filter bits
                FD29: u1,
                ///  Filter bits
                FD30: u1,
                ///  Filter bits
                FD31: u1,
            }),
            ///  Filter 11 data 0 register
            F11DATA0: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FD0: u1,
                ///  Filter bits
                FD1: u1,
                ///  Filter bits
                FD2: u1,
                ///  Filter bits
                FD3: u1,
                ///  Filter bits
                FD4: u1,
                ///  Filter bits
                FD5: u1,
                ///  Filter bits
                FD6: u1,
                ///  Filter bits
                FD7: u1,
                ///  Filter bits
                FD8: u1,
                ///  Filter bits
                FD9: u1,
                ///  Filter bits
                FD10: u1,
                ///  Filter bits
                FD11: u1,
                ///  Filter bits
                FD12: u1,
                ///  Filter bits
                FD13: u1,
                ///  Filter bits
                FD14: u1,
                ///  Filter bits
                FD15: u1,
                ///  Filter bits
                FD16: u1,
                ///  Filter bits
                FD17: u1,
                ///  Filter bits
                FD18: u1,
                ///  Filter bits
                FD19: u1,
                ///  Filter bits
                FD20: u1,
                ///  Filter bits
                FD21: u1,
                ///  Filter bits
                FD22: u1,
                ///  Filter bits
                FD23: u1,
                ///  Filter bits
                FD24: u1,
                ///  Filter bits
                FD25: u1,
                ///  Filter bits
                FD26: u1,
                ///  Filter bits
                FD27: u1,
                ///  Filter bits
                FD28: u1,
                ///  Filter bits
                FD29: u1,
                ///  Filter bits
                FD30: u1,
                ///  Filter bits
                FD31: u1,
            }),
            ///  Filter 11 data 1 register
            F11DATA1: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FD0: u1,
                ///  Filter bits
                FD1: u1,
                ///  Filter bits
                FD2: u1,
                ///  Filter bits
                FD3: u1,
                ///  Filter bits
                FD4: u1,
                ///  Filter bits
                FD5: u1,
                ///  Filter bits
                FD6: u1,
                ///  Filter bits
                FD7: u1,
                ///  Filter bits
                FD8: u1,
                ///  Filter bits
                FD9: u1,
                ///  Filter bits
                FD10: u1,
                ///  Filter bits
                FD11: u1,
                ///  Filter bits
                FD12: u1,
                ///  Filter bits
                FD13: u1,
                ///  Filter bits
                FD14: u1,
                ///  Filter bits
                FD15: u1,
                ///  Filter bits
                FD16: u1,
                ///  Filter bits
                FD17: u1,
                ///  Filter bits
                FD18: u1,
                ///  Filter bits
                FD19: u1,
                ///  Filter bits
                FD20: u1,
                ///  Filter bits
                FD21: u1,
                ///  Filter bits
                FD22: u1,
                ///  Filter bits
                FD23: u1,
                ///  Filter bits
                FD24: u1,
                ///  Filter bits
                FD25: u1,
                ///  Filter bits
                FD26: u1,
                ///  Filter bits
                FD27: u1,
                ///  Filter bits
                FD28: u1,
                ///  Filter bits
                FD29: u1,
                ///  Filter bits
                FD30: u1,
                ///  Filter bits
                FD31: u1,
            }),
            ///  Filter 12 data 0 register
            F12DATA0: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FD0: u1,
                ///  Filter bits
                FD1: u1,
                ///  Filter bits
                FD2: u1,
                ///  Filter bits
                FD3: u1,
                ///  Filter bits
                FD4: u1,
                ///  Filter bits
                FD5: u1,
                ///  Filter bits
                FD6: u1,
                ///  Filter bits
                FD7: u1,
                ///  Filter bits
                FD8: u1,
                ///  Filter bits
                FD9: u1,
                ///  Filter bits
                FD10: u1,
                ///  Filter bits
                FD11: u1,
                ///  Filter bits
                FD12: u1,
                ///  Filter bits
                FD13: u1,
                ///  Filter bits
                FD14: u1,
                ///  Filter bits
                FD15: u1,
                ///  Filter bits
                FD16: u1,
                ///  Filter bits
                FD17: u1,
                ///  Filter bits
                FD18: u1,
                ///  Filter bits
                FD19: u1,
                ///  Filter bits
                FD20: u1,
                ///  Filter bits
                FD21: u1,
                ///  Filter bits
                FD22: u1,
                ///  Filter bits
                FD23: u1,
                ///  Filter bits
                FD24: u1,
                ///  Filter bits
                FD25: u1,
                ///  Filter bits
                FD26: u1,
                ///  Filter bits
                FD27: u1,
                ///  Filter bits
                FD28: u1,
                ///  Filter bits
                FD29: u1,
                ///  Filter bits
                FD30: u1,
                ///  Filter bits
                FD31: u1,
            }),
            ///  Filter 12 data 1 register
            F12DATA1: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FD0: u1,
                ///  Filter bits
                FD1: u1,
                ///  Filter bits
                FD2: u1,
                ///  Filter bits
                FD3: u1,
                ///  Filter bits
                FD4: u1,
                ///  Filter bits
                FD5: u1,
                ///  Filter bits
                FD6: u1,
                ///  Filter bits
                FD7: u1,
                ///  Filter bits
                FD8: u1,
                ///  Filter bits
                FD9: u1,
                ///  Filter bits
                FD10: u1,
                ///  Filter bits
                FD11: u1,
                ///  Filter bits
                FD12: u1,
                ///  Filter bits
                FD13: u1,
                ///  Filter bits
                FD14: u1,
                ///  Filter bits
                FD15: u1,
                ///  Filter bits
                FD16: u1,
                ///  Filter bits
                FD17: u1,
                ///  Filter bits
                FD18: u1,
                ///  Filter bits
                FD19: u1,
                ///  Filter bits
                FD20: u1,
                ///  Filter bits
                FD21: u1,
                ///  Filter bits
                FD22: u1,
                ///  Filter bits
                FD23: u1,
                ///  Filter bits
                FD24: u1,
                ///  Filter bits
                FD25: u1,
                ///  Filter bits
                FD26: u1,
                ///  Filter bits
                FD27: u1,
                ///  Filter bits
                FD28: u1,
                ///  Filter bits
                FD29: u1,
                ///  Filter bits
                FD30: u1,
                ///  Filter bits
                FD31: u1,
            }),
            ///  Filter 13 data 0 register
            F13DATA0: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FD0: u1,
                ///  Filter bits
                FD1: u1,
                ///  Filter bits
                FD2: u1,
                ///  Filter bits
                FD3: u1,
                ///  Filter bits
                FD4: u1,
                ///  Filter bits
                FD5: u1,
                ///  Filter bits
                FD6: u1,
                ///  Filter bits
                FD7: u1,
                ///  Filter bits
                FD8: u1,
                ///  Filter bits
                FD9: u1,
                ///  Filter bits
                FD10: u1,
                ///  Filter bits
                FD11: u1,
                ///  Filter bits
                FD12: u1,
                ///  Filter bits
                FD13: u1,
                ///  Filter bits
                FD14: u1,
                ///  Filter bits
                FD15: u1,
                ///  Filter bits
                FD16: u1,
                ///  Filter bits
                FD17: u1,
                ///  Filter bits
                FD18: u1,
                ///  Filter bits
                FD19: u1,
                ///  Filter bits
                FD20: u1,
                ///  Filter bits
                FD21: u1,
                ///  Filter bits
                FD22: u1,
                ///  Filter bits
                FD23: u1,
                ///  Filter bits
                FD24: u1,
                ///  Filter bits
                FD25: u1,
                ///  Filter bits
                FD26: u1,
                ///  Filter bits
                FD27: u1,
                ///  Filter bits
                FD28: u1,
                ///  Filter bits
                FD29: u1,
                ///  Filter bits
                FD30: u1,
                ///  Filter bits
                FD31: u1,
            }),
            ///  Filter 13 data 1 register
            F13DATA1: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FD0: u1,
                ///  Filter bits
                FD1: u1,
                ///  Filter bits
                FD2: u1,
                ///  Filter bits
                FD3: u1,
                ///  Filter bits
                FD4: u1,
                ///  Filter bits
                FD5: u1,
                ///  Filter bits
                FD6: u1,
                ///  Filter bits
                FD7: u1,
                ///  Filter bits
                FD8: u1,
                ///  Filter bits
                FD9: u1,
                ///  Filter bits
                FD10: u1,
                ///  Filter bits
                FD11: u1,
                ///  Filter bits
                FD12: u1,
                ///  Filter bits
                FD13: u1,
                ///  Filter bits
                FD14: u1,
                ///  Filter bits
                FD15: u1,
                ///  Filter bits
                FD16: u1,
                ///  Filter bits
                FD17: u1,
                ///  Filter bits
                FD18: u1,
                ///  Filter bits
                FD19: u1,
                ///  Filter bits
                FD20: u1,
                ///  Filter bits
                FD21: u1,
                ///  Filter bits
                FD22: u1,
                ///  Filter bits
                FD23: u1,
                ///  Filter bits
                FD24: u1,
                ///  Filter bits
                FD25: u1,
                ///  Filter bits
                FD26: u1,
                ///  Filter bits
                FD27: u1,
                ///  Filter bits
                FD28: u1,
                ///  Filter bits
                FD29: u1,
                ///  Filter bits
                FD30: u1,
                ///  Filter bits
                FD31: u1,
            }),
            ///  Filter 14 data 0 register
            F14DATA0: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FD0: u1,
                ///  Filter bits
                FD1: u1,
                ///  Filter bits
                FD2: u1,
                ///  Filter bits
                FD3: u1,
                ///  Filter bits
                FD4: u1,
                ///  Filter bits
                FD5: u1,
                ///  Filter bits
                FD6: u1,
                ///  Filter bits
                FD7: u1,
                ///  Filter bits
                FD8: u1,
                ///  Filter bits
                FD9: u1,
                ///  Filter bits
                FD10: u1,
                ///  Filter bits
                FD11: u1,
                ///  Filter bits
                FD12: u1,
                ///  Filter bits
                FD13: u1,
                ///  Filter bits
                FD14: u1,
                ///  Filter bits
                FD15: u1,
                ///  Filter bits
                FD16: u1,
                ///  Filter bits
                FD17: u1,
                ///  Filter bits
                FD18: u1,
                ///  Filter bits
                FD19: u1,
                ///  Filter bits
                FD20: u1,
                ///  Filter bits
                FD21: u1,
                ///  Filter bits
                FD22: u1,
                ///  Filter bits
                FD23: u1,
                ///  Filter bits
                FD24: u1,
                ///  Filter bits
                FD25: u1,
                ///  Filter bits
                FD26: u1,
                ///  Filter bits
                FD27: u1,
                ///  Filter bits
                FD28: u1,
                ///  Filter bits
                FD29: u1,
                ///  Filter bits
                FD30: u1,
                ///  Filter bits
                FD31: u1,
            }),
            ///  Filter 14 data 1 register
            F14DATA1: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FD0: u1,
                ///  Filter bits
                FD1: u1,
                ///  Filter bits
                FD2: u1,
                ///  Filter bits
                FD3: u1,
                ///  Filter bits
                FD4: u1,
                ///  Filter bits
                FD5: u1,
                ///  Filter bits
                FD6: u1,
                ///  Filter bits
                FD7: u1,
                ///  Filter bits
                FD8: u1,
                ///  Filter bits
                FD9: u1,
                ///  Filter bits
                FD10: u1,
                ///  Filter bits
                FD11: u1,
                ///  Filter bits
                FD12: u1,
                ///  Filter bits
                FD13: u1,
                ///  Filter bits
                FD14: u1,
                ///  Filter bits
                FD15: u1,
                ///  Filter bits
                FD16: u1,
                ///  Filter bits
                FD17: u1,
                ///  Filter bits
                FD18: u1,
                ///  Filter bits
                FD19: u1,
                ///  Filter bits
                FD20: u1,
                ///  Filter bits
                FD21: u1,
                ///  Filter bits
                FD22: u1,
                ///  Filter bits
                FD23: u1,
                ///  Filter bits
                FD24: u1,
                ///  Filter bits
                FD25: u1,
                ///  Filter bits
                FD26: u1,
                ///  Filter bits
                FD27: u1,
                ///  Filter bits
                FD28: u1,
                ///  Filter bits
                FD29: u1,
                ///  Filter bits
                FD30: u1,
                ///  Filter bits
                FD31: u1,
            }),
            ///  Filter 15 data 0 register
            F15DATA0: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FD0: u1,
                ///  Filter bits
                FD1: u1,
                ///  Filter bits
                FD2: u1,
                ///  Filter bits
                FD3: u1,
                ///  Filter bits
                FD4: u1,
                ///  Filter bits
                FD5: u1,
                ///  Filter bits
                FD6: u1,
                ///  Filter bits
                FD7: u1,
                ///  Filter bits
                FD8: u1,
                ///  Filter bits
                FD9: u1,
                ///  Filter bits
                FD10: u1,
                ///  Filter bits
                FD11: u1,
                ///  Filter bits
                FD12: u1,
                ///  Filter bits
                FD13: u1,
                ///  Filter bits
                FD14: u1,
                ///  Filter bits
                FD15: u1,
                ///  Filter bits
                FD16: u1,
                ///  Filter bits
                FD17: u1,
                ///  Filter bits
                FD18: u1,
                ///  Filter bits
                FD19: u1,
                ///  Filter bits
                FD20: u1,
                ///  Filter bits
                FD21: u1,
                ///  Filter bits
                FD22: u1,
                ///  Filter bits
                FD23: u1,
                ///  Filter bits
                FD24: u1,
                ///  Filter bits
                FD25: u1,
                ///  Filter bits
                FD26: u1,
                ///  Filter bits
                FD27: u1,
                ///  Filter bits
                FD28: u1,
                ///  Filter bits
                FD29: u1,
                ///  Filter bits
                FD30: u1,
                ///  Filter bits
                FD31: u1,
            }),
            ///  Filter 15 data 1 register
            F15DATA1: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FD0: u1,
                ///  Filter bits
                FD1: u1,
                ///  Filter bits
                FD2: u1,
                ///  Filter bits
                FD3: u1,
                ///  Filter bits
                FD4: u1,
                ///  Filter bits
                FD5: u1,
                ///  Filter bits
                FD6: u1,
                ///  Filter bits
                FD7: u1,
                ///  Filter bits
                FD8: u1,
                ///  Filter bits
                FD9: u1,
                ///  Filter bits
                FD10: u1,
                ///  Filter bits
                FD11: u1,
                ///  Filter bits
                FD12: u1,
                ///  Filter bits
                FD13: u1,
                ///  Filter bits
                FD14: u1,
                ///  Filter bits
                FD15: u1,
                ///  Filter bits
                FD16: u1,
                ///  Filter bits
                FD17: u1,
                ///  Filter bits
                FD18: u1,
                ///  Filter bits
                FD19: u1,
                ///  Filter bits
                FD20: u1,
                ///  Filter bits
                FD21: u1,
                ///  Filter bits
                FD22: u1,
                ///  Filter bits
                FD23: u1,
                ///  Filter bits
                FD24: u1,
                ///  Filter bits
                FD25: u1,
                ///  Filter bits
                FD26: u1,
                ///  Filter bits
                FD27: u1,
                ///  Filter bits
                FD28: u1,
                ///  Filter bits
                FD29: u1,
                ///  Filter bits
                FD30: u1,
                ///  Filter bits
                FD31: u1,
            }),
            ///  Filter 16 data 0 register
            F16DATA0: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FD0: u1,
                ///  Filter bits
                FD1: u1,
                ///  Filter bits
                FD2: u1,
                ///  Filter bits
                FD3: u1,
                ///  Filter bits
                FD4: u1,
                ///  Filter bits
                FD5: u1,
                ///  Filter bits
                FD6: u1,
                ///  Filter bits
                FD7: u1,
                ///  Filter bits
                FD8: u1,
                ///  Filter bits
                FD9: u1,
                ///  Filter bits
                FD10: u1,
                ///  Filter bits
                FD11: u1,
                ///  Filter bits
                FD12: u1,
                ///  Filter bits
                FD13: u1,
                ///  Filter bits
                FD14: u1,
                ///  Filter bits
                FD15: u1,
                ///  Filter bits
                FD16: u1,
                ///  Filter bits
                FD17: u1,
                ///  Filter bits
                FD18: u1,
                ///  Filter bits
                FD19: u1,
                ///  Filter bits
                FD20: u1,
                ///  Filter bits
                FD21: u1,
                ///  Filter bits
                FD22: u1,
                ///  Filter bits
                FD23: u1,
                ///  Filter bits
                FD24: u1,
                ///  Filter bits
                FD25: u1,
                ///  Filter bits
                FD26: u1,
                ///  Filter bits
                FD27: u1,
                ///  Filter bits
                FD28: u1,
                ///  Filter bits
                FD29: u1,
                ///  Filter bits
                FD30: u1,
                ///  Filter bits
                FD31: u1,
            }),
            ///  Filter 16 data 1 register
            F16DATA1: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FD0: u1,
                ///  Filter bits
                FD1: u1,
                ///  Filter bits
                FD2: u1,
                ///  Filter bits
                FD3: u1,
                ///  Filter bits
                FD4: u1,
                ///  Filter bits
                FD5: u1,
                ///  Filter bits
                FD6: u1,
                ///  Filter bits
                FD7: u1,
                ///  Filter bits
                FD8: u1,
                ///  Filter bits
                FD9: u1,
                ///  Filter bits
                FD10: u1,
                ///  Filter bits
                FD11: u1,
                ///  Filter bits
                FD12: u1,
                ///  Filter bits
                FD13: u1,
                ///  Filter bits
                FD14: u1,
                ///  Filter bits
                FD15: u1,
                ///  Filter bits
                FD16: u1,
                ///  Filter bits
                FD17: u1,
                ///  Filter bits
                FD18: u1,
                ///  Filter bits
                FD19: u1,
                ///  Filter bits
                FD20: u1,
                ///  Filter bits
                FD21: u1,
                ///  Filter bits
                FD22: u1,
                ///  Filter bits
                FD23: u1,
                ///  Filter bits
                FD24: u1,
                ///  Filter bits
                FD25: u1,
                ///  Filter bits
                FD26: u1,
                ///  Filter bits
                FD27: u1,
                ///  Filter bits
                FD28: u1,
                ///  Filter bits
                FD29: u1,
                ///  Filter bits
                FD30: u1,
                ///  Filter bits
                FD31: u1,
            }),
            ///  Filter 17 data 0 register
            F17DATA0: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FD0: u1,
                ///  Filter bits
                FD1: u1,
                ///  Filter bits
                FD2: u1,
                ///  Filter bits
                FD3: u1,
                ///  Filter bits
                FD4: u1,
                ///  Filter bits
                FD5: u1,
                ///  Filter bits
                FD6: u1,
                ///  Filter bits
                FD7: u1,
                ///  Filter bits
                FD8: u1,
                ///  Filter bits
                FD9: u1,
                ///  Filter bits
                FD10: u1,
                ///  Filter bits
                FD11: u1,
                ///  Filter bits
                FD12: u1,
                ///  Filter bits
                FD13: u1,
                ///  Filter bits
                FD14: u1,
                ///  Filter bits
                FD15: u1,
                ///  Filter bits
                FD16: u1,
                ///  Filter bits
                FD17: u1,
                ///  Filter bits
                FD18: u1,
                ///  Filter bits
                FD19: u1,
                ///  Filter bits
                FD20: u1,
                ///  Filter bits
                FD21: u1,
                ///  Filter bits
                FD22: u1,
                ///  Filter bits
                FD23: u1,
                ///  Filter bits
                FD24: u1,
                ///  Filter bits
                FD25: u1,
                ///  Filter bits
                FD26: u1,
                ///  Filter bits
                FD27: u1,
                ///  Filter bits
                FD28: u1,
                ///  Filter bits
                FD29: u1,
                ///  Filter bits
                FD30: u1,
                ///  Filter bits
                FD31: u1,
            }),
            ///  Filter 17 data 1 register
            F17DATA1: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FD0: u1,
                ///  Filter bits
                FD1: u1,
                ///  Filter bits
                FD2: u1,
                ///  Filter bits
                FD3: u1,
                ///  Filter bits
                FD4: u1,
                ///  Filter bits
                FD5: u1,
                ///  Filter bits
                FD6: u1,
                ///  Filter bits
                FD7: u1,
                ///  Filter bits
                FD8: u1,
                ///  Filter bits
                FD9: u1,
                ///  Filter bits
                FD10: u1,
                ///  Filter bits
                FD11: u1,
                ///  Filter bits
                FD12: u1,
                ///  Filter bits
                FD13: u1,
                ///  Filter bits
                FD14: u1,
                ///  Filter bits
                FD15: u1,
                ///  Filter bits
                FD16: u1,
                ///  Filter bits
                FD17: u1,
                ///  Filter bits
                FD18: u1,
                ///  Filter bits
                FD19: u1,
                ///  Filter bits
                FD20: u1,
                ///  Filter bits
                FD21: u1,
                ///  Filter bits
                FD22: u1,
                ///  Filter bits
                FD23: u1,
                ///  Filter bits
                FD24: u1,
                ///  Filter bits
                FD25: u1,
                ///  Filter bits
                FD26: u1,
                ///  Filter bits
                FD27: u1,
                ///  Filter bits
                FD28: u1,
                ///  Filter bits
                FD29: u1,
                ///  Filter bits
                FD30: u1,
                ///  Filter bits
                FD31: u1,
            }),
            ///  Filter 18 data 0 register
            F18DATA0: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FD0: u1,
                ///  Filter bits
                FD1: u1,
                ///  Filter bits
                FD2: u1,
                ///  Filter bits
                FD3: u1,
                ///  Filter bits
                FD4: u1,
                ///  Filter bits
                FD5: u1,
                ///  Filter bits
                FD6: u1,
                ///  Filter bits
                FD7: u1,
                ///  Filter bits
                FD8: u1,
                ///  Filter bits
                FD9: u1,
                ///  Filter bits
                FD10: u1,
                ///  Filter bits
                FD11: u1,
                ///  Filter bits
                FD12: u1,
                ///  Filter bits
                FD13: u1,
                ///  Filter bits
                FD14: u1,
                ///  Filter bits
                FD15: u1,
                ///  Filter bits
                FD16: u1,
                ///  Filter bits
                FD17: u1,
                ///  Filter bits
                FD18: u1,
                ///  Filter bits
                FD19: u1,
                ///  Filter bits
                FD20: u1,
                ///  Filter bits
                FD21: u1,
                ///  Filter bits
                FD22: u1,
                ///  Filter bits
                FD23: u1,
                ///  Filter bits
                FD24: u1,
                ///  Filter bits
                FD25: u1,
                ///  Filter bits
                FD26: u1,
                ///  Filter bits
                FD27: u1,
                ///  Filter bits
                FD28: u1,
                ///  Filter bits
                FD29: u1,
                ///  Filter bits
                FD30: u1,
                ///  Filter bits
                FD31: u1,
            }),
            ///  Filter 18 data 1 register
            F18DATA1: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FD0: u1,
                ///  Filter bits
                FD1: u1,
                ///  Filter bits
                FD2: u1,
                ///  Filter bits
                FD3: u1,
                ///  Filter bits
                FD4: u1,
                ///  Filter bits
                FD5: u1,
                ///  Filter bits
                FD6: u1,
                ///  Filter bits
                FD7: u1,
                ///  Filter bits
                FD8: u1,
                ///  Filter bits
                FD9: u1,
                ///  Filter bits
                FD10: u1,
                ///  Filter bits
                FD11: u1,
                ///  Filter bits
                FD12: u1,
                ///  Filter bits
                FD13: u1,
                ///  Filter bits
                FD14: u1,
                ///  Filter bits
                FD15: u1,
                ///  Filter bits
                FD16: u1,
                ///  Filter bits
                FD17: u1,
                ///  Filter bits
                FD18: u1,
                ///  Filter bits
                FD19: u1,
                ///  Filter bits
                FD20: u1,
                ///  Filter bits
                FD21: u1,
                ///  Filter bits
                FD22: u1,
                ///  Filter bits
                FD23: u1,
                ///  Filter bits
                FD24: u1,
                ///  Filter bits
                FD25: u1,
                ///  Filter bits
                FD26: u1,
                ///  Filter bits
                FD27: u1,
                ///  Filter bits
                FD28: u1,
                ///  Filter bits
                FD29: u1,
                ///  Filter bits
                FD30: u1,
                ///  Filter bits
                FD31: u1,
            }),
            ///  Filter 19 data 0 register
            F19DATA0: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FD0: u1,
                ///  Filter bits
                FD1: u1,
                ///  Filter bits
                FD2: u1,
                ///  Filter bits
                FD3: u1,
                ///  Filter bits
                FD4: u1,
                ///  Filter bits
                FD5: u1,
                ///  Filter bits
                FD6: u1,
                ///  Filter bits
                FD7: u1,
                ///  Filter bits
                FD8: u1,
                ///  Filter bits
                FD9: u1,
                ///  Filter bits
                FD10: u1,
                ///  Filter bits
                FD11: u1,
                ///  Filter bits
                FD12: u1,
                ///  Filter bits
                FD13: u1,
                ///  Filter bits
                FD14: u1,
                ///  Filter bits
                FD15: u1,
                ///  Filter bits
                FD16: u1,
                ///  Filter bits
                FD17: u1,
                ///  Filter bits
                FD18: u1,
                ///  Filter bits
                FD19: u1,
                ///  Filter bits
                FD20: u1,
                ///  Filter bits
                FD21: u1,
                ///  Filter bits
                FD22: u1,
                ///  Filter bits
                FD23: u1,
                ///  Filter bits
                FD24: u1,
                ///  Filter bits
                FD25: u1,
                ///  Filter bits
                FD26: u1,
                ///  Filter bits
                FD27: u1,
                ///  Filter bits
                FD28: u1,
                ///  Filter bits
                FD29: u1,
                ///  Filter bits
                FD30: u1,
                ///  Filter bits
                FD31: u1,
            }),
            ///  Filter 19 data 1 register
            F19DATA1: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FD0: u1,
                ///  Filter bits
                FD1: u1,
                ///  Filter bits
                FD2: u1,
                ///  Filter bits
                FD3: u1,
                ///  Filter bits
                FD4: u1,
                ///  Filter bits
                FD5: u1,
                ///  Filter bits
                FD6: u1,
                ///  Filter bits
                FD7: u1,
                ///  Filter bits
                FD8: u1,
                ///  Filter bits
                FD9: u1,
                ///  Filter bits
                FD10: u1,
                ///  Filter bits
                FD11: u1,
                ///  Filter bits
                FD12: u1,
                ///  Filter bits
                FD13: u1,
                ///  Filter bits
                FD14: u1,
                ///  Filter bits
                FD15: u1,
                ///  Filter bits
                FD16: u1,
                ///  Filter bits
                FD17: u1,
                ///  Filter bits
                FD18: u1,
                ///  Filter bits
                FD19: u1,
                ///  Filter bits
                FD20: u1,
                ///  Filter bits
                FD21: u1,
                ///  Filter bits
                FD22: u1,
                ///  Filter bits
                FD23: u1,
                ///  Filter bits
                FD24: u1,
                ///  Filter bits
                FD25: u1,
                ///  Filter bits
                FD26: u1,
                ///  Filter bits
                FD27: u1,
                ///  Filter bits
                FD28: u1,
                ///  Filter bits
                FD29: u1,
                ///  Filter bits
                FD30: u1,
                ///  Filter bits
                FD31: u1,
            }),
            ///  Filter 20 data 0 register
            F20DATA0: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FD0: u1,
                ///  Filter bits
                FD1: u1,
                ///  Filter bits
                FD2: u1,
                ///  Filter bits
                FD3: u1,
                ///  Filter bits
                FD4: u1,
                ///  Filter bits
                FD5: u1,
                ///  Filter bits
                FD6: u1,
                ///  Filter bits
                FD7: u1,
                ///  Filter bits
                FD8: u1,
                ///  Filter bits
                FD9: u1,
                ///  Filter bits
                FD10: u1,
                ///  Filter bits
                FD11: u1,
                ///  Filter bits
                FD12: u1,
                ///  Filter bits
                FD13: u1,
                ///  Filter bits
                FD14: u1,
                ///  Filter bits
                FD15: u1,
                ///  Filter bits
                FD16: u1,
                ///  Filter bits
                FD17: u1,
                ///  Filter bits
                FD18: u1,
                ///  Filter bits
                FD19: u1,
                ///  Filter bits
                FD20: u1,
                ///  Filter bits
                FD21: u1,
                ///  Filter bits
                FD22: u1,
                ///  Filter bits
                FD23: u1,
                ///  Filter bits
                FD24: u1,
                ///  Filter bits
                FD25: u1,
                ///  Filter bits
                FD26: u1,
                ///  Filter bits
                FD27: u1,
                ///  Filter bits
                FD28: u1,
                ///  Filter bits
                FD29: u1,
                ///  Filter bits
                FD30: u1,
                ///  Filter bits
                FD31: u1,
            }),
            ///  Filter 20 data 1 register
            F20DATA1: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FD0: u1,
                ///  Filter bits
                FD1: u1,
                ///  Filter bits
                FD2: u1,
                ///  Filter bits
                FD3: u1,
                ///  Filter bits
                FD4: u1,
                ///  Filter bits
                FD5: u1,
                ///  Filter bits
                FD6: u1,
                ///  Filter bits
                FD7: u1,
                ///  Filter bits
                FD8: u1,
                ///  Filter bits
                FD9: u1,
                ///  Filter bits
                FD10: u1,
                ///  Filter bits
                FD11: u1,
                ///  Filter bits
                FD12: u1,
                ///  Filter bits
                FD13: u1,
                ///  Filter bits
                FD14: u1,
                ///  Filter bits
                FD15: u1,
                ///  Filter bits
                FD16: u1,
                ///  Filter bits
                FD17: u1,
                ///  Filter bits
                FD18: u1,
                ///  Filter bits
                FD19: u1,
                ///  Filter bits
                FD20: u1,
                ///  Filter bits
                FD21: u1,
                ///  Filter bits
                FD22: u1,
                ///  Filter bits
                FD23: u1,
                ///  Filter bits
                FD24: u1,
                ///  Filter bits
                FD25: u1,
                ///  Filter bits
                FD26: u1,
                ///  Filter bits
                FD27: u1,
                ///  Filter bits
                FD28: u1,
                ///  Filter bits
                FD29: u1,
                ///  Filter bits
                FD30: u1,
                ///  Filter bits
                FD31: u1,
            }),
            ///  Filter 21 data 0 register
            F21DATA0: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FD0: u1,
                ///  Filter bits
                FD1: u1,
                ///  Filter bits
                FD2: u1,
                ///  Filter bits
                FD3: u1,
                ///  Filter bits
                FD4: u1,
                ///  Filter bits
                FD5: u1,
                ///  Filter bits
                FD6: u1,
                ///  Filter bits
                FD7: u1,
                ///  Filter bits
                FD8: u1,
                ///  Filter bits
                FD9: u1,
                ///  Filter bits
                FD10: u1,
                ///  Filter bits
                FD11: u1,
                ///  Filter bits
                FD12: u1,
                ///  Filter bits
                FD13: u1,
                ///  Filter bits
                FD14: u1,
                ///  Filter bits
                FD15: u1,
                ///  Filter bits
                FD16: u1,
                ///  Filter bits
                FD17: u1,
                ///  Filter bits
                FD18: u1,
                ///  Filter bits
                FD19: u1,
                ///  Filter bits
                FD20: u1,
                ///  Filter bits
                FD21: u1,
                ///  Filter bits
                FD22: u1,
                ///  Filter bits
                FD23: u1,
                ///  Filter bits
                FD24: u1,
                ///  Filter bits
                FD25: u1,
                ///  Filter bits
                FD26: u1,
                ///  Filter bits
                FD27: u1,
                ///  Filter bits
                FD28: u1,
                ///  Filter bits
                FD29: u1,
                ///  Filter bits
                FD30: u1,
                ///  Filter bits
                FD31: u1,
            }),
            ///  Filter 21 data 1 register
            F21DATA1: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FD0: u1,
                ///  Filter bits
                FD1: u1,
                ///  Filter bits
                FD2: u1,
                ///  Filter bits
                FD3: u1,
                ///  Filter bits
                FD4: u1,
                ///  Filter bits
                FD5: u1,
                ///  Filter bits
                FD6: u1,
                ///  Filter bits
                FD7: u1,
                ///  Filter bits
                FD8: u1,
                ///  Filter bits
                FD9: u1,
                ///  Filter bits
                FD10: u1,
                ///  Filter bits
                FD11: u1,
                ///  Filter bits
                FD12: u1,
                ///  Filter bits
                FD13: u1,
                ///  Filter bits
                FD14: u1,
                ///  Filter bits
                FD15: u1,
                ///  Filter bits
                FD16: u1,
                ///  Filter bits
                FD17: u1,
                ///  Filter bits
                FD18: u1,
                ///  Filter bits
                FD19: u1,
                ///  Filter bits
                FD20: u1,
                ///  Filter bits
                FD21: u1,
                ///  Filter bits
                FD22: u1,
                ///  Filter bits
                FD23: u1,
                ///  Filter bits
                FD24: u1,
                ///  Filter bits
                FD25: u1,
                ///  Filter bits
                FD26: u1,
                ///  Filter bits
                FD27: u1,
                ///  Filter bits
                FD28: u1,
                ///  Filter bits
                FD29: u1,
                ///  Filter bits
                FD30: u1,
                ///  Filter bits
                FD31: u1,
            }),
            ///  Filter 22 data 0 register
            F22DATA0: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FD0: u1,
                ///  Filter bits
                FD1: u1,
                ///  Filter bits
                FD2: u1,
                ///  Filter bits
                FD3: u1,
                ///  Filter bits
                FD4: u1,
                ///  Filter bits
                FD5: u1,
                ///  Filter bits
                FD6: u1,
                ///  Filter bits
                FD7: u1,
                ///  Filter bits
                FD8: u1,
                ///  Filter bits
                FD9: u1,
                ///  Filter bits
                FD10: u1,
                ///  Filter bits
                FD11: u1,
                ///  Filter bits
                FD12: u1,
                ///  Filter bits
                FD13: u1,
                ///  Filter bits
                FD14: u1,
                ///  Filter bits
                FD15: u1,
                ///  Filter bits
                FD16: u1,
                ///  Filter bits
                FD17: u1,
                ///  Filter bits
                FD18: u1,
                ///  Filter bits
                FD19: u1,
                ///  Filter bits
                FD20: u1,
                ///  Filter bits
                FD21: u1,
                ///  Filter bits
                FD22: u1,
                ///  Filter bits
                FD23: u1,
                ///  Filter bits
                FD24: u1,
                ///  Filter bits
                FD25: u1,
                ///  Filter bits
                FD26: u1,
                ///  Filter bits
                FD27: u1,
                ///  Filter bits
                FD28: u1,
                ///  Filter bits
                FD29: u1,
                ///  Filter bits
                FD30: u1,
                ///  Filter bits
                FD31: u1,
            }),
            ///  Filter 22 data 1 register
            F22DATA1: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FD0: u1,
                ///  Filter bits
                FD1: u1,
                ///  Filter bits
                FD2: u1,
                ///  Filter bits
                FD3: u1,
                ///  Filter bits
                FD4: u1,
                ///  Filter bits
                FD5: u1,
                ///  Filter bits
                FD6: u1,
                ///  Filter bits
                FD7: u1,
                ///  Filter bits
                FD8: u1,
                ///  Filter bits
                FD9: u1,
                ///  Filter bits
                FD10: u1,
                ///  Filter bits
                FD11: u1,
                ///  Filter bits
                FD12: u1,
                ///  Filter bits
                FD13: u1,
                ///  Filter bits
                FD14: u1,
                ///  Filter bits
                FD15: u1,
                ///  Filter bits
                FD16: u1,
                ///  Filter bits
                FD17: u1,
                ///  Filter bits
                FD18: u1,
                ///  Filter bits
                FD19: u1,
                ///  Filter bits
                FD20: u1,
                ///  Filter bits
                FD21: u1,
                ///  Filter bits
                FD22: u1,
                ///  Filter bits
                FD23: u1,
                ///  Filter bits
                FD24: u1,
                ///  Filter bits
                FD25: u1,
                ///  Filter bits
                FD26: u1,
                ///  Filter bits
                FD27: u1,
                ///  Filter bits
                FD28: u1,
                ///  Filter bits
                FD29: u1,
                ///  Filter bits
                FD30: u1,
                ///  Filter bits
                FD31: u1,
            }),
            ///  Filter 23 data 0 register
            F23DATA0: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FD0: u1,
                ///  Filter bits
                FD1: u1,
                ///  Filter bits
                FD2: u1,
                ///  Filter bits
                FD3: u1,
                ///  Filter bits
                FD4: u1,
                ///  Filter bits
                FD5: u1,
                ///  Filter bits
                FD6: u1,
                ///  Filter bits
                FD7: u1,
                ///  Filter bits
                FD8: u1,
                ///  Filter bits
                FD9: u1,
                ///  Filter bits
                FD10: u1,
                ///  Filter bits
                FD11: u1,
                ///  Filter bits
                FD12: u1,
                ///  Filter bits
                FD13: u1,
                ///  Filter bits
                FD14: u1,
                ///  Filter bits
                FD15: u1,
                ///  Filter bits
                FD16: u1,
                ///  Filter bits
                FD17: u1,
                ///  Filter bits
                FD18: u1,
                ///  Filter bits
                FD19: u1,
                ///  Filter bits
                FD20: u1,
                ///  Filter bits
                FD21: u1,
                ///  Filter bits
                FD22: u1,
                ///  Filter bits
                FD23: u1,
                ///  Filter bits
                FD24: u1,
                ///  Filter bits
                FD25: u1,
                ///  Filter bits
                FD26: u1,
                ///  Filter bits
                FD27: u1,
                ///  Filter bits
                FD28: u1,
                ///  Filter bits
                FD29: u1,
                ///  Filter bits
                FD30: u1,
                ///  Filter bits
                FD31: u1,
            }),
            ///  Filter 23 data 1 register
            F23DATA1: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FD0: u1,
                ///  Filter bits
                FD1: u1,
                ///  Filter bits
                FD2: u1,
                ///  Filter bits
                FD3: u1,
                ///  Filter bits
                FD4: u1,
                ///  Filter bits
                FD5: u1,
                ///  Filter bits
                FD6: u1,
                ///  Filter bits
                FD7: u1,
                ///  Filter bits
                FD8: u1,
                ///  Filter bits
                FD9: u1,
                ///  Filter bits
                FD10: u1,
                ///  Filter bits
                FD11: u1,
                ///  Filter bits
                FD12: u1,
                ///  Filter bits
                FD13: u1,
                ///  Filter bits
                FD14: u1,
                ///  Filter bits
                FD15: u1,
                ///  Filter bits
                FD16: u1,
                ///  Filter bits
                FD17: u1,
                ///  Filter bits
                FD18: u1,
                ///  Filter bits
                FD19: u1,
                ///  Filter bits
                FD20: u1,
                ///  Filter bits
                FD21: u1,
                ///  Filter bits
                FD22: u1,
                ///  Filter bits
                FD23: u1,
                ///  Filter bits
                FD24: u1,
                ///  Filter bits
                FD25: u1,
                ///  Filter bits
                FD26: u1,
                ///  Filter bits
                FD27: u1,
                ///  Filter bits
                FD28: u1,
                ///  Filter bits
                FD29: u1,
                ///  Filter bits
                FD30: u1,
                ///  Filter bits
                FD31: u1,
            }),
            ///  Filter 24 data 0 register
            F24DATA0: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FD0: u1,
                ///  Filter bits
                FD1: u1,
                ///  Filter bits
                FD2: u1,
                ///  Filter bits
                FD3: u1,
                ///  Filter bits
                FD4: u1,
                ///  Filter bits
                FD5: u1,
                ///  Filter bits
                FD6: u1,
                ///  Filter bits
                FD7: u1,
                ///  Filter bits
                FD8: u1,
                ///  Filter bits
                FD9: u1,
                ///  Filter bits
                FD10: u1,
                ///  Filter bits
                FD11: u1,
                ///  Filter bits
                FD12: u1,
                ///  Filter bits
                FD13: u1,
                ///  Filter bits
                FD14: u1,
                ///  Filter bits
                FD15: u1,
                ///  Filter bits
                FD16: u1,
                ///  Filter bits
                FD17: u1,
                ///  Filter bits
                FD18: u1,
                ///  Filter bits
                FD19: u1,
                ///  Filter bits
                FD20: u1,
                ///  Filter bits
                FD21: u1,
                ///  Filter bits
                FD22: u1,
                ///  Filter bits
                FD23: u1,
                ///  Filter bits
                FD24: u1,
                ///  Filter bits
                FD25: u1,
                ///  Filter bits
                FD26: u1,
                ///  Filter bits
                FD27: u1,
                ///  Filter bits
                FD28: u1,
                ///  Filter bits
                FD29: u1,
                ///  Filter bits
                FD30: u1,
                ///  Filter bits
                FD31: u1,
            }),
            ///  Filter 24 data 1 register
            F24DATA1: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FD0: u1,
                ///  Filter bits
                FD1: u1,
                ///  Filter bits
                FD2: u1,
                ///  Filter bits
                FD3: u1,
                ///  Filter bits
                FD4: u1,
                ///  Filter bits
                FD5: u1,
                ///  Filter bits
                FD6: u1,
                ///  Filter bits
                FD7: u1,
                ///  Filter bits
                FD8: u1,
                ///  Filter bits
                FD9: u1,
                ///  Filter bits
                FD10: u1,
                ///  Filter bits
                FD11: u1,
                ///  Filter bits
                FD12: u1,
                ///  Filter bits
                FD13: u1,
                ///  Filter bits
                FD14: u1,
                ///  Filter bits
                FD15: u1,
                ///  Filter bits
                FD16: u1,
                ///  Filter bits
                FD17: u1,
                ///  Filter bits
                FD18: u1,
                ///  Filter bits
                FD19: u1,
                ///  Filter bits
                FD20: u1,
                ///  Filter bits
                FD21: u1,
                ///  Filter bits
                FD22: u1,
                ///  Filter bits
                FD23: u1,
                ///  Filter bits
                FD24: u1,
                ///  Filter bits
                FD25: u1,
                ///  Filter bits
                FD26: u1,
                ///  Filter bits
                FD27: u1,
                ///  Filter bits
                FD28: u1,
                ///  Filter bits
                FD29: u1,
                ///  Filter bits
                FD30: u1,
                ///  Filter bits
                FD31: u1,
            }),
            ///  Filter 25 data 0 register
            F25DATA0: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FD0: u1,
                ///  Filter bits
                FD1: u1,
                ///  Filter bits
                FD2: u1,
                ///  Filter bits
                FD3: u1,
                ///  Filter bits
                FD4: u1,
                ///  Filter bits
                FD5: u1,
                ///  Filter bits
                FD6: u1,
                ///  Filter bits
                FD7: u1,
                ///  Filter bits
                FD8: u1,
                ///  Filter bits
                FD9: u1,
                ///  Filter bits
                FD10: u1,
                ///  Filter bits
                FD11: u1,
                ///  Filter bits
                FD12: u1,
                ///  Filter bits
                FD13: u1,
                ///  Filter bits
                FD14: u1,
                ///  Filter bits
                FD15: u1,
                ///  Filter bits
                FD16: u1,
                ///  Filter bits
                FD17: u1,
                ///  Filter bits
                FD18: u1,
                ///  Filter bits
                FD19: u1,
                ///  Filter bits
                FD20: u1,
                ///  Filter bits
                FD21: u1,
                ///  Filter bits
                FD22: u1,
                ///  Filter bits
                FD23: u1,
                ///  Filter bits
                FD24: u1,
                ///  Filter bits
                FD25: u1,
                ///  Filter bits
                FD26: u1,
                ///  Filter bits
                FD27: u1,
                ///  Filter bits
                FD28: u1,
                ///  Filter bits
                FD29: u1,
                ///  Filter bits
                FD30: u1,
                ///  Filter bits
                FD31: u1,
            }),
            ///  Filter 25 data 1 register
            F25DATA1: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FD0: u1,
                ///  Filter bits
                FD1: u1,
                ///  Filter bits
                FD2: u1,
                ///  Filter bits
                FD3: u1,
                ///  Filter bits
                FD4: u1,
                ///  Filter bits
                FD5: u1,
                ///  Filter bits
                FD6: u1,
                ///  Filter bits
                FD7: u1,
                ///  Filter bits
                FD8: u1,
                ///  Filter bits
                FD9: u1,
                ///  Filter bits
                FD10: u1,
                ///  Filter bits
                FD11: u1,
                ///  Filter bits
                FD12: u1,
                ///  Filter bits
                FD13: u1,
                ///  Filter bits
                FD14: u1,
                ///  Filter bits
                FD15: u1,
                ///  Filter bits
                FD16: u1,
                ///  Filter bits
                FD17: u1,
                ///  Filter bits
                FD18: u1,
                ///  Filter bits
                FD19: u1,
                ///  Filter bits
                FD20: u1,
                ///  Filter bits
                FD21: u1,
                ///  Filter bits
                FD22: u1,
                ///  Filter bits
                FD23: u1,
                ///  Filter bits
                FD24: u1,
                ///  Filter bits
                FD25: u1,
                ///  Filter bits
                FD26: u1,
                ///  Filter bits
                FD27: u1,
                ///  Filter bits
                FD28: u1,
                ///  Filter bits
                FD29: u1,
                ///  Filter bits
                FD30: u1,
                ///  Filter bits
                FD31: u1,
            }),
            ///  Filter 26 data 0 register
            F26DATA0: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FD0: u1,
                ///  Filter bits
                FD1: u1,
                ///  Filter bits
                FD2: u1,
                ///  Filter bits
                FD3: u1,
                ///  Filter bits
                FD4: u1,
                ///  Filter bits
                FD5: u1,
                ///  Filter bits
                FD6: u1,
                ///  Filter bits
                FD7: u1,
                ///  Filter bits
                FD8: u1,
                ///  Filter bits
                FD9: u1,
                ///  Filter bits
                FD10: u1,
                ///  Filter bits
                FD11: u1,
                ///  Filter bits
                FD12: u1,
                ///  Filter bits
                FD13: u1,
                ///  Filter bits
                FD14: u1,
                ///  Filter bits
                FD15: u1,
                ///  Filter bits
                FD16: u1,
                ///  Filter bits
                FD17: u1,
                ///  Filter bits
                FD18: u1,
                ///  Filter bits
                FD19: u1,
                ///  Filter bits
                FD20: u1,
                ///  Filter bits
                FD21: u1,
                ///  Filter bits
                FD22: u1,
                ///  Filter bits
                FD23: u1,
                ///  Filter bits
                FD24: u1,
                ///  Filter bits
                FD25: u1,
                ///  Filter bits
                FD26: u1,
                ///  Filter bits
                FD27: u1,
                ///  Filter bits
                FD28: u1,
                ///  Filter bits
                FD29: u1,
                ///  Filter bits
                FD30: u1,
                ///  Filter bits
                FD31: u1,
            }),
            ///  Filter 26 data 1 register
            F26DATA1: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FD0: u1,
                ///  Filter bits
                FD1: u1,
                ///  Filter bits
                FD2: u1,
                ///  Filter bits
                FD3: u1,
                ///  Filter bits
                FD4: u1,
                ///  Filter bits
                FD5: u1,
                ///  Filter bits
                FD6: u1,
                ///  Filter bits
                FD7: u1,
                ///  Filter bits
                FD8: u1,
                ///  Filter bits
                FD9: u1,
                ///  Filter bits
                FD10: u1,
                ///  Filter bits
                FD11: u1,
                ///  Filter bits
                FD12: u1,
                ///  Filter bits
                FD13: u1,
                ///  Filter bits
                FD14: u1,
                ///  Filter bits
                FD15: u1,
                ///  Filter bits
                FD16: u1,
                ///  Filter bits
                FD17: u1,
                ///  Filter bits
                FD18: u1,
                ///  Filter bits
                FD19: u1,
                ///  Filter bits
                FD20: u1,
                ///  Filter bits
                FD21: u1,
                ///  Filter bits
                FD22: u1,
                ///  Filter bits
                FD23: u1,
                ///  Filter bits
                FD24: u1,
                ///  Filter bits
                FD25: u1,
                ///  Filter bits
                FD26: u1,
                ///  Filter bits
                FD27: u1,
                ///  Filter bits
                FD28: u1,
                ///  Filter bits
                FD29: u1,
                ///  Filter bits
                FD30: u1,
                ///  Filter bits
                FD31: u1,
            }),
            ///  Filter 27 data 0 register
            F27DATA0: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FD0: u1,
                ///  Filter bits
                FD1: u1,
                ///  Filter bits
                FD2: u1,
                ///  Filter bits
                FD3: u1,
                ///  Filter bits
                FD4: u1,
                ///  Filter bits
                FD5: u1,
                ///  Filter bits
                FD6: u1,
                ///  Filter bits
                FD7: u1,
                ///  Filter bits
                FD8: u1,
                ///  Filter bits
                FD9: u1,
                ///  Filter bits
                FD10: u1,
                ///  Filter bits
                FD11: u1,
                ///  Filter bits
                FD12: u1,
                ///  Filter bits
                FD13: u1,
                ///  Filter bits
                FD14: u1,
                ///  Filter bits
                FD15: u1,
                ///  Filter bits
                FD16: u1,
                ///  Filter bits
                FD17: u1,
                ///  Filter bits
                FD18: u1,
                ///  Filter bits
                FD19: u1,
                ///  Filter bits
                FD20: u1,
                ///  Filter bits
                FD21: u1,
                ///  Filter bits
                FD22: u1,
                ///  Filter bits
                FD23: u1,
                ///  Filter bits
                FD24: u1,
                ///  Filter bits
                FD25: u1,
                ///  Filter bits
                FD26: u1,
                ///  Filter bits
                FD27: u1,
                ///  Filter bits
                FD28: u1,
                ///  Filter bits
                FD29: u1,
                ///  Filter bits
                FD30: u1,
                ///  Filter bits
                FD31: u1,
            }),
            ///  Filter 27 data 1 register
            F27DATA1: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FD0: u1,
                ///  Filter bits
                FD1: u1,
                ///  Filter bits
                FD2: u1,
                ///  Filter bits
                FD3: u1,
                ///  Filter bits
                FD4: u1,
                ///  Filter bits
                FD5: u1,
                ///  Filter bits
                FD6: u1,
                ///  Filter bits
                FD7: u1,
                ///  Filter bits
                FD8: u1,
                ///  Filter bits
                FD9: u1,
                ///  Filter bits
                FD10: u1,
                ///  Filter bits
                FD11: u1,
                ///  Filter bits
                FD12: u1,
                ///  Filter bits
                FD13: u1,
                ///  Filter bits
                FD14: u1,
                ///  Filter bits
                FD15: u1,
                ///  Filter bits
                FD16: u1,
                ///  Filter bits
                FD17: u1,
                ///  Filter bits
                FD18: u1,
                ///  Filter bits
                FD19: u1,
                ///  Filter bits
                FD20: u1,
                ///  Filter bits
                FD21: u1,
                ///  Filter bits
                FD22: u1,
                ///  Filter bits
                FD23: u1,
                ///  Filter bits
                FD24: u1,
                ///  Filter bits
                FD25: u1,
                ///  Filter bits
                FD26: u1,
                ///  Filter bits
                FD27: u1,
                ///  Filter bits
                FD28: u1,
                ///  Filter bits
                FD29: u1,
                ///  Filter bits
                FD30: u1,
                ///  Filter bits
                FD31: u1,
            }),
        };

        ///  USB on the go high speed device
        pub const HS_DEVICE = extern struct {
            ///  device configuration register (DCFG)
            DCFG: mmio.Mmio(packed struct(u32) {
                ///  Device speed
                DS: u2,
                ///  Non-zero-length status OUT handshake
                NZLSOH: u1,
                reserved4: u1,
                ///  Device address
                DAR: u7,
                ///  end of periodic frame time
                EOPFT: u2,
                padding: u19,
            }),
            ///  device control register (DCTL)
            DCTL: mmio.Mmio(packed struct(u32) {
                ///  Remote wakeup signaling
                RWKUP: u1,
                ///  Soft disconnect
                SD: u1,
                ///  Global IN NAK status
                GINS: u1,
                ///  Global OUT NAK status
                GONS: u1,
                reserved7: u3,
                ///  Set global IN NAK
                SGINAK: u1,
                ///  Clear global IN NAK
                CGINAK: u1,
                ///  Set global OUT NAK
                SGONAK: u1,
                ///  Clear global OUT NAK
                CGONAK: u1,
                ///  Power-on initialization finished
                POIF: u1,
                padding: u20,
            }),
            ///  device status register (DSTAT)
            DSTAT: mmio.Mmio(packed struct(u32) {
                ///  Suspend status
                SPST: u1,
                ///  Enumerated speed
                ES: u2,
                reserved8: u5,
                ///  Frame number of the received SOF
                FNRSOF: u14,
                padding: u10,
            }),
            reserved16: [4]u8,
            ///  device IN endpoint common interrupt mask register (DIEPINTEN)
            DIEPINTEN: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed interrupt enable
                TFEN: u1,
                ///  Endpoint disabled interrupt enable
                EPDISEN: u1,
                reserved3: u1,
                ///  Control IN timeout condition interrupt enable (Non-isochronous endpoints)
                CITOEN: u1,
                ///  Endpoint Tx FIFO underrun interrupt enable bit
                EPTXFUDEN: u1,
                reserved6: u1,
                ///  IN endpoint NAK effective interrupt enable
                IEPNEEN: u1,
                ///  Trabsmit FIFO empty interrupt enable
                TXFEEN: u1,
                reserved13: u5,
                ///  NAK handshake sent by USBHS interrupt enable bit
                NAKEN: u1,
                padding: u18,
            }),
            ///  device OUT endpoint common interrupt enable register (DOEPINTEN)
            DOEPINTEN: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed interrupt enable
                TFEN: u1,
                ///  Endpoint disabled interrupt enable
                EPDISEN: u1,
                reserved3: u1,
                ///  SETUP phase done interrupt enable
                STPFEN: u1,
                ///  Endpoint Rx FIFO overrun interrupt enable
                EPRXFOVREN: u1,
                reserved6: u1,
                ///  Back-to-back SETUP packets ( Only for control OUT endpoint) interrupt enable bit
                BTBSTPEN: u1,
                reserved14: u7,
                ///  NYET handshake is sent interrupt enable
                NYETEN: u1,
                padding: u17,
            }),
            ///  device all endpoints interrupt register (DAEPINT)
            DAEPINT: mmio.Mmio(packed struct(u32) {
                ///  Device all IN endpoint interrupt bits
                IEPITB: u6,
                reserved16: u10,
                ///  Device all OUT endpoint interrupt bits
                OEPITB: u6,
                padding: u10,
            }),
            ///  Device all endpoints interrupt enable register (DAEPINTEN)
            DAEPINTEN: mmio.Mmio(packed struct(u32) {
                ///  IN endpoint interrupt enable bits
                IEPIE: u6,
                reserved16: u10,
                ///  OUT endpoint interrupt enable bits
                OEPIE: u6,
                padding: u10,
            }),
            reserved40: [8]u8,
            ///  device VBUS discharge time register
            DVBUSDT: mmio.Mmio(packed struct(u32) {
                ///  Device VBUS discharge time
                DVBUSDT: u16,
                padding: u16,
            }),
            ///  device VBUS pulsing time register
            DVBUSPT: mmio.Mmio(packed struct(u32) {
                ///  Device VBUS pulsing time
                DVBUSPT: u12,
                padding: u20,
            }),
            reserved52: [4]u8,
            ///  device IN endpoint FIFO empty interrupt enable register
            DIEPFEINTEN: mmio.Mmio(packed struct(u32) {
                ///  IN EP Tx FIFO empty interrupt enable bits
                IEPTXFEIE: u6,
                padding: u26,
            }),
            ///  device endpoint 1 interrupt register
            DEP1INT: mmio.Mmio(packed struct(u32) {
                reserved1: u1,
                ///  IN endpoint 1 interrupt bits
                IEP1INT: u1,
                reserved17: u15,
                ///  OUT endpoint 1 interrupt bits
                OEP1INT: u1,
                padding: u14,
            }),
            ///  device endpoint 1 interrupt enable register
            DEP1INTEN: mmio.Mmio(packed struct(u32) {
                reserved1: u1,
                ///  IN endpoint 1 interrupt enable bits
                IEP1INTEN: u1,
                reserved17: u15,
                ///  OUT endpoint 1 interrupt enable bits
                OEP1INTEN: u1,
                padding: u14,
            }),
            reserved68: [4]u8,
            ///  device IN endpoint 1 interrupt mask register (DIEP1INTEN)
            DIEP1INTEN: mmio.Mmio(packed struct(u32) {
                ///  Transfer finished interrupt enable
                TFEN: u1,
                ///  Endpoint disabled interrupt enable
                EPDISEN: u1,
                reserved3: u1,
                ///  Control IN timeout condition interrupt enable (Non-isochronous endpoints)
                CITOEN: u1,
                ///  Endpoint Tx FIFO underrun interrupt enable bit
                EPTXFUDEN: u1,
                reserved6: u1,
                ///  IN endpoint NAK effective interrupt enable
                IEPNEEN: u1,
                reserved13: u6,
                ///  NAK handshake sent by USBHS interrupt enable bit
                NAKEN: u1,
                padding: u18,
            }),
            reserved132: [60]u8,
            ///  device OUT endpoint common interrupt enable register (DOEP1INTEN)
            DOEP1INTEN: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed interrupt enable
                TFEN: u1,
                ///  Endpoint disabled interrupt enable
                EPDISEN: u1,
                reserved3: u1,
                ///  SETUP phase done interrupt enable
                STPFEN: u1,
                ///  Endpoint Rx FIFO overrun interrupt enable
                EPRXFOVREN: u1,
                reserved6: u1,
                ///  Back-to-back SETUP packets ( Only for control OUT endpoint) interrupt enable bit
                BTBSTPEN: u1,
                reserved14: u7,
                ///  NYET handshake is sent interrupt enable bit
                NYETEN: u1,
                padding: u17,
            }),
            reserved256: [120]u8,
            ///  Device IN endpoint 0 control register (USBHS_DIEP0CTL)
            DIEP0CTL: mmio.Mmio(packed struct(u32) {
                ///  Maximum packet length
                MPL: u2,
                reserved15: u13,
                ///  endpoint active
                EPACT: u1,
                reserved17: u1,
                ///  NAK status
                NAKS: u1,
                ///  Endpoint type
                EPTYPE: u2,
                reserved21: u1,
                ///  STALL handshake
                STALL: u1,
                ///  TxFIFO number
                TXFNUM: u4,
                ///  Clear NAK
                CNAK: u1,
                ///  Set NAK
                SNAK: u1,
                reserved30: u2,
                ///  Endpoint disable
                EPD: u1,
                ///  Endpoint enable
                EPEN: u1,
            }),
            reserved264: [4]u8,
            ///  Device IN endpoint-0 interrupt register
            DIEP0INTF: mmio.Mmio(packed struct(u32) {
                ///  Transfer finished
                TF: u1,
                ///  Endpoint finished
                EPDIS: u1,
                reserved3: u1,
                ///  Control in timeout interrupt
                CITO: u1,
                ///  Endpoint Tx FIFO underrun
                EPTXFUD: u1,
                reserved6: u1,
                ///  IN endpoint NAK effective
                IEPNE: u1,
                ///  Transmit FIFO empty
                TXFE: u1,
                reserved13: u5,
                ///  NAK handshake sent by USBHS
                NAK: u1,
                padding: u18,
            }),
            reserved272: [4]u8,
            ///  device IN endpoint-0 transfer length register
            DIEP0LEN: mmio.Mmio(packed struct(u32) {
                ///  Transfer length
                TLEN: u7,
                reserved19: u12,
                ///  Packet count
                PCNT: u2,
                padding: u11,
            }),
            ///  device IN endpoint 0 DMA address register
            DIEP0DMAADDR: mmio.Mmio(packed struct(u32) {
                ///  DMA address
                DMAADDR: u32,
            }),
            ///  device IN endpoint 0 transmit FIFO status register
            DIEP0TFSTAT: mmio.Mmio(packed struct(u32) {
                ///  IN endpoint TxFIFO space available
                IEPTFS: u16,
                padding: u16,
            }),
            reserved288: [4]u8,
            ///  Device IN endpoint-x control register
            DIEP1CTL: mmio.Mmio(packed struct(u32) {
                ///  maximum packet length
                MPL: u11,
                reserved15: u4,
                ///  Endpoint active
                EPACT: u1,
                ///  EOFRM/DPID
                EOFRM_DPID: u1,
                ///  NAK status
                NAKS: u1,
                ///  Endpoint type
                EPTYPE: u2,
                reserved21: u1,
                ///  STALL handshake
                STALL: u1,
                ///  Tx FIFO number
                TXFNUM: u4,
                ///  Clear NAK
                CNAK: u1,
                ///  Set NAK
                SNAK: u1,
                ///  SD0PID/SEVNFRM
                SD0PID_SEVENFRM: u1,
                ///  Set DATA1 PID/Set odd frame
                SD1PID_SODDFRM: u1,
                ///  Endpoint disable
                EPD: u1,
                ///  Endpoint enable
                EPEN: u1,
            }),
            reserved296: [4]u8,
            ///  Device IN endpoint-1 interrupt register
            DIEP1INTF: mmio.Mmio(packed struct(u32) {
                ///  Transfer finished
                TF: u1,
                ///  Endpoint finished
                EPDIS: u1,
                reserved3: u1,
                ///  Control in timeout interrupt
                CITO: u1,
                ///  Endpoint Tx FIFO underrun
                EPTXFUD: u1,
                reserved6: u1,
                ///  IN endpoint NAK effective
                IEPNE: u1,
                ///  Transmit FIFO empty
                TXFE: u1,
                reserved13: u5,
                ///  NAK handshake sent by USBHS
                NAK: u1,
                padding: u18,
            }),
            reserved304: [4]u8,
            ///  device IN endpoint-1 transfer length register
            DIEP1LEN: mmio.Mmio(packed struct(u32) {
                ///  Transfer length
                TLEN: u19,
                ///  Packet count
                PCNT: u10,
                ///  Multi count
                MCNT: u2,
                padding: u1,
            }),
            ///  device IN endpoint 1 DMA address register
            DIEP1DMAADDR: mmio.Mmio(packed struct(u32) {
                ///  DMA address
                DMAADDR: u32,
            }),
            ///  device IN endpoint 1 transmit FIFO status register
            DIEP1TFSTAT: mmio.Mmio(packed struct(u32) {
                ///  IN endpoint TxFIFO space available
                IEPTFS: u16,
                padding: u16,
            }),
            reserved320: [4]u8,
            ///  device endpoint-2 control register
            DIEP2CTL: mmio.Mmio(packed struct(u32) {
                ///  maximum packet length
                MPL: u11,
                reserved15: u4,
                ///  Endpoint active
                EPACT: u1,
                ///  EOFRM/DPID
                EOFRM_DPID: u1,
                ///  NAK status
                NAKS: u1,
                ///  Endpoint type
                EPTYPE: u2,
                reserved21: u1,
                ///  STALL handshake
                STALL: u1,
                ///  Tx FIFO number
                TXFNUM: u4,
                ///  Clear NAK
                CNAK: u1,
                ///  Set NAK
                SNAK: u1,
                ///  SD0PID/SEVNFRM
                SD0PID_SEVENFRM: u1,
                ///  Set DATA1 PID/Set odd frame
                SD1PID_SODDFRM: u1,
                ///  Endpoint disable
                EPD: u1,
                ///  Endpoint enable
                EPEN: u1,
            }),
            reserved328: [4]u8,
            ///  Device IN endpoint-2 interrupt register
            DIEP2INTF: mmio.Mmio(packed struct(u32) {
                ///  Transfer finished
                TF: u1,
                ///  Endpoint finished
                EPDIS: u1,
                reserved3: u1,
                ///  Control in timeout interrupt
                CITO: u1,
                ///  Endpoint Tx FIFO underrun
                EPTXFUD: u1,
                reserved6: u1,
                ///  IN endpoint NAK effective
                IEPNE: u1,
                ///  Transmit FIFO empty
                TXFE: u1,
                reserved13: u5,
                ///  NAK handshake sent by USBHS
                NAK: u1,
                padding: u18,
            }),
            reserved336: [4]u8,
            ///  device IN endpoint-2 transfer length register
            DIEP2LEN: mmio.Mmio(packed struct(u32) {
                ///  Transfer length
                TLEN: u19,
                ///  Packet count
                PCNT: u10,
                ///  Multi count
                MCNT: u2,
                padding: u1,
            }),
            ///  device IN endpoint 2 DMA address register
            DIEP2DMAADDR: mmio.Mmio(packed struct(u32) {
                ///  DMA address
                DMAADDR: u32,
            }),
            ///  device IN endpoint 2 transmit FIFO status register
            DIEP2TFSTAT: mmio.Mmio(packed struct(u32) {
                ///  IN endpoint TxFIFO space available
                IEPTFS: u16,
                padding: u16,
            }),
            reserved352: [4]u8,
            ///  device endpoint-3 control register
            DIEP3CTL: mmio.Mmio(packed struct(u32) {
                ///  maximum packet length
                MPL: u11,
                reserved15: u4,
                ///  Endpoint active
                EPACT: u1,
                ///  EOFRM/DPID
                EOFRM_DPID: u1,
                ///  NAK status
                NAKS: u1,
                ///  Endpoint type
                EPTYPE: u2,
                reserved21: u1,
                ///  STALL handshake
                STALL: u1,
                ///  Tx FIFO number
                TXFNUM: u4,
                ///  Clear NAK
                CNAK: u1,
                ///  Set NAK
                SNAK: u1,
                ///  SD0PID/SEVNFRM
                SD0PID_SEVENFRM: u1,
                ///  Set DATA1 PID/Set odd frame
                SD1PID_SODDFRM: u1,
                ///  Endpoint disable
                EPD: u1,
                ///  Endpoint enable
                EPEN: u1,
            }),
            reserved360: [4]u8,
            ///  Device IN endpoint-3 interrupt register
            DIEP3INTF: mmio.Mmio(packed struct(u32) {
                ///  Transfer finished
                TF: u1,
                ///  Endpoint finished
                EPDIS: u1,
                reserved3: u1,
                ///  Control in timeout interrupt
                CITO: u1,
                ///  Endpoint Tx FIFO underrun
                EPTXFUD: u1,
                reserved6: u1,
                ///  IN endpoint NAK effective
                IEPNE: u1,
                ///  Transmit FIFO empty
                TXFE: u1,
                reserved13: u5,
                ///  NAK handshake sent by USBHS
                NAK: u1,
                padding: u18,
            }),
            reserved368: [4]u8,
            ///  device IN endpoint-3 transfer length register
            DIEP3LEN: mmio.Mmio(packed struct(u32) {
                ///  Transfer length
                TLEN: u19,
                ///  Packet count
                PCNT: u10,
                ///  Multi count
                MCNT: u2,
                padding: u1,
            }),
            ///  device IN endpoint 3 DMA address register
            DIEP3DMAADDR: mmio.Mmio(packed struct(u32) {
                ///  DMA address
                DMAADDR: u32,
            }),
            ///  device IN endpoint 3 transmit FIFO status register
            DIEP3TFSTAT: mmio.Mmio(packed struct(u32) {
                ///  IN endpoint TxFIFO space available
                IEPTFS: u16,
                padding: u16,
            }),
            reserved384: [4]u8,
            ///  device endpoint-4 control register
            DIEP4CTL: mmio.Mmio(packed struct(u32) {
                ///  maximum packet length
                MPL: u11,
                reserved15: u4,
                ///  Endpoint active
                EPACT: u1,
                ///  EOFRM/DPID
                EOFRM_DPID: u1,
                ///  NAK status
                NAKS: u1,
                ///  Endpoint type
                EPTYPE: u2,
                reserved21: u1,
                ///  STALL handshake
                STALL: u1,
                ///  Tx FIFO number
                TXFNUM: u4,
                ///  Clear NAK
                CNAK: u1,
                ///  Set NAK
                SNAK: u1,
                ///  SD0PID/SEVNFRM
                SD0PID_SEVENFRM: u1,
                ///  Set DATA1 PID/Set odd frame
                SD1PID_SODDFRM: u1,
                ///  Endpoint disable
                EPD: u1,
                ///  Endpoint enable
                EPEN: u1,
            }),
            reserved392: [4]u8,
            ///  Device IN endpoint-4 interrupt register
            DIEP4INTF: mmio.Mmio(packed struct(u32) {
                ///  Transfer finished
                TF: u1,
                ///  Endpoint finished
                EPDIS: u1,
                reserved3: u1,
                ///  Control in timeout interrupt
                CITO: u1,
                ///  Endpoint Tx FIFO underrun
                EPTXFUD: u1,
                reserved6: u1,
                ///  IN endpoint NAK effective
                IEPNE: u1,
                ///  Transmit FIFO empty
                TXFE: u1,
                reserved13: u5,
                ///  NAK handshake sent by USBHS
                NAK: u1,
                padding: u18,
            }),
            reserved400: [4]u8,
            ///  device IN endpoint-4 transfer length register
            DIEP4LEN: mmio.Mmio(packed struct(u32) {
                ///  Transfer length
                TLEN: u19,
                ///  Packet count
                PCNT: u10,
                ///  Multi count
                MCNT: u2,
                padding: u1,
            }),
            ///  device IN endpoint 4 DMA address register
            DIEP4DMAADDR: mmio.Mmio(packed struct(u32) {
                ///  DMA address
                DMAADDR: u32,
            }),
            ///  device IN endpoint 4 transmit FIFO status register
            DIEP4TFSTAT: mmio.Mmio(packed struct(u32) {
                ///  IN endpoint TxFIFO space available
                IEPTFS: u16,
                padding: u16,
            }),
            reserved416: [4]u8,
            ///  device endpoint-5 control register
            DIEP5CTL: mmio.Mmio(packed struct(u32) {
                ///  maximum packet length
                MPL: u11,
                reserved15: u4,
                ///  Endpoint active
                EPACT: u1,
                ///  EOFRM/DPID
                EOFRM_DPID: u1,
                ///  NAK status
                NAKS: u1,
                ///  Endpoint type
                EPTYPE: u2,
                reserved21: u1,
                ///  STALL handshake
                STALL: u1,
                ///  Tx FIFO number
                TXFNUM: u4,
                ///  Clear NAK
                CNAK: u1,
                ///  Set NAK
                SNAK: u1,
                ///  SD0PID/SEVNFRM
                SD0PID_SEVENFRM: u1,
                ///  Set DATA1 PID/Set odd frame
                SD1PID_SODDFRM: u1,
                ///  Endpoint disable
                EPD: u1,
                ///  Endpoint enable
                EPEN: u1,
            }),
            reserved424: [4]u8,
            ///  Device IN endpoint-5 interrupt register
            DIEP5INTF: mmio.Mmio(packed struct(u32) {
                ///  Transfer finished
                TF: u1,
                ///  Endpoint finished
                EPDIS: u1,
                reserved3: u1,
                ///  Control in timeout interrupt
                CITO: u1,
                ///  Endpoint Tx FIFO underrun
                EPTXFUD: u1,
                reserved6: u1,
                ///  IN endpoint NAK effective
                IEPNE: u1,
                ///  Transmit FIFO empty
                TXFE: u1,
                reserved13: u5,
                ///  NAK handshake sent by USBHS
                NAK: u1,
                padding: u18,
            }),
            reserved432: [4]u8,
            ///  device IN endpoint-5 transfer length register
            DIEP5LEN: mmio.Mmio(packed struct(u32) {
                ///  Transfer length
                TLEN: u19,
                ///  Packet count
                PCNT: u10,
                ///  Multi count
                MCNT: u2,
                padding: u1,
            }),
            ///  device IN endpoint 5 DMA address register
            DIEP5DMAADDR: mmio.Mmio(packed struct(u32) {
                ///  DMA address
                DMAADDR: u32,
            }),
            ///  device IN endpoint 5 transmit FIFO status register
            DIEP5TFSTAT: mmio.Mmio(packed struct(u32) {
                ///  IN endpoint TxFIFO space available
                IEPTFS: u16,
                padding: u16,
            }),
            reserved768: [324]u8,
            ///  Device OUT endpoint-0 control register
            DOEP0CTL: mmio.Mmio(packed struct(u32) {
                ///  Maximum packet length
                MPL: u2,
                reserved15: u13,
                ///  Endpoint active
                EPACT: u1,
                reserved17: u1,
                ///  NAK status
                NAKS: u1,
                ///  Endpoint type
                EPTYPE: u2,
                ///  Snoop mode
                SNOOP: u1,
                ///  STALL handshake
                STALL: u1,
                reserved26: u4,
                ///  Clear NAK
                CNAK: u1,
                ///  Set NAK
                SNAK: u1,
                reserved30: u2,
                ///  Endpoint disable
                EPD: u1,
                ///  Endpoint enable
                EPEN: u1,
            }),
            reserved776: [4]u8,
            ///  device out endpoint-0 interrupt register
            DOEP0INTF: mmio.Mmio(packed struct(u32) {
                ///  Transfer finished
                TF: u1,
                ///  Endpoint disabled
                EPDIS: u1,
                reserved3: u1,
                ///  Setup phase finished
                STPF: u1,
                ///  Endpoint Rx FIFO overrun
                EPRXFOVR: u1,
                reserved6: u1,
                ///  Back-to-back SETUP packets
                BTBSTP: u1,
                reserved14: u7,
                ///  NYET handshake is sent
                NYET: u1,
                padding: u17,
            }),
            reserved784: [4]u8,
            ///  device OUT endpoint-0 transfer length register
            DOEP0LEN: mmio.Mmio(packed struct(u32) {
                ///  Transfer length
                TLEN: u7,
                reserved19: u12,
                ///  Packet count
                PCNT: u1,
                reserved29: u9,
                ///  SETUP packet count
                STPCNT: u2,
                padding: u1,
            }),
            ///  device OUT endpoint 0 DMA address register
            DOEP0DMAADDR: mmio.Mmio(packed struct(u32) {
                ///  DMA address
                DMAADDR: u32,
            }),
            reserved800: [8]u8,
            ///  Device OUT endpoint-1 control register
            DOEP1CTL: mmio.Mmio(packed struct(u32) {
                ///  maximum packet length
                MPL: u11,
                reserved15: u4,
                ///  Endpoint active
                EPACT: u1,
                ///  EOFRM/DPID
                EOFRM_DPID: u1,
                ///  NAK status
                NAKS: u1,
                ///  Endpoint type
                EPTYPE: u2,
                ///  Snoop mode
                SNOOP: u1,
                ///  STALL handshake
                STALL: u1,
                reserved26: u4,
                ///  Clear NAK
                CNAK: u1,
                ///  Set NAK
                SNAK: u1,
                ///  SD0PID/SEVENFRM
                SD0PID_SEVENFRM: u1,
                ///  SD1PID/SODDFRM
                SD1PID_SODDFRM: u1,
                ///  Endpoint disable
                EPD: u1,
                ///  Endpoint enable
                EPEN: u1,
            }),
            reserved808: [4]u8,
            ///  device out endpoint-1 interrupt register
            DOEP1INTF: mmio.Mmio(packed struct(u32) {
                ///  Transfer finished
                TF: u1,
                ///  Endpoint disabled
                EPDIS: u1,
                reserved3: u1,
                ///  Setup phase finished
                STPF: u1,
                ///  Endpoint Rx FIFO overrun
                EPRXFOVR: u1,
                reserved6: u1,
                ///  Back-to-back SETUP packets
                BTBSTP: u1,
                reserved14: u7,
                ///  NYET handshake is sent
                NYET: u1,
                padding: u17,
            }),
            reserved816: [4]u8,
            ///  device OUT endpoint-1 transfer length register
            DOEP1LEN: mmio.Mmio(packed struct(u32) {
                ///  Transfer length
                TLEN: u19,
                ///  Packet count
                PCNT: u10,
                ///  SETUP packet count/Received data PID
                STPCNT_RXDPID: u2,
                padding: u1,
            }),
            ///  device OUT endpoint 1 DMA address register
            DOEP1DMAADDR: mmio.Mmio(packed struct(u32) {
                ///  DMA address
                DMAADDR: u32,
            }),
            reserved832: [8]u8,
            ///  Device OUT endpoint-2 control register
            DOEP2CTL: mmio.Mmio(packed struct(u32) {
                ///  maximum packet length
                MPL: u11,
                reserved15: u4,
                ///  Endpoint active
                EPACT: u1,
                ///  EOFRM/DPID
                EOFRM_DPID: u1,
                ///  NAK status
                NAKS: u1,
                ///  Endpoint type
                EPTYPE: u2,
                ///  Snoop mode
                SNOOP: u1,
                ///  STALL handshake
                STALL: u1,
                reserved26: u4,
                ///  Clear NAK
                CNAK: u1,
                ///  Set NAK
                SNAK: u1,
                ///  SD0PID/SEVENFRM
                SD0PID_SEVENFRM: u1,
                ///  SD1PID/SODDFRM
                SD1PID_SODDFRM: u1,
                ///  Endpoint disable
                EPD: u1,
                ///  Endpoint enable
                EPEN: u1,
            }),
            reserved840: [4]u8,
            ///  device out endpoint-2 interrupt register
            DOEP2INTF: mmio.Mmio(packed struct(u32) {
                ///  Transfer finished
                TF: u1,
                ///  Endpoint disabled
                EPDIS: u1,
                reserved3: u1,
                ///  Setup phase finished
                STPF: u1,
                ///  Endpoint Rx FIFO overrun
                EPRXFOVR: u1,
                reserved6: u1,
                ///  Back-to-back SETUP packets
                BTBSTP: u1,
                reserved14: u7,
                ///  NYET handshake is sent
                NYET: u1,
                padding: u17,
            }),
            reserved848: [4]u8,
            ///  device OUT endpoint-2 transfer length register
            DOEP2LEN: mmio.Mmio(packed struct(u32) {
                ///  Transfer length
                TLEN: u19,
                ///  Packet count
                PCNT: u10,
                ///  SETUP packet count/Received data PID
                STPCNT_RXDPID: u2,
                padding: u1,
            }),
            ///  device OUT endpoint 2 DMA address register
            DOEP2DMAADDR: mmio.Mmio(packed struct(u32) {
                ///  DMA address
                DMAADDR: u32,
            }),
            reserved864: [8]u8,
            ///  Device OUT endpoint-3 control register
            DOEP3CTL: mmio.Mmio(packed struct(u32) {
                ///  maximum packet length
                MPL: u11,
                reserved15: u4,
                ///  Endpoint active
                EPACT: u1,
                ///  EOFRM/DPID
                EOFRM_DPID: u1,
                ///  NAK status
                NAKS: u1,
                ///  Endpoint type
                EPTYPE: u2,
                ///  Snoop mode
                SNOOP: u1,
                ///  STALL handshake
                STALL: u1,
                reserved26: u4,
                ///  Clear NAK
                CNAK: u1,
                ///  Set NAK
                SNAK: u1,
                ///  SD0PID/SEVENFRM
                SD0PID_SEVENFRM: u1,
                ///  SD1PID/SODDFRM
                SD1PID_SODDFRM: u1,
                ///  Endpoint disable
                EPD: u1,
                ///  Endpoint enable
                EPEN: u1,
            }),
            reserved872: [4]u8,
            ///  device out endpoint-3 interrupt register
            DOEP3INTF: mmio.Mmio(packed struct(u32) {
                ///  Transfer finished
                TF: u1,
                ///  Endpoint disabled
                EPDIS: u1,
                reserved3: u1,
                ///  Setup phase finished
                STPF: u1,
                ///  Endpoint Rx FIFO overrun
                EPRXFOVR: u1,
                reserved6: u1,
                ///  Back-to-back SETUP packets
                BTBSTP: u1,
                reserved14: u7,
                ///  NYET handshake is sent
                NYET: u1,
                padding: u17,
            }),
            reserved880: [4]u8,
            ///  device OUT endpoint-3 transfer length register
            DOEP3LEN: mmio.Mmio(packed struct(u32) {
                ///  Transfer length
                TLEN: u19,
                ///  Packet count
                PCNT: u10,
                ///  SETUP packet count/Received data PID
                STPCNT_RXDPID: u2,
                padding: u1,
            }),
            ///  device OUT endpoint 3 DMA address register
            DOEP3DMAADDR: mmio.Mmio(packed struct(u32) {
                ///  DMA address
                DMAADDR: u32,
            }),
            reserved896: [8]u8,
            ///  Device OUT endpoint-4 control register
            DOEP4CTL: mmio.Mmio(packed struct(u32) {
                ///  maximum packet length
                MPL: u11,
                reserved15: u4,
                ///  Endpoint active
                EPACT: u1,
                ///  EOFRM/DPID
                EOFRM_DPID: u1,
                ///  NAK status
                NAKS: u1,
                ///  Endpoint type
                EPTYPE: u2,
                ///  Snoop mode
                SNOOP: u1,
                ///  STALL handshake
                STALL: u1,
                reserved26: u4,
                ///  Clear NAK
                CNAK: u1,
                ///  Set NAK
                SNAK: u1,
                ///  SD0PID/SEVENFRM
                SD0PID_SEVENFRM: u1,
                ///  SD1PID/SODDFRM
                SD1PID_SODDFRM: u1,
                ///  Endpoint disable
                EPD: u1,
                ///  Endpoint enable
                EPEN: u1,
            }),
            reserved904: [4]u8,
            ///  device out endpoint-4 interrupt register
            DOEP4INTF: mmio.Mmio(packed struct(u32) {
                ///  Transfer finished
                TF: u1,
                ///  Endpoint disabled
                EPDIS: u1,
                reserved3: u1,
                ///  Setup phase finished
                STPF: u1,
                ///  Endpoint Rx FIFO overrun
                EPRXFOVR: u1,
                reserved6: u1,
                ///  Back-to-back SETUP packets
                BTBSTP: u1,
                reserved14: u7,
                ///  NYET handshake is sent
                NYET: u1,
                padding: u17,
            }),
            reserved912: [4]u8,
            ///  device OUT endpoint-4 transfer length register
            DOEP4LEN: mmio.Mmio(packed struct(u32) {
                ///  Transfer length
                TLEN: u19,
                ///  Packet count
                PCNT: u10,
                ///  SETUP packet count/Received data PID
                STPCNT_RXDPID: u2,
                padding: u1,
            }),
            ///  device OUT endpoint 4 DMA address register
            DOEP4DMAADDR: mmio.Mmio(packed struct(u32) {
                ///  DMA address
                DMAADDR: u32,
            }),
            reserved928: [8]u8,
            ///  Device OUT endpoint-5 control register
            DOEP5CTL: mmio.Mmio(packed struct(u32) {
                ///  maximum packet length
                MPL: u11,
                reserved15: u4,
                ///  Endpoint active
                EPACT: u1,
                ///  EOFRM/DPID
                EOFRM_DPID: u1,
                ///  NAK status
                NAKS: u1,
                ///  Endpoint type
                EPTYPE: u2,
                ///  Snoop mode
                SNOOP: u1,
                ///  STALL handshake
                STALL: u1,
                reserved26: u4,
                ///  Clear NAK
                CNAK: u1,
                ///  Set NAK
                SNAK: u1,
                ///  SD0PID/SEVENFRM
                SD0PID_SEVENFRM: u1,
                ///  SD1PID/SODDFRM
                SD1PID_SODDFRM: u1,
                ///  Endpoint disable
                EPD: u1,
                ///  Endpoint enable
                EPEN: u1,
            }),
            reserved936: [4]u8,
            ///  device out endpoint-5 interrupt register
            DOEP5INTF: mmio.Mmio(packed struct(u32) {
                ///  Transfer finished
                TF: u1,
                ///  Endpoint disabled
                EPDIS: u1,
                reserved3: u1,
                ///  Setup phase finished
                STPF: u1,
                ///  Endpoint Rx FIFO overrun
                EPRXFOVR: u1,
                reserved6: u1,
                ///  Back-to-back SETUP packets
                BTBSTP: u1,
                reserved14: u7,
                ///  NYET handshake is sent
                NYET: u1,
                padding: u17,
            }),
            reserved944: [4]u8,
            ///  device OUT endpoint-5 transfer length register
            DOEP5LEN: mmio.Mmio(packed struct(u32) {
                ///  Transfer length
                TLEN: u19,
                ///  Packet count
                PCNT: u10,
                ///  SETUP packet count/Received data PID
                STPCNT_RXDPID: u2,
                padding: u1,
            }),
            ///  device OUT endpoint 5 DMA address register
            DOEP5DMAADDR: mmio.Mmio(packed struct(u32) {
                ///  DMA address
                DMAADDR: u32,
            }),
        };

        ///  cyclic redundancy check calculation unit
        pub const CRC = extern struct {
            ///  Data register
            DATA: mmio.Mmio(packed struct(u32) {
                ///  CRC calculation result bits
                DATA: u32,
            }),
            ///  Free data register
            FDATA: mmio.Mmio(packed struct(u32) {
                ///  Free Data Register bits
                FDATA: u8,
                padding: u24,
            }),
            ///  Control register
            CTL: mmio.Mmio(packed struct(u32) {
                ///  reset bit
                RST: u1,
                padding: u31,
            }),
        };

        ///  Clock trim controller
        pub const CTC = extern struct {
            ///  Control register 0
            CTL0: mmio.Mmio(packed struct(u32) {
                ///  Clock trim ok interrupt enable
                CKOKIE: u1,
                ///  Clock trim warning interrupt enable
                CKWARNIE: u1,
                ///  Error interrupt enable
                ERRIE: u1,
                ///  EREFIF interrupt enable
                EREFIE: u1,
                reserved5: u1,
                ///  CTC counter enable
                CNTEN: u1,
                ///  Hardware automatically trim mode
                AUTOTRIM: u1,
                ///  Software reference source sync pulse
                SWREFPUL: u1,
                ///  IRC48M trim value
                TRIMVALUE: u6,
                padding: u18,
            }),
            ///  Control register 1
            CTL1: mmio.Mmio(packed struct(u32) {
                ///  CTC counter reload value
                RLVALUE: u16,
                ///  Clock trim base limit value
                CKLIM: u8,
                ///  Reference signal source prescaler
                REFPSC: u3,
                reserved28: u1,
                ///  Reference signal source selection
                REFSEL: u2,
                ///  SOF signal selection
                USBSOFSEL: u1,
                ///  Reference signal source polarity
                REFPOL: u1,
            }),
            ///  Status register
            STAT: mmio.Mmio(packed struct(u32) {
                ///  Clock trim OK interrupt flag
                CKOKIF: u1,
                ///  Clock trim warning interrupt flag
                CKWARNIF: u1,
                ///  Error interrupt flag
                ERRIF: u1,
                ///  Expect reference interrupt flag
                EREFIF: u1,
                reserved8: u4,
                ///  Clock trim error bit
                CKERR: u1,
                ///  Reference sync pulse miss
                REFMISS: u1,
                ///  Trim value error bit
                TRIMERR: u1,
                reserved15: u4,
                ///  CTC trim counter direction when reference sync pulse
                REFDIR: u1,
                ///  CTC counter capture when reference sync pulse
                REFCAP: u16,
            }),
            ///  Interrupt clear register
            INTC: mmio.Mmio(packed struct(u32) {
                ///  CKOKIF interrupt clear bit
                CKOKIC: u1,
                ///  CKWARNIF interrupt clear bit
                CKWARNIC: u1,
                ///  ERRIF interrupt clear bit
                ERRIC: u1,
                ///  EREFIF interrupt clear bit
                EREFIC: u1,
                padding: u28,
            }),
        };

        ///  Digital-to-analog converter
        pub const DAC = extern struct {
            ///  control register
            CTL: mmio.Mmio(packed struct(u32) {
                ///  DAC0 enable
                DEN0: u1,
                ///  DAC0 output buffer turn off
                DBOFF0: u1,
                ///  DAC0 trigger enable
                DTEN0: u1,
                ///  DAC0 trigger selection
                DTSEL0: u3,
                ///  DAC0 noise wave mode
                DWM0: u2,
                ///  DAC0 noise wave bit width
                DWBW0: u4,
                ///  DAC0 DMA enable
                DDMAEN0: u1,
                ///  DAC0 DMA Underrun Interrupt enable
                DDUDRIE0: u1,
                reserved16: u2,
                ///  DAC1 enable
                DEN1: u1,
                ///  DAC1 output buffer turn off
                DBOFF1: u1,
                ///  DAC1 trigger enable
                DTEN1: u1,
                ///  DAC1 trigger selection
                DTSEL1: u3,
                ///  DAC1 noise wave mode
                DWM1: u2,
                ///  DAC1 noise wave bit width
                DWBW1: u4,
                ///  DAC1 DMA enable
                DDMAEN1: u1,
                ///  DAC1 DMA Underrun Interrupt enable
                DDUDRIE1: u1,
                padding: u2,
            }),
            ///  software trigger register
            SWT: mmio.Mmio(packed struct(u32) {
                ///  DAC0 software trigger
                SWTR0: u1,
                ///  DAC1 software trigger
                SWTR1: u1,
                padding: u30,
            }),
            ///  DAC0 12-bit right-aligned data holding register
            DAC0_R12DH: mmio.Mmio(packed struct(u32) {
                ///  DAC0 12-bit right-aligned data
                DAC0_DH: u12,
                padding: u20,
            }),
            ///  DAC0 12-bit left-aligned data holding register
            DAC0_L12DH: mmio.Mmio(packed struct(u32) {
                reserved4: u4,
                ///  DAC0 12-bit left-aligned data
                DAC0_DH: u12,
                padding: u16,
            }),
            ///  DAC0 8-bit right aligned data holding register
            DAC0_R8DH: mmio.Mmio(packed struct(u32) {
                ///  DAC0 8-bit right-aligned data
                DAC0_DH: u8,
                padding: u24,
            }),
            ///  DAC1 12-bit right-aligned data holding register
            DAC1_R12DH: mmio.Mmio(packed struct(u32) {
                ///  DAC1 12-bit right-aligned data
                DAC1_DH: u12,
                padding: u20,
            }),
            ///  DAC1 12-bit left aligned data holding register
            DAC1_L12DH: mmio.Mmio(packed struct(u32) {
                reserved4: u4,
                ///  DAC1 12-bit left-aligned data
                DAC1_DH: u12,
                padding: u16,
            }),
            ///  DAC1 8-bit right aligned data holding register
            DAC1_R8DH: mmio.Mmio(packed struct(u32) {
                ///  DAC1 8-bit right-aligned data
                DAC1_DH: u8,
                padding: u24,
            }),
            ///  DAC concurrent mode 12-bit right-aligned data holding register
            DACC_R12DH: mmio.Mmio(packed struct(u32) {
                ///  DAC0 12-bit right-aligned data
                DAC0_DH: u12,
                reserved16: u4,
                ///  DAC1 12-bit right-aligned data
                DAC1_DH: u12,
                padding: u4,
            }),
            ///  DAC concurrent mode 12-bit left aligned data holding register
            DACC_L12DH: mmio.Mmio(packed struct(u32) {
                reserved4: u4,
                ///  DAC0 12-bit left-aligned data
                DAC0_DH: u12,
                reserved20: u4,
                ///  DAC1 12-bit left-aligned data
                DAC1_DH: u12,
            }),
            ///  DAC concurrent mode 8-bit right aligned data holding register
            DACC_R8DH: mmio.Mmio(packed struct(u32) {
                ///  DAC0 8-bit right-aligned data
                DAC0_DH: u8,
                ///  DAC1 8-bit right-aligned data
                DAC1_DH: u8,
                padding: u16,
            }),
            ///  DAC0 data output register
            DAC0_DO: mmio.Mmio(packed struct(u32) {
                ///  DAC0 data output
                DAC0_DO: u12,
                padding: u20,
            }),
            ///  DAC1 data output register
            DAC1_DO: mmio.Mmio(packed struct(u32) {
                ///  DAC1 data output
                DAC1_DO: u12,
                padding: u20,
            }),
            ///  status register
            STAT: mmio.Mmio(packed struct(u32) {
                reserved13: u13,
                ///  DAC0 DMA underrun flag
                DDUDR0: u1,
                reserved29: u15,
                ///  DAC1 DMA underrun flag
                DDUDR1: u1,
                padding: u2,
            }),
        };

        ///  Debug support
        pub const DBG = extern struct {
            ///  ID code register
            ID: mmio.Mmio(packed struct(u32) {
                ///  DBG ID code register
                ID_CODE: u32,
            }),
            ///  Control register 0
            CTL0: mmio.Mmio(packed struct(u32) {
                ///  Sleep mode hold register
                SLP_HOLD: u1,
                ///  Deep-sleep mode hold register
                DSLP_HOLD: u1,
                ///  Standby mode hold register
                STB_HOLD: u1,
                reserved5: u2,
                ///  Trace pin allocation enable
                TRACE_IOEN: u1,
                ///  Trace pin allocation mode
                TRACE_MODE: u2,
                padding: u24,
            }),
            ///  Control register 1
            CTL1: mmio.Mmio(packed struct(u32) {
                ///  TIMER 1 hold register
                TIMER1_HOLD: u1,
                ///  TIMER 2 hold register
                TIMER2_HOLD: u1,
                ///  TIMER 3 hold register
                TIMER3_HOLD: u1,
                ///  TIMER 4 hold register
                TIMER4_HOLD: u1,
                ///  TIMER 5 hold register
                TIMER5_HOLD: u1,
                ///  TIMER 6 hold register
                TIMER6_HOLD: u1,
                ///  TIMER 11 hold register
                TIMER11_HOLD: u1,
                ///  TIMER 12 hold register
                TIMER12_HOLD: u1,
                ///  TIMER 13 hold register
                TIMER13_HOLD: u1,
                reserved10: u1,
                ///  RTC hold register
                RTC_HOLD: u1,
                ///  WWDGT hold register
                WWDGT_HOLD: u1,
                ///  FWDGT hold register
                FWDGT_HOLD: u1,
                reserved21: u8,
                ///  I2C0 hold register
                I2C0_HOLD: u1,
                ///  I2C1 hold register
                I2C1_HOLD: u1,
                ///  I2C2 hold register
                I2C2_HOLD: u1,
                reserved25: u1,
                ///  CAN0 hold register
                CAN0_HOLD: u1,
                ///  CAN1 hold register
                CAN1_HOLD: u1,
                padding: u5,
            }),
            ///  Control register 2
            CTL2: mmio.Mmio(packed struct(u32) {
                ///  TIMER 0 hold register
                TIMER0_HOLD: u1,
                ///  TIMER 7 hold register
                TIMER7_HOLD: u1,
                reserved16: u14,
                ///  TIMER 8 hold register
                TIMER8_HOLD: u1,
                ///  TIMER 9 hold register
                TIMER9_HOLD: u1,
                ///  TIMER 10 hold register
                TIMER10_HOLD: u1,
                padding: u13,
            }),
        };

        ///  Digital Camera Interface
        pub const DCI = extern struct {
            ///  Control register
            CTL: mmio.Mmio(packed struct(u32) {
                ///  Capture Enable
                CAP: u1,
                ///  Snapshot mode
                SNAP: u1,
                ///  Window Enable
                WDEN: u1,
                ///  JPEG mode
                JM: u1,
                ///  Embedded Synchronous Mode
                ESM: u1,
                ///  Clock Polarity Selection
                CKS: u1,
                ///  Horizontal Polarity Selection
                HPS: u1,
                ///  Vertical Polarity Selection
                VPS: u1,
                ///  Frame rate
                FR: u2,
                ///  Digital camera interface format
                DCIF: u2,
                reserved14: u2,
                ///  DCI Enable
                DCIEN: u1,
                padding: u17,
            }),
            ///  Status register 0
            STAT0: mmio.Mmio(packed struct(u32) {
                ///  HS line status
                HS: u1,
                ///  VS line status
                VS: u1,
                ///  FIFO Valid
                FV: u1,
                padding: u29,
            }),
            ///  Status register 1
            STAT1: mmio.Mmio(packed struct(u32) {
                ///  End of Frame Flag
                EFF: u1,
                ///  FIFO Overrun Flag
                OVRF: u1,
                ///  Embedded Synchronous Error Flag
                ESEF: u1,
                ///  Vsync Flag
                VSF: u1,
                ///  End of Line Flag
                ELF: u1,
                padding: u27,
            }),
            ///  Interrupt enable register
            INTEN: mmio.Mmio(packed struct(u32) {
                ///  End of Frame Interrupt Enable
                EFIE: u1,
                ///  FIFO Overrun Interrupt Enable
                OVRIE: u1,
                ///  Embedded Synchronous Error Interrupt Enable
                ESEIE: u1,
                ///  Vsync Interrupt Enable
                VSIE: u1,
                ///  End of Line Interrupt Enable
                ELIE: u1,
                padding: u27,
            }),
            ///  Interrupt flag register
            INTF: mmio.Mmio(packed struct(u32) {
                ///  End of Frame Interrupt Flag
                EFIF: u1,
                ///  FIFO Overrun Interrupt Flag
                OVRIF: u1,
                ///  Embedded Synchronous Error Interrupt Flag
                ESEIF: u1,
                ///  Vsync Interrupt Flag
                VSIF: u1,
                ///  End of Line Interrupt Flag
                ELIF: u1,
                padding: u27,
            }),
            ///  Interrupt flag clear register
            INTC: mmio.Mmio(packed struct(u32) {
                ///  Clear End of Frame Flag
                EFFC: u1,
                ///  Clear FIFO Overrun Flag
                OVRFC: u1,
                ///  Clear embedded synchronous Error Flag
                ESEFC: u1,
                ///  Vsync flag clear
                VSFC: u1,
                ///  End of Line Flag Clear
                ELFC: u1,
                padding: u27,
            }),
            ///  Synchronization codes register
            SC: mmio.Mmio(packed struct(u32) {
                ///  Frame Start Code in Embedded Synchronous Mode
                FS: u8,
                ///  Line Start Code in Embedded Synchronous Mode
                LS: u8,
                ///  Line End Code in Embedded Synchronous Mode
                LE: u8,
                ///  Frame End Code in Embedded Synchronous Mode
                FE: u8,
            }),
            ///  Synchronization codes unmask register
            SCUMSK: mmio.Mmio(packed struct(u32) {
                ///  Frame Start Code unMask Bits in Embedded Synchronous Mode
                FSM: u8,
                ///  Line Start Code unMask Bits in Embedded Synchronous Mode
                LSM: u8,
                ///  Line End Code unMask Bits in Embedded Synchronous Mode
                LEM: u8,
                ///  Frame End Code unMask Bits in Embedded Synchronous Mode
                FEM: u8,
            }),
            ///  Cropping window start position register
            CWSPOS: mmio.Mmio(packed struct(u32) {
                ///  Window Horizontal Start Position
                WHSP: u14,
                reserved16: u2,
                ///  Window Vertical Start Position
                WVSP: u13,
                padding: u3,
            }),
            ///  Cropping window size register
            CWSZ: mmio.Mmio(packed struct(u32) {
                ///  Window Horizontal Size
                WHSZ: u14,
                reserved16: u2,
                ///  Window Vertical Size
                WVSZ: u14,
                padding: u2,
            }),
            ///  DATA register
            DATA: mmio.Mmio(packed struct(u32) {
                ///  Pixel Data 0
                DT0: u8,
                ///  Pixel Data 1
                DT1: u8,
                ///  Pixel Data 2
                DT2: u8,
                ///  Pixel Data 3
                DT3: u8,
            }),
        };

        ///  DMA controller
        pub const DMA0 = extern struct {
            ///  Interrupt flag register 0
            INTF0: mmio.Mmio(packed struct(u32) {
                ///  FIFO error and exception of channel 0
                FEEIF0: u1,
                reserved2: u1,
                ///  Single data mode exception of channel 0
                SDEIF0: u1,
                ///  Transfer access error flag of channel 0
                TAEIF0: u1,
                ///  Half transfer finish flag of channel 0
                HTFIF0: u1,
                ///  Full Transfer finish flag of channel 0
                FTFIF0: u1,
                ///  FIFO error and exception of channel 1
                FEEIF1: u1,
                reserved8: u1,
                ///  Single data mode exception of channel 1
                SDEIF1: u1,
                ///  Transfer access error flag of channel 1
                TAEIF1: u1,
                ///  Half transfer finish flag of channel 1
                HTFIF1: u1,
                ///  Full Transfer finish flag of channel 1
                FTFIF1: u1,
                reserved16: u4,
                ///  FIFO error and exception of channel 2
                FEEIF2: u1,
                reserved18: u1,
                ///  Single data mode exception of channel 2
                SDEIF2: u1,
                ///  Transfer access error flag of channel 2
                TAEIF2: u1,
                ///  Half transfer finish flag of channel 2
                HTFIF2: u1,
                ///  Full Transfer finish flag of channel 2
                FTFIF2: u1,
                ///  FIFO error and exception of channel 3
                FEEIF3: u1,
                reserved24: u1,
                ///  Single data mode exception of channel 3
                SDEIF3: u1,
                ///  Transfer access error flag of channel 3
                TAEIF3: u1,
                ///  Half transfer finish flag of channel 3
                HTFIF3: u1,
                ///  Full Transfer finish flag of channel 3
                FTFIF3: u1,
                padding: u4,
            }),
            ///  Interrupt flag register 1
            INTF1: mmio.Mmio(packed struct(u32) {
                ///  FIFO error and exception of channel 4
                FEEIF4: u1,
                reserved2: u1,
                ///  Single data mode exception of channel 4
                SDEIF4: u1,
                ///  Transfer access error flag of channel 4
                TAEIF4: u1,
                ///  Half transfer finish flag of channel 4
                HTFIF4: u1,
                ///  Full Transfer finish flag of channel 4
                FTFIF4: u1,
                ///  FIFO error and exception of channel 5
                FEEIF5: u1,
                reserved8: u1,
                ///  Single data mode exception of channel 5
                SDEIF5: u1,
                ///  Transfer access error flag of channel 5
                TAEIF5: u1,
                ///  Half transfer finish flag of channel 5
                HTFIF5: u1,
                ///  Full Transfer finish flag of channel 5
                FTFIF5: u1,
                reserved16: u4,
                ///  FIFO error and exception of channel 6
                FEEIF6: u1,
                reserved18: u1,
                ///  Single data mode exception of channel 6
                SDEIF6: u1,
                ///  Transfer access error flag of channel 6
                TAEIF6: u1,
                ///  Half transfer finish flag of channel 6
                HTFIF6: u1,
                ///  Full Transfer finish flag of channel 6
                FTFIF6: u1,
                ///  FIFO error and exception of channel 7
                FEEIF7: u1,
                reserved24: u1,
                ///  Single data mode exception of channel 7
                SDEIF7: u1,
                ///  Transfer access error flag of channel 7
                TAEIF7: u1,
                ///  Half transfer finish flag of channel 7
                HTFIF7: u1,
                ///  Full Transfer finish flag of channel 7
                FTFIF7: u1,
                padding: u4,
            }),
            ///  Interrupt flag clear register 0
            INTC0: mmio.Mmio(packed struct(u32) {
                ///  Clear bit for FIFO error and exception of channel 0
                FEEIFC0: u1,
                reserved2: u1,
                ///  Clear bit for single data mode exception of channel 0
                SDEIFC0: u1,
                ///  Clear bit for transfer access error flag of channel 0
                TAEIFC0: u1,
                ///  Clear bit for half transfer finish flag of channel 0
                HTFIFC0: u1,
                ///  Clear bit for Full transfer finish flag of channel 0
                FTFIFC0: u1,
                ///  Clear bit for FIFO error and exception of channel 1
                FEEIFC1: u1,
                reserved8: u1,
                ///  Clear bit for single data mode exception of channel 1
                SDEIFC1: u1,
                ///  Clear bit for transfer access error flag of channel 1
                TAEIFC1: u1,
                ///  Clear bit for half transfer finish flag of channel 1
                HTFIFC1: u1,
                ///  Clear bit for Full transfer finish flag of channel 1
                FTFIFC1: u1,
                reserved16: u4,
                ///  Clear bit for FIFO error and exception of channel 2
                FEEIFC2: u1,
                reserved18: u1,
                ///  Clear bit for single data mode exception of channel 2
                SDEIFC2: u1,
                ///  Clear bit for transfer access error flag of channel 2
                TAEIFC2: u1,
                ///  Clear bit for half transfer finish flag of channel 2
                HTFIFC2: u1,
                ///  Clear bit for Full transfer finish flag of channel 2
                FTFIFC2: u1,
                ///  Clear bit for FIFO error and exception of channel 3
                FEEIFC3: u1,
                reserved24: u1,
                ///  Clear bit for single data mode exception of channel 3
                SDEIFC3: u1,
                ///  Clear bit for transfer access error flag of channel 3
                TAEIFC3: u1,
                ///  Clear bit for half transfer finish flag of channel 3
                HTFIFC3: u1,
                ///  Clear bit for Full transfer finish flag of channel 3
                FTFIFC3: u1,
                padding: u4,
            }),
            ///  Interrupt flag clear register 1
            INTC1: mmio.Mmio(packed struct(u32) {
                ///  Clear bit for FIFO error and exception of channel 4
                FEEIFC4: u1,
                reserved2: u1,
                ///  Clear bit for single data mode exception of channel 4
                SDEIFC4: u1,
                ///  Clear bit for transfer access error flag of channel 4
                TAEIFC4: u1,
                ///  Clear bit for half transfer finish flag of channel 4
                HTFIFC4: u1,
                ///  Clear bit for Full transfer finish flag of channel 4
                FTFIFC4: u1,
                ///  Clear bit for FIFO error and exception of channel 5
                FEEIFC5: u1,
                reserved8: u1,
                ///  Clear bit for single data mode exception of channel 5
                SDEIFC5: u1,
                ///  Clear bit for transfer access error flag of channel 5
                TAEIFC5: u1,
                ///  Clear bit for half transfer finish flag of channel 5
                HTFIFC5: u1,
                ///  Clear bit for Full transfer finish flag of channel 5
                FTFIFC5: u1,
                reserved16: u4,
                ///  Clear bit for FIFO error and exception of channel 6
                FEEIFC6: u1,
                reserved18: u1,
                ///  Clear bit for single data mode exception of channel 6
                SDEIFC6: u1,
                ///  Clear bit for transfer access error flag of channel 6
                TAEIFC6: u1,
                ///  Clear bit for half transfer finish flag of channel 6
                HTFIFC6: u1,
                ///  Clear bit for Full transfer finish flag of channel 6
                FTFIFC6: u1,
                ///  Clear bit for FIFO error and exception of channel 7
                FEEIFC7: u1,
                reserved24: u1,
                ///  Clear bit for single data mode exception of channel 7
                SDEIFC7: u1,
                ///  Clear bit for transfer access error flag of channel 7
                TAEIFC7: u1,
                ///  Clear bit for half transfer finish flag of channel 7
                HTFIFC7: u1,
                ///  Clear bit for Full transfer finish flag of channel 7
                FTFIFC7: u1,
                padding: u4,
            }),
            ///  Channel 0 control register
            CH0CTL: mmio.Mmio(packed struct(u32) {
                ///  Channel enable
                CHEN: u1,
                ///  Enable bit for single data mode exception interrupt
                SDEIE: u1,
                ///  Enable bit for tranfer access error interrupt
                TAEIE: u1,
                ///  Enable bit for half transfer finish interrupt
                HTFIE: u1,
                ///  Enable bit for full transfer finish interrupt
                FTFIE: u1,
                ///  Transfer flow controller select
                TFCS: u1,
                ///  Transfer mode
                TM: u2,
                ///  Circulation mode enable
                CMEN: u1,
                ///  Next address generation algorithm of peripheral
                PNAGA: u1,
                ///  Next address generation algorithm of memory
                MNAGA: u1,
                ///  Transfer width of peripheral
                PWIDTH: u2,
                ///  Transfer width of memory
                MWIDTH: u2,
                ///  Peripheral address increment fixed
                PAIF: u1,
                ///  Priority level
                PRIO: u2,
                ///  Switch-buffer mode enable
                SBMEN: u1,
                ///  Memory buffer select
                MBS: u1,
                reserved21: u1,
                ///  Transfer burst type of peripheral
                PBURST: u2,
                ///  Transfer burst type of memory
                MBURST: u2,
                ///  Peripheral enable
                PERIEN: u3,
                padding: u4,
            }),
            ///  Channel 0 counter register
            CH0CNT: mmio.Mmio(packed struct(u32) {
                ///  Transfer counter
                CNT: u16,
                padding: u16,
            }),
            ///  Channel 0 peripheral base address register
            CH0PADDR: mmio.Mmio(packed struct(u32) {
                ///  Peripheral base address
                PADDR: u32,
            }),
            ///  Channel 0 memory 0 base address register
            CH0M0ADDR: mmio.Mmio(packed struct(u32) {
                ///  Memory 0 base address
                M0ADDR: u32,
            }),
            ///  Channel 0 memory 1 base address register
            CH0M1ADDR: mmio.Mmio(packed struct(u32) {
                ///  Memory 1 base address
                M1ADDR: u32,
            }),
            ///  Channel 0 FIFO control register
            CH0FCTL: mmio.Mmio(packed struct(u32) {
                ///  FIFO counter critical value
                FCCV: u2,
                ///  Multi-data mode enable
                MDMEN: u1,
                ///  FIFO counter
                FCNT: u3,
                reserved7: u1,
                ///  Enable bit for FIFO error and exception interrupt
                FEEIE: u1,
                padding: u24,
            }),
            ///  Channel 1 control register
            CH1CTL: mmio.Mmio(packed struct(u32) {
                ///  Channel enable
                CHEN: u1,
                ///  Enable bit for single data mode exception interrupt
                SDEIE: u1,
                ///  Enable bit for tranfer access error interrupt
                TAEIE: u1,
                ///  Enable bit for half transfer finish interrupt
                HTFIE: u1,
                ///  Enable bit for full transfer finish interrupt
                FTFIE: u1,
                ///  Transfer flow controller select
                TFCS: u1,
                ///  Transfer mode
                TM: u2,
                ///  Circulation mode enable
                CMEN: u1,
                ///  Next address generation algorithm of peripheral
                PNAGA: u1,
                ///  Next address generation algorithm of memory
                MNAGA: u1,
                ///  Transfer width of peripheral
                PWIDTH: u2,
                ///  Transfer width of memory
                MWIDTH: u2,
                ///  Peripheral address increment fixed
                PAIF: u1,
                ///  Priority level
                PRIO: u2,
                ///  Switch-buffer mode enable
                SBMEN: u1,
                ///  Memory buffer select
                MBS: u1,
                reserved21: u1,
                ///  Transfer burst type of peripheral
                PBURST: u2,
                ///  Transfer burst type of memory
                MBURST: u2,
                ///  Peripheral enable
                PERIEN: u3,
                padding: u4,
            }),
            ///  Channel 1 counter register
            CH1CNT: mmio.Mmio(packed struct(u32) {
                ///  Transfer counter
                CNT: u16,
                padding: u16,
            }),
            ///  Channel 1 peripheral base address register
            CH1PADDR: mmio.Mmio(packed struct(u32) {
                ///  Peripheral base address
                PADDR: u32,
            }),
            ///  Channel 1 memory 0 base address register
            CH1M0ADDR: mmio.Mmio(packed struct(u32) {
                ///  Memory 0 base address
                M0ADDR: u32,
            }),
            ///  Channel 1 memory 1 base address register
            CH1M1ADDR: mmio.Mmio(packed struct(u32) {
                ///  Memory 1 base address
                M1ADDR: u32,
            }),
            ///  Channel 1 FIFO control register
            CH1FCTL: mmio.Mmio(packed struct(u32) {
                ///  FIFO counter critical value
                FCCV: u2,
                ///  Multi-data mode enable
                MDMEN: u1,
                ///  FIFO counter
                FCNT: u3,
                reserved7: u1,
                ///  Enable bit for FIFO error and exception interrupt
                FEEIE: u1,
                padding: u24,
            }),
            ///  Channel 2 control register
            CH2CTL: mmio.Mmio(packed struct(u32) {
                ///  Channel enable
                CHEN: u1,
                ///  Enable bit for single data mode exception interrupt
                SDEIE: u1,
                ///  Enable bit for tranfer access error interrupt
                TAEIE: u1,
                ///  Enable bit for half transfer finish interrupt
                HTFIE: u1,
                ///  Enable bit for full transfer finish interrupt
                FTFIE: u1,
                ///  Transfer flow controller select
                TFCS: u1,
                ///  Transfer mode
                TM: u2,
                ///  Circulation mode enable
                CMEN: u1,
                ///  Next address generation algorithm of peripheral
                PNAGA: u1,
                ///  Next address generation algorithm of memory
                MNAGA: u1,
                ///  Transfer width of peripheral
                PWIDTH: u2,
                ///  Transfer width of memory
                MWIDTH: u2,
                ///  Peripheral address increment fixed
                PAIF: u1,
                ///  Priority level
                PRIO: u2,
                ///  Switch-buffer mode enable
                SBMEN: u1,
                ///  Memory buffer select
                MBS: u1,
                reserved21: u1,
                ///  Transfer burst type of peripheral
                PBURST: u2,
                ///  Transfer burst type of memory
                MBURST: u2,
                ///  Peripheral enable
                PERIEN: u3,
                padding: u4,
            }),
            ///  Channel 2 counter register
            CH2CNT: mmio.Mmio(packed struct(u32) {
                ///  Transfer counter
                CNT: u16,
                padding: u16,
            }),
            ///  Channel 2 peripheral base address register
            CH2PADDR: mmio.Mmio(packed struct(u32) {
                ///  Peripheral base address
                PADDR: u32,
            }),
            ///  Channel 2 memory 0 base address register
            CH2M0ADDR: mmio.Mmio(packed struct(u32) {
                ///  Memory 0 base address
                M0ADDR: u32,
            }),
            ///  Channel 2 memory 1 base address register
            CH2M1ADDR: mmio.Mmio(packed struct(u32) {
                ///  Memory 1 base address
                M1ADDR: u32,
            }),
            ///  Channel 2 FIFO control register
            CH2FCTL: mmio.Mmio(packed struct(u32) {
                ///  FIFO counter critical value
                FCCV: u2,
                ///  Multi-data mode enable
                MDMEN: u1,
                ///  FIFO counter
                FCNT: u3,
                reserved7: u1,
                ///  Enable bit for FIFO error and exception interrupt
                FEEIE: u1,
                padding: u24,
            }),
            ///  Channel 3 control register
            CH3CTL: mmio.Mmio(packed struct(u32) {
                ///  Channel enable
                CHEN: u1,
                ///  Enable bit for single data mode exception interrupt
                SDEIE: u1,
                ///  Enable bit for tranfer access error interrupt
                TAEIE: u1,
                ///  Enable bit for half transfer finish interrupt
                HTFIE: u1,
                ///  Enable bit for full transfer finish interrupt
                FTFIE: u1,
                ///  Transfer flow controller select
                TFCS: u1,
                ///  Transfer mode
                TM: u2,
                ///  Circulation mode enable
                CMEN: u1,
                ///  Next address generation algorithm of peripheral
                PNAGA: u1,
                ///  Next address generation algorithm of memory
                MNAGA: u1,
                ///  Transfer width of peripheral
                PWIDTH: u2,
                ///  Transfer width of memory
                MWIDTH: u2,
                ///  Peripheral address increment fixed
                PAIF: u1,
                ///  Priority level
                PRIO: u2,
                ///  Switch-buffer mode enable
                SBMEN: u1,
                ///  Memory buffer select
                MBS: u1,
                reserved21: u1,
                ///  Transfer burst type of peripheral
                PBURST: u2,
                ///  Transfer burst type of memory
                MBURST: u2,
                ///  Peripheral enable
                PERIEN: u3,
                padding: u4,
            }),
            ///  Channel 3 counter register
            CH3CNT: mmio.Mmio(packed struct(u32) {
                ///  Transfer counter
                CNT: u16,
                padding: u16,
            }),
            ///  Channel 3 peripheral base address register
            CH3PADDR: mmio.Mmio(packed struct(u32) {
                ///  Peripheral base address
                PADDR: u32,
            }),
            ///  Channel 3 memory 0 base address register
            CH3M0ADDR: mmio.Mmio(packed struct(u32) {
                ///  Memory 0 base address
                M0ADDR: u32,
            }),
            ///  Channel 3 memory 1 base address register
            CH3M1ADDR: mmio.Mmio(packed struct(u32) {
                ///  Memory 1 base address
                M1ADDR: u32,
            }),
            ///  Channel 3 FIFO control register
            CH3FCTL: mmio.Mmio(packed struct(u32) {
                ///  FIFO counter critical value
                FCCV: u2,
                ///  Multi-data mode enable
                MDMEN: u1,
                ///  FIFO counter
                FCNT: u3,
                reserved7: u1,
                ///  Enable bit for FIFO error and exception interrupt
                FEEIE: u1,
                padding: u24,
            }),
            ///  Channel 4 control register
            CH4CTL: mmio.Mmio(packed struct(u32) {
                ///  Channel enable
                CHEN: u1,
                ///  Enable bit for single data mode exception interrupt
                SDEIE: u1,
                ///  Enable bit for tranfer access error interrupt
                TAEIE: u1,
                ///  Enable bit for half transfer finish interrupt
                HTFIE: u1,
                ///  Enable bit for full transfer finish interrupt
                FTFIE: u1,
                ///  Transfer flow controller select
                TFCS: u1,
                ///  Transfer mode
                TM: u2,
                ///  Circulation mode enable
                CMEN: u1,
                ///  Next address generation algorithm of peripheral
                PNAGA: u1,
                ///  Next address generation algorithm of memory
                MNAGA: u1,
                ///  Transfer width of peripheral
                PWIDTH: u2,
                ///  Transfer width of memory
                MWIDTH: u2,
                ///  Peripheral address increment fixed
                PAIF: u1,
                ///  Priority level
                PRIO: u2,
                ///  Switch-buffer mode enable
                SBMEN: u1,
                ///  Memory buffer select
                MBS: u1,
                reserved21: u1,
                ///  Transfer burst type of peripheral
                PBURST: u2,
                ///  Transfer burst type of memory
                MBURST: u2,
                ///  Peripheral enable
                PERIEN: u3,
                padding: u4,
            }),
            ///  Channel 4 counter register
            CH4CNT: mmio.Mmio(packed struct(u32) {
                ///  Transfer counter
                CNT: u16,
                padding: u16,
            }),
            ///  Channel 4 peripheral base address register
            CH4PADDR: mmio.Mmio(packed struct(u32) {
                ///  Peripheral base address
                PADDR: u32,
            }),
            ///  Channel 4 memory 0 base address register
            CH4M0ADDR: mmio.Mmio(packed struct(u32) {
                ///  Memory 0 base address
                M0ADDR: u32,
            }),
            ///  Channel 4 memory 1 base address register
            CH4M1ADDR: mmio.Mmio(packed struct(u32) {
                ///  Memory 1 base address
                M1ADDR: u32,
            }),
            ///  Channel 4 FIFO control register
            CH4FCTL: mmio.Mmio(packed struct(u32) {
                ///  FIFO counter critical value
                FCCV: u2,
                ///  Multi-data mode enable
                MDMEN: u1,
                ///  FIFO counter
                FCNT: u3,
                reserved7: u1,
                ///  Enable bit for FIFO error and exception interrupt
                FEEIE: u1,
                padding: u24,
            }),
            ///  Channel 5 control register
            CH5CTL: mmio.Mmio(packed struct(u32) {
                ///  Channel enable
                CHEN: u1,
                ///  Enable bit for single data mode exception interrupt
                SDEIE: u1,
                ///  Enable bit for tranfer access error interrupt
                TAEIE: u1,
                ///  Enable bit for half transfer finish interrupt
                HTFIE: u1,
                ///  Enable bit for full transfer finish interrupt
                FTFIE: u1,
                ///  Transfer flow controller select
                TFCS: u1,
                ///  Transfer mode
                TM: u2,
                ///  Circulation mode enable
                CMEN: u1,
                ///  Next address generation algorithm of peripheral
                PNAGA: u1,
                ///  Next address generation algorithm of memory
                MNAGA: u1,
                ///  Transfer width of peripheral
                PWIDTH: u2,
                ///  Transfer width of memory
                MWIDTH: u2,
                ///  Peripheral address increment fixed
                PAIF: u1,
                ///  Priority level
                PRIO: u2,
                ///  Switch-buffer mode enable
                SBMEN: u1,
                ///  Memory buffer select
                MBS: u1,
                reserved21: u1,
                ///  Transfer burst type of peripheral
                PBURST: u2,
                ///  Transfer burst type of memory
                MBURST: u2,
                ///  Peripheral enable
                PERIEN: u3,
                padding: u4,
            }),
            ///  Channel 5 counter register
            CH5CNT: mmio.Mmio(packed struct(u32) {
                ///  Transfer counter
                CNT: u16,
                padding: u16,
            }),
            ///  Channel 5 peripheral base address register
            CH5PADDR: mmio.Mmio(packed struct(u32) {
                ///  Peripheral base address
                PADDR: u32,
            }),
            ///  Channel 5 memory 0 base address register
            CH5M0ADDR: mmio.Mmio(packed struct(u32) {
                ///  Memory 0 base address
                M0ADDR: u32,
            }),
            ///  Channel 5 memory 1 base address register
            CH5M1ADDR: mmio.Mmio(packed struct(u32) {
                ///  Memory 1 base address
                M1ADDR: u32,
            }),
            ///  Channel 5 FIFO control register
            CH5FCTL: mmio.Mmio(packed struct(u32) {
                ///  FIFO counter critical value
                FCCV: u2,
                ///  Multi-data mode enable
                MDMEN: u1,
                ///  FIFO counter
                FCNT: u3,
                reserved7: u1,
                ///  Enable bit for FIFO error and exception interrupt
                FEEIE: u1,
                padding: u24,
            }),
            ///  Channel 6 control register
            CH6CTL: mmio.Mmio(packed struct(u32) {
                ///  Channel enable
                CHEN: u1,
                ///  Enable bit for single data mode exception interrupt
                SDEIE: u1,
                ///  Enable bit for tranfer access error interrupt
                TAEIE: u1,
                ///  Enable bit for half transfer finish interrupt
                HTFIE: u1,
                ///  Enable bit for full transfer finish interrupt
                FTFIE: u1,
                ///  Transfer flow controller select
                TFCS: u1,
                ///  Transfer mode
                TM: u2,
                ///  Circulation mode enable
                CMEN: u1,
                ///  Next address generation algorithm of peripheral
                PNAGA: u1,
                ///  Next address generation algorithm of memory
                MNAGA: u1,
                ///  Transfer width of peripheral
                PWIDTH: u2,
                ///  Transfer width of memory
                MWIDTH: u2,
                ///  Peripheral address increment fixed
                PAIF: u1,
                ///  Priority level
                PRIO: u2,
                ///  Switch-buffer mode enable
                SBMEN: u1,
                ///  Memory buffer select
                MBS: u1,
                reserved21: u1,
                ///  Transfer burst type of peripheral
                PBURST: u2,
                ///  Transfer burst type of memory
                MBURST: u2,
                ///  Peripheral enable
                PERIEN: u3,
                padding: u4,
            }),
            ///  Channel 6 counter register
            CH6CNT: mmio.Mmio(packed struct(u32) {
                ///  Transfer counter
                CNT: u16,
                padding: u16,
            }),
            ///  Channel 6 peripheral base address register
            CH6PADDR: mmio.Mmio(packed struct(u32) {
                ///  Peripheral base address
                PADDR: u32,
            }),
            ///  Channel 6 memory 0 base address register
            CH6M0ADDR: mmio.Mmio(packed struct(u32) {
                ///  Memory 0 base address
                M0ADDR: u32,
            }),
            ///  Channel 6 memory 1 base address register
            CH6M1ADDR: mmio.Mmio(packed struct(u32) {
                ///  Memory 1 base address
                M1ADDR: u32,
            }),
            ///  Channel 6 FIFO control register
            CH6FCTL: mmio.Mmio(packed struct(u32) {
                ///  FIFO counter critical value
                FCCV: u2,
                ///  Multi-data mode enable
                MDMEN: u1,
                ///  FIFO counter
                FCNT: u3,
                reserved7: u1,
                ///  Enable bit for FIFO error and exception interrupt
                FEEIE: u1,
                padding: u24,
            }),
            ///  Channel 7 control register
            CH7CTL: mmio.Mmio(packed struct(u32) {
                ///  Channel enable
                CHEN: u1,
                ///  Enable bit for single data mode exception interrupt
                SDEIE: u1,
                ///  Enable bit for tranfer access error interrupt
                TAEIE: u1,
                ///  Enable bit for half transfer finish interrupt
                HTFIE: u1,
                ///  Enable bit for full transfer finish interrupt
                FTFIE: u1,
                ///  Transfer flow controller select
                TFCS: u1,
                ///  Transfer mode
                TM: u2,
                ///  Circulation mode enable
                CMEN: u1,
                ///  Next address generation algorithm of peripheral
                PNAGA: u1,
                ///  Next address generation algorithm of memory
                MNAGA: u1,
                ///  Transfer width of peripheral
                PWIDTH: u2,
                ///  Transfer width of memory
                MWIDTH: u2,
                ///  Peripheral address increment fixed
                PAIF: u1,
                ///  Priority level
                PRIO: u2,
                ///  Switch-buffer mode enable
                SBMEN: u1,
                ///  Memory buffer select
                MBS: u1,
                reserved21: u1,
                ///  Transfer burst type of peripheral
                PBURST: u2,
                ///  Transfer burst type of memory
                MBURST: u2,
                ///  Peripheral enable
                PERIEN: u3,
                padding: u4,
            }),
            ///  Channel 7 counter register
            CH7CNT: mmio.Mmio(packed struct(u32) {
                ///  Transfer counter
                CNT: u16,
                padding: u16,
            }),
            ///  Channel 7 peripheral base address register
            CH7PADDR: mmio.Mmio(packed struct(u32) {
                ///  Peripheral base address
                PADDR: u32,
            }),
            ///  Channel 7 memory 0 base address register
            CH7M0ADDR: mmio.Mmio(packed struct(u32) {
                ///  Memory 0 base address
                M0ADDR: u32,
            }),
            ///  Channel 7 memory 1 base address register
            CH7M1ADDR: mmio.Mmio(packed struct(u32) {
                ///  Memory 1 base address
                M1ADDR: u32,
            }),
            ///  Channel 7 FIFO control register
            CH7FCTL: mmio.Mmio(packed struct(u32) {
                ///  FIFO counter critical value
                FCCV: u2,
                ///  Multi-data mode enable
                MDMEN: u1,
                ///  FIFO counter
                FCNT: u3,
                reserved7: u1,
                ///  Enable bit for FIFO error and exception interrupt
                FEEIE: u1,
                padding: u24,
            }),
        };

        ///  USB on the go full speed host
        pub const HS_HOST = extern struct {
            ///  host control register (HCTL)
            HCTL: mmio.Mmio(packed struct(u32) {
                reserved2: u2,
                ///  Speed limited to FS and LS
                SPDFSLS: u1,
                padding: u29,
            }),
            ///  Host frame interval register
            HFT: mmio.Mmio(packed struct(u32) {
                ///  Frame interval
                FRI: u16,
                padding: u16,
            }),
            ///  host frame number/frame time remaining register (HFINFR)
            HFINFR: mmio.Mmio(packed struct(u32) {
                ///  Frame number
                FRNUM: u16,
                ///  Frame remaining time
                FRT: u16,
            }),
            reserved16: [4]u8,
            ///  Host periodic transmit FIFO/queue status register (HPTFQSTAT)
            HPTFQSTAT: mmio.Mmio(packed struct(u32) {
                ///  Periodic transmit data FIFO space available
                PTXFS: u16,
                ///  Periodic Tx request queue space
                PTXREQS: u8,
                ///  Top of the periodic transmit request queue
                PTXREQT: u8,
            }),
            ///  Host all channels interrupt register
            HACHINT: mmio.Mmio(packed struct(u32) {
                ///  Host all channel interrupts
                HACHINT: u12,
                padding: u20,
            }),
            ///  host all channels interrupt mask register
            HACHINTEN: mmio.Mmio(packed struct(u32) {
                ///  Channel interrupt enable
                CINTEN: u12,
                padding: u20,
            }),
            reserved64: [36]u8,
            ///  host port control and status register (HPCS)
            HPCS: mmio.Mmio(packed struct(u32) {
                ///  Port connect status
                PCST: u1,
                ///  Port connect detected
                PCD: u1,
                ///  Port enable
                PE: u1,
                ///  Port enable/disable change
                PEDC: u1,
                reserved6: u2,
                ///  Port resume
                PREM: u1,
                ///  Port suspend
                PSP: u1,
                ///  Port reset
                PRST: u1,
                reserved10: u1,
                ///  Port line status
                PLST: u2,
                ///  Port power
                PP: u1,
                reserved17: u4,
                ///  Port speed
                PS: u2,
                padding: u13,
            }),
            reserved256: [188]u8,
            ///  host channel-0 control register (HCH0CTL)
            HCH0CTL: mmio.Mmio(packed struct(u32) {
                ///  Maximum packet size
                MPL: u11,
                ///  Endpoint number
                EPNUM: u4,
                ///  Endpoint direction
                EPDIR: u1,
                reserved17: u1,
                ///  Low-speed device
                LSD: u1,
                ///  Endpoint type
                EPTYPE: u2,
                ///  Multiple packet count
                MPC: u2,
                ///  Device address
                DAR: u7,
                ///  Odd frame
                ODDFRM: u1,
                ///  Channel disable
                CDIS: u1,
                ///  Channel enable
                CEN: u1,
            }),
            ///  host channel-0 split transaction control register (HCH0STCTL)
            HCH0STCTL: mmio.Mmio(packed struct(u32) {
                ///  Port address
                PADDR: u7,
                ///  HUB address
                HADDR: u7,
                ///  Isochronous OUT payload continuation encoding
                ISOPCE: u2,
                ///  Complete split enable
                CSPLT: u1,
                reserved31: u14,
                ///  Enable high speed split transaction
                SPLEN: u1,
            }),
            ///  host channel-0 interrupt flag register (HCH0INTF)
            HCH0INTF: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed
                TF: u1,
                ///  Channel halted
                CH: u1,
                ///  DMA Error
                DMAER: u1,
                ///  STALL response received interrupt
                STALL: u1,
                ///  NAK response received interrupt
                NAK: u1,
                ///  ACK response received/transmitted interrupt
                ACK: u1,
                ///  NYET
                NYET: u1,
                ///  USB bus error
                USBER: u1,
                ///  Babble error
                BBER: u1,
                ///  Request queue overrun
                REQOVR: u1,
                ///  Data toggle error
                DTER: u1,
                padding: u21,
            }),
            ///  host channel-0 interrupt enable register (HCH0INTEN)
            HCH0INTEN: mmio.Mmio(packed struct(u32) {
                ///  Transfer finished interrupt enable
                TFIE: u1,
                ///  Channel halted interrupt enable
                CHIE: u1,
                ///  DMA error interrupt enable
                DMAERIE: u1,
                ///  STALL interrupt enable
                STALLIE: u1,
                ///  NAK interrupt enable
                NAKIE: u1,
                ///  ACK interrupt enable
                ACKIE: u1,
                ///  NYET interrupt enable
                NYETIE: u1,
                ///  USB bus error interrupt enable
                USBERIE: u1,
                ///  Babble error interrupt enable
                BBERIE: u1,
                ///  request queue overrun interrupt enable
                REQOVRIE: u1,
                ///  Data toggle error interrupt enable
                DTERIE: u1,
                padding: u21,
            }),
            ///  host channel-0 transfer length register
            HCH0LEN: mmio.Mmio(packed struct(u32) {
                ///  Transfer length
                TLEN: u19,
                ///  Packet count
                PCNT: u10,
                ///  Data PID
                DPID: u2,
                ///  Ping token request
                PING: u1,
            }),
            ///  host channel-0 DMA address register
            HCH0DMAADDR: mmio.Mmio(packed struct(u32) {
                ///  DMA address
                DMAADDR: u32,
            }),
            reserved288: [8]u8,
            ///  host channel-1 control register (HCH1CTL)
            HCH1CTL: mmio.Mmio(packed struct(u32) {
                ///  Maximum packet size
                MPL: u11,
                ///  Endpoint number
                EPNUM: u4,
                ///  Endpoint direction
                EPDIR: u1,
                reserved17: u1,
                ///  Low-speed device
                LSD: u1,
                ///  Endpoint type
                EPTYPE: u2,
                ///  Multiple packet count
                MPC: u2,
                ///  Device address
                DAR: u7,
                ///  Odd frame
                ODDFRM: u1,
                ///  Channel disable
                CDIS: u1,
                ///  Channel enable
                CEN: u1,
            }),
            ///  host channel-1 split transaction control register (HCH1STCTL)
            HCH1STCTL: mmio.Mmio(packed struct(u32) {
                ///  Port address
                PADDR: u7,
                ///  HUB address
                HADDR: u7,
                ///  Isochronous OUT payload continuation encoding
                ISOPCE: u2,
                ///  Complete split enable
                CSPLT: u1,
                reserved31: u14,
                ///  Enable high speed split transaction
                SPLEN: u1,
            }),
            ///  host channel-1 interrupt flag register (HCH1INTF)
            HCH1INTF: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed
                TF: u1,
                ///  Channel halted
                CH: u1,
                ///  DMA Error
                DMAER: u1,
                ///  STALL response received interrupt
                STALL: u1,
                ///  NAK response received interrupt
                NAK: u1,
                ///  ACK response received/transmitted interrupt
                ACK: u1,
                ///  NYET
                NYET: u1,
                ///  USB bus error
                USBER: u1,
                ///  Babble error
                BBER: u1,
                ///  Request queue overrun
                REQOVR: u1,
                ///  Data toggle error
                DTER: u1,
                padding: u21,
            }),
            ///  host channel-1 interrupt enable register (HCH1INTEN)
            HCH1INTEN: mmio.Mmio(packed struct(u32) {
                ///  Transfer finished interrupt enable
                TFIE: u1,
                ///  Channel halted interrupt enable
                CHIE: u1,
                ///  DMA error interrupt enable
                DMAERIE: u1,
                ///  STALL interrupt enable
                STALLIE: u1,
                ///  NAK interrupt enable
                NAKIE: u1,
                ///  ACK interrupt enable
                ACKIE: u1,
                ///  NYET interrupt enable
                NYETIE: u1,
                ///  USB bus error interrupt enable
                USBERIE: u1,
                ///  Babble error interrupt enable
                BBERIE: u1,
                ///  request queue overrun interrupt enable
                REQOVRIE: u1,
                ///  Data toggle error interrupt enable
                DTERIE: u1,
                padding: u21,
            }),
            ///  host channel-1 transfer length register
            HCH1LEN: mmio.Mmio(packed struct(u32) {
                ///  Transfer length
                TLEN: u19,
                ///  Packet count
                PCNT: u10,
                ///  Data PID
                DPID: u2,
                ///  Ping token request
                PING: u1,
            }),
            ///  host channel-1 DMA address register
            HCH1DMAADDR: mmio.Mmio(packed struct(u32) {
                ///  DMA address
                DMAADDR: u32,
            }),
            reserved320: [8]u8,
            ///  host channel-2 control register (HCH2CTL)
            HCH2CTL: mmio.Mmio(packed struct(u32) {
                ///  Maximum packet size
                MPL: u11,
                ///  Endpoint number
                EPNUM: u4,
                ///  Endpoint direction
                EPDIR: u1,
                reserved17: u1,
                ///  Low-speed device
                LSD: u1,
                ///  Endpoint type
                EPTYPE: u2,
                ///  Multiple packet count
                MPC: u2,
                ///  Device address
                DAR: u7,
                ///  Odd frame
                ODDFRM: u1,
                ///  Channel disable
                CDIS: u1,
                ///  Channel enable
                CEN: u1,
            }),
            ///  host channel-2 split transaction control register (HCH2STCTL)
            HCH2STCTL: mmio.Mmio(packed struct(u32) {
                ///  Port address
                PADDR: u7,
                ///  HUB address
                HADDR: u7,
                ///  Isochronous OUT payload continuation encoding
                ISOPCE: u2,
                ///  Complete split enable
                CSPLT: u1,
                reserved31: u14,
                ///  Enable high speed split transaction
                SPLEN: u1,
            }),
            ///  host channel-2 interrupt flag register (HCH2INTF)
            HCH2INTF: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed
                TF: u1,
                ///  Channel halted
                CH: u1,
                ///  DMA Error
                DMAER: u1,
                ///  STALL response received interrupt
                STALL: u1,
                ///  NAK response received interrupt
                NAK: u1,
                ///  ACK response received/transmitted interrupt
                ACK: u1,
                ///  NYET
                NYET: u1,
                ///  USB bus error
                USBER: u1,
                ///  Babble error
                BBER: u1,
                ///  Request queue overrun
                REQOVR: u1,
                ///  Data toggle error
                DTER: u1,
                padding: u21,
            }),
            ///  host channel-2 interrupt enable register (HCH2INTEN)
            HCH2INTEN: mmio.Mmio(packed struct(u32) {
                ///  Transfer finished interrupt enable
                TFIE: u1,
                ///  Channel halted interrupt enable
                CHIE: u1,
                ///  DMA error interrupt enable
                DMAERIE: u1,
                ///  STALL interrupt enable
                STALLIE: u1,
                ///  NAK interrupt enable
                NAKIE: u1,
                ///  ACK interrupt enable
                ACKIE: u1,
                ///  NYET interrupt enable
                NYETIE: u1,
                ///  USB bus error interrupt enable
                USBERIE: u1,
                ///  Babble error interrupt enable
                BBERIE: u1,
                ///  request queue overrun interrupt enable
                REQOVRIE: u1,
                ///  Data toggle error interrupt enable
                DTERIE: u1,
                padding: u21,
            }),
            ///  host channel-2 transfer length register
            HCH2LEN: mmio.Mmio(packed struct(u32) {
                ///  Transfer length
                TLEN: u19,
                ///  Packet count
                PCNT: u10,
                ///  Data PID
                DPID: u2,
                ///  Ping token request
                PING: u1,
            }),
            ///  host channel-2 DMA address register
            HCH2DMAADDR: mmio.Mmio(packed struct(u32) {
                ///  DMA address
                DMAADDR: u32,
            }),
            reserved352: [8]u8,
            ///  host channel-3 control register (HCH3CTL)
            HCH3CTL: mmio.Mmio(packed struct(u32) {
                ///  Maximum packet size
                MPL: u11,
                ///  Endpoint number
                EPNUM: u4,
                ///  Endpoint direction
                EPDIR: u1,
                reserved17: u1,
                ///  Low-speed device
                LSD: u1,
                ///  Endpoint type
                EPTYPE: u2,
                ///  Multiple packet count
                MPC: u2,
                ///  Device address
                DAR: u7,
                ///  Odd frame
                ODDFRM: u1,
                ///  Channel disable
                CDIS: u1,
                ///  Channel enable
                CEN: u1,
            }),
            ///  host channel-3 split transaction control register (HCH3STCTL)
            HCH3STCTL: mmio.Mmio(packed struct(u32) {
                ///  Port address
                PADDR: u7,
                ///  HUB address
                HADDR: u7,
                ///  Isochronous OUT payload continuation encoding
                ISOPCE: u2,
                ///  Complete split enable
                CSPLT: u1,
                reserved31: u14,
                ///  Enable high speed split transaction
                SPLEN: u1,
            }),
            ///  host channel-3 interrupt flag register (HCH3INTF)
            HCH3INTF: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed
                TF: u1,
                ///  Channel halted
                CH: u1,
                ///  DMA Error
                DMAER: u1,
                ///  STALL response received interrupt
                STALL: u1,
                ///  NAK response received interrupt
                NAK: u1,
                ///  ACK response received/transmitted interrupt
                ACK: u1,
                ///  NYET
                NYET: u1,
                ///  USB bus error
                USBER: u1,
                ///  Babble error
                BBER: u1,
                ///  Request queue overrun
                REQOVR: u1,
                ///  Data toggle error
                DTER: u1,
                padding: u21,
            }),
            ///  host channel-3 interrupt enable register (HCH3INTEN)
            HCH3INTEN: mmio.Mmio(packed struct(u32) {
                ///  Transfer finished interrupt enable
                TFIE: u1,
                ///  Channel halted interrupt enable
                CHIE: u1,
                ///  DMA error interrupt enable
                DMAERIE: u1,
                ///  STALL interrupt enable
                STALLIE: u1,
                ///  NAK interrupt enable
                NAKIE: u1,
                ///  ACK interrupt enable
                ACKIE: u1,
                ///  NYET interrupt enable
                NYETIE: u1,
                ///  USB bus error interrupt enable
                USBERIE: u1,
                ///  Babble error interrupt enable
                BBERIE: u1,
                ///  request queue overrun interrupt enable
                REQOVRIE: u1,
                ///  Data toggle error interrupt enable
                DTERIE: u1,
                padding: u21,
            }),
            ///  host channel-3 transfer length register
            HCH3LEN: mmio.Mmio(packed struct(u32) {
                ///  Transfer length
                TLEN: u19,
                ///  Packet count
                PCNT: u10,
                ///  Data PID
                DPID: u2,
                ///  Ping token request
                PING: u1,
            }),
            ///  host channel-3 DMA address register
            HCH3DMAADDR: mmio.Mmio(packed struct(u32) {
                ///  DMA address
                DMAADDR: u32,
            }),
            reserved384: [8]u8,
            ///  host channel-4 control register (HCH4CTL)
            HCH4CTL: mmio.Mmio(packed struct(u32) {
                ///  Maximum packet size
                MPL: u11,
                ///  Endpoint number
                EPNUM: u4,
                ///  Endpoint direction
                EPDIR: u1,
                reserved17: u1,
                ///  Low-speed device
                LSD: u1,
                ///  Endpoint type
                EPTYPE: u2,
                ///  Multiple packet count
                MPC: u2,
                ///  Device address
                DAR: u7,
                ///  Odd frame
                ODDFRM: u1,
                ///  Channel disable
                CDIS: u1,
                ///  Channel enable
                CEN: u1,
            }),
            ///  host channel-4 split transaction control register (HCH4STCTL)
            HCH4STCTL: mmio.Mmio(packed struct(u32) {
                ///  Port address
                PADDR: u7,
                ///  HUB address
                HADDR: u7,
                ///  Isochronous OUT payload continuation encoding
                ISOPCE: u2,
                ///  Complete split enable
                CSPLT: u1,
                reserved31: u14,
                ///  Enable high speed split transaction
                SPLEN: u1,
            }),
            ///  host channel-4 interrupt flag register (HCH4INTF)
            HCH4INTF: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed
                TF: u1,
                ///  Channel halted
                CH: u1,
                ///  DMA Error
                DMAER: u1,
                ///  STALL response received interrupt
                STALL: u1,
                ///  NAK response received interrupt
                NAK: u1,
                ///  ACK response received/transmitted interrupt
                ACK: u1,
                ///  NYET
                NYET: u1,
                ///  USB bus error
                USBER: u1,
                ///  Babble error
                BBER: u1,
                ///  Request queue overrun
                REQOVR: u1,
                ///  Data toggle error
                DTER: u1,
                padding: u21,
            }),
            ///  host channel-4 interrupt enable register (HCH4INTEN)
            HCH4INTEN: mmio.Mmio(packed struct(u32) {
                ///  Transfer finished interrupt enable
                TFIE: u1,
                ///  Channel halted interrupt enable
                CHIE: u1,
                ///  DMA error interrupt enable
                DMAERIE: u1,
                ///  STALL interrupt enable
                STALLIE: u1,
                ///  NAK interrupt enable
                NAKIE: u1,
                ///  ACK interrupt enable
                ACKIE: u1,
                ///  NYET interrupt enable
                NYETIE: u1,
                ///  USB bus error interrupt enable
                USBERIE: u1,
                ///  Babble error interrupt enable
                BBERIE: u1,
                ///  request queue overrun interrupt enable
                REQOVRIE: u1,
                ///  Data toggle error interrupt enable
                DTERIE: u1,
                padding: u21,
            }),
            ///  host channel-4 transfer length register
            HCH4LEN: mmio.Mmio(packed struct(u32) {
                ///  Transfer length
                TLEN: u19,
                ///  Packet count
                PCNT: u10,
                ///  Data PID
                DPID: u2,
                ///  Ping token request
                PING: u1,
            }),
            ///  host channel-4 DMA address register
            HCH4DMAADDR: mmio.Mmio(packed struct(u32) {
                ///  DMA address
                DMAADDR: u32,
            }),
            reserved416: [8]u8,
            ///  host channel-5 control register (HCH5CTL)
            HCH5CTL: mmio.Mmio(packed struct(u32) {
                ///  Maximum packet size
                MPL: u11,
                ///  Endpoint number
                EPNUM: u4,
                ///  Endpoint direction
                EPDIR: u1,
                reserved17: u1,
                ///  Low-speed device
                LSD: u1,
                ///  Endpoint type
                EPTYPE: u2,
                ///  Multiple packet count
                MPC: u2,
                ///  Device address
                DAR: u7,
                ///  Odd frame
                ODDFRM: u1,
                ///  Channel disable
                CDIS: u1,
                ///  Channel enable
                CEN: u1,
            }),
            ///  host channel-5 split transaction control register (HCH5STCTL)
            HCH5STCTL: mmio.Mmio(packed struct(u32) {
                ///  Port address
                PADDR: u7,
                ///  HUB address
                HADDR: u7,
                ///  Isochronous OUT payload continuation encoding
                ISOPCE: u2,
                ///  Complete split enable
                CSPLT: u1,
                reserved31: u14,
                ///  Enable high speed split transaction
                SPLEN: u1,
            }),
            ///  host channel-5 interrupt flag register (HCH5INTF)
            HCH5INTF: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed
                TF: u1,
                ///  Channel halted
                CH: u1,
                ///  DMA Error
                DMAER: u1,
                ///  STALL response received interrupt
                STALL: u1,
                ///  NAK response received interrupt
                NAK: u1,
                ///  ACK response received/transmitted interrupt
                ACK: u1,
                ///  NYET
                NYET: u1,
                ///  USB bus error
                USBER: u1,
                ///  Babble error
                BBER: u1,
                ///  Request queue overrun
                REQOVR: u1,
                ///  Data toggle error
                DTER: u1,
                padding: u21,
            }),
            ///  host channel-5 interrupt enable register (HCH5INTEN)
            HCH5INTEN: mmio.Mmio(packed struct(u32) {
                ///  Transfer finished interrupt enable
                TFIE: u1,
                ///  Channel halted interrupt enable
                CHIE: u1,
                ///  DMA error interrupt enable
                DMAERIE: u1,
                ///  STALL interrupt enable
                STALLIE: u1,
                ///  NAK interrupt enable
                NAKIE: u1,
                ///  ACK interrupt enable
                ACKIE: u1,
                ///  NYET interrupt enable
                NYETIE: u1,
                ///  USB bus error interrupt enable
                USBERIE: u1,
                ///  Babble error interrupt enable
                BBERIE: u1,
                ///  request queue overrun interrupt enable
                REQOVRIE: u1,
                ///  Data toggle error interrupt enable
                DTERIE: u1,
                padding: u21,
            }),
            ///  host channel-5 transfer length register
            HCH5LEN: mmio.Mmio(packed struct(u32) {
                ///  Transfer length
                TLEN: u19,
                ///  Packet count
                PCNT: u10,
                ///  Data PID
                DPID: u2,
                ///  Ping token request
                PING: u1,
            }),
            ///  host channel-5 DMA address register
            HCH5DMAADDR: mmio.Mmio(packed struct(u32) {
                ///  DMA address
                DMAADDR: u32,
            }),
            reserved448: [8]u8,
            ///  host channel-6 control register (HCH6CTL)
            HCH6CTL: mmio.Mmio(packed struct(u32) {
                ///  Maximum packet size
                MPL: u11,
                ///  Endpoint number
                EPNUM: u4,
                ///  Endpoint direction
                EPDIR: u1,
                reserved17: u1,
                ///  Low-speed device
                LSD: u1,
                ///  Endpoint type
                EPTYPE: u2,
                ///  Multiple packet count
                MPC: u2,
                ///  Device address
                DAR: u7,
                ///  Odd frame
                ODDFRM: u1,
                ///  Channel disable
                CDIS: u1,
                ///  Channel enable
                CEN: u1,
            }),
            ///  host channel-6 split transaction control register (HCH6STCTL)
            HCH6STCTL: mmio.Mmio(packed struct(u32) {
                ///  Port address
                PADDR: u7,
                ///  HUB address
                HADDR: u7,
                ///  Isochronous OUT payload continuation encoding
                ISOPCE: u2,
                ///  Complete split enable
                CSPLT: u1,
                reserved31: u14,
                ///  Enable high speed split transaction
                SPLEN: u1,
            }),
            ///  host channel-6 interrupt flag register (HCH6INTF)
            HCH6INTF: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed
                TF: u1,
                ///  Channel halted
                CH: u1,
                ///  DMA Error
                DMAER: u1,
                ///  STALL response received interrupt
                STALL: u1,
                ///  NAK response received interrupt
                NAK: u1,
                ///  ACK response received/transmitted interrupt
                ACK: u1,
                ///  NYET
                NYET: u1,
                ///  USB bus error
                USBER: u1,
                ///  Babble error
                BBER: u1,
                ///  Request queue overrun
                REQOVR: u1,
                ///  Data toggle error
                DTER: u1,
                padding: u21,
            }),
            ///  host channel-6 interrupt enable register (HCH6INTEN)
            HCH6INTEN: mmio.Mmio(packed struct(u32) {
                ///  Transfer finished interrupt enable
                TFIE: u1,
                ///  Channel halted interrupt enable
                CHIE: u1,
                ///  DMA error interrupt enable
                DMAERIE: u1,
                ///  STALL interrupt enable
                STALLIE: u1,
                ///  NAK interrupt enable
                NAKIE: u1,
                ///  ACK interrupt enable
                ACKIE: u1,
                ///  NYET interrupt enable
                NYETIE: u1,
                ///  USB bus error interrupt enable
                USBERIE: u1,
                ///  Babble error interrupt enable
                BBERIE: u1,
                ///  request queue overrun interrupt enable
                REQOVRIE: u1,
                ///  Data toggle error interrupt enable
                DTERIE: u1,
                padding: u21,
            }),
            ///  host channel-6 transfer length register
            HCH6LEN: mmio.Mmio(packed struct(u32) {
                ///  Transfer length
                TLEN: u19,
                ///  Packet count
                PCNT: u10,
                ///  Data PID
                DPID: u2,
                ///  Ping token request
                PING: u1,
            }),
            ///  host channel-6 DMA address register
            HCH6DMAADDR: mmio.Mmio(packed struct(u32) {
                ///  DMA address
                DMAADDR: u32,
            }),
            reserved480: [8]u8,
            ///  host channel-7 control register (HCH7CTL)
            HCH7CTL: mmio.Mmio(packed struct(u32) {
                ///  Maximum packet size
                MPL: u11,
                ///  Endpoint number
                EPNUM: u4,
                ///  Endpoint direction
                EPDIR: u1,
                reserved17: u1,
                ///  Low-speed device
                LSD: u1,
                ///  Endpoint type
                EPTYPE: u2,
                ///  Multiple packet count
                MPC: u2,
                ///  Device address
                DAR: u7,
                ///  Odd frame
                ODDFRM: u1,
                ///  Channel disable
                CDIS: u1,
                ///  Channel enable
                CEN: u1,
            }),
            ///  host channel-7 split transaction control register (HCH7STCTL)
            HCH7STCTL: mmio.Mmio(packed struct(u32) {
                ///  Port address
                PADDR: u7,
                ///  HUB address
                HADDR: u7,
                ///  Isochronous OUT payload continuation encoding
                ISOPCE: u2,
                ///  Complete split enable
                CSPLT: u1,
                reserved31: u14,
                ///  Enable high speed split transaction
                SPLEN: u1,
            }),
            ///  host channel-7 interrupt flag register (HCH7INTF)
            HCH7INTF: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed
                TF: u1,
                ///  Channel halted
                CH: u1,
                ///  DMA Error
                DMAER: u1,
                ///  STALL response received interrupt
                STALL: u1,
                ///  NAK response received interrupt
                NAK: u1,
                ///  ACK response received/transmitted interrupt
                ACK: u1,
                ///  NYET
                NYET: u1,
                ///  USB bus error
                USBER: u1,
                ///  Babble error
                BBER: u1,
                ///  Request queue overrun
                REQOVR: u1,
                ///  Data toggle error
                DTER: u1,
                padding: u21,
            }),
            ///  host channel-7 interrupt enable register (HCH7INTEN)
            HCH7INTEN: mmio.Mmio(packed struct(u32) {
                ///  Transfer finished interrupt enable
                TFIE: u1,
                ///  Channel halted interrupt enable
                CHIE: u1,
                ///  DMA error interrupt enable
                DMAERIE: u1,
                ///  STALL interrupt enable
                STALLIE: u1,
                ///  NAK interrupt enable
                NAKIE: u1,
                ///  ACK interrupt enable
                ACKIE: u1,
                ///  NYET interrupt enable
                NYETIE: u1,
                ///  USB bus error interrupt enable
                USBERIE: u1,
                ///  Babble error interrupt enable
                BBERIE: u1,
                ///  request queue overrun interrupt enable
                REQOVRIE: u1,
                ///  Data toggle error interrupt enable
                DTERIE: u1,
                padding: u21,
            }),
            ///  host channel-7 transfer length register
            HCH7LEN: mmio.Mmio(packed struct(u32) {
                ///  Transfer length
                TLEN: u19,
                ///  Packet count
                PCNT: u10,
                ///  Data PID
                DPID: u2,
                ///  Ping token request
                PING: u1,
            }),
            ///  host channel-7 DMA address register
            HCH7DMAADDR: mmio.Mmio(packed struct(u32) {
                ///  DMA address
                DMAADDR: u32,
            }),
            reserved512: [8]u8,
            ///  host channel-8 control register (HCH8CTL)
            HCH8CTL: mmio.Mmio(packed struct(u32) {
                ///  Maximum packet size
                MPL: u11,
                ///  Endpoint number
                EPNUM: u4,
                ///  Endpoint direction
                EPDIR: u1,
                reserved17: u1,
                ///  Low-speed device
                LSD: u1,
                ///  Endpoint type
                EPTYPE: u2,
                ///  Multiple packet count
                MPC: u2,
                ///  Device address
                DAR: u7,
                ///  Odd frame
                ODDFRM: u1,
                ///  Channel disable
                CDIS: u1,
                ///  Channel enable
                CEN: u1,
            }),
            ///  host channel-8 split transaction control register (HCH8STCTL)
            HCH8STCTL: mmio.Mmio(packed struct(u32) {
                ///  Port address
                PADDR: u7,
                ///  HUB address
                HADDR: u7,
                ///  Isochronous OUT payload continuation encoding
                ISOPCE: u2,
                ///  Complete split enable
                CSPLT: u1,
                reserved31: u14,
                ///  Enable high speed split transaction
                SPLEN: u1,
            }),
            ///  host channel-8 interrupt flag register (HCH8INTF)
            HCH8INTF: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed
                TF: u1,
                ///  Channel halted
                CH: u1,
                ///  DMA Error
                DMAER: u1,
                ///  STALL response received interrupt
                STALL: u1,
                ///  NAK response received interrupt
                NAK: u1,
                ///  ACK response received/transmitted interrupt
                ACK: u1,
                ///  NYET
                NYET: u1,
                ///  USB bus error
                USBER: u1,
                ///  Babble error
                BBER: u1,
                ///  Request queue overrun
                REQOVR: u1,
                ///  Data toggle error
                DTER: u1,
                padding: u21,
            }),
            ///  host channel-8 interrupt enable register (HCH8INTEN)
            HCH8INTEN: mmio.Mmio(packed struct(u32) {
                ///  Transfer finished interrupt enable
                TFIE: u1,
                ///  Channel halted interrupt enable
                CHIE: u1,
                ///  DMA error interrupt enable
                DMAERIE: u1,
                ///  STALL interrupt enable
                STALLIE: u1,
                ///  NAK interrupt enable
                NAKIE: u1,
                ///  ACK interrupt enable
                ACKIE: u1,
                ///  NYET interrupt enable
                NYETIE: u1,
                ///  USB bus error interrupt enable
                USBERIE: u1,
                ///  Babble error interrupt enable
                BBERIE: u1,
                ///  request queue overrun interrupt enable
                REQOVRIE: u1,
                ///  Data toggle error interrupt enable
                DTERIE: u1,
                padding: u21,
            }),
            ///  host channel-8 transfer length register
            HCH8LEN: mmio.Mmio(packed struct(u32) {
                ///  Transfer length
                TLEN: u19,
                ///  Packet count
                PCNT: u10,
                ///  Data PID
                DPID: u2,
                ///  Ping token request
                PING: u1,
            }),
            ///  host channel-8 DMA address register
            HCH8DMAADDR: mmio.Mmio(packed struct(u32) {
                ///  DMA address
                DMAADDR: u32,
            }),
            reserved544: [8]u8,
            ///  host channel-9 control register (HCH9CTL)
            HCH9CTL: mmio.Mmio(packed struct(u32) {
                ///  Maximum packet size
                MPL: u11,
                ///  Endpoint number
                EPNUM: u4,
                ///  Endpoint direction
                EPDIR: u1,
                reserved17: u1,
                ///  Low-speed device
                LSD: u1,
                ///  Endpoint type
                EPTYPE: u2,
                ///  Multiple packet count
                MPC: u2,
                ///  Device address
                DAR: u7,
                ///  Odd frame
                ODDFRM: u1,
                ///  Channel disable
                CDIS: u1,
                ///  Channel enable
                CEN: u1,
            }),
            ///  host channel-9 split transaction control register (HCH9STCTL)
            HCH9STCTL: mmio.Mmio(packed struct(u32) {
                ///  Port address
                PADDR: u7,
                ///  HUB address
                HADDR: u7,
                ///  Isochronous OUT payload continuation encoding
                ISOPCE: u2,
                ///  Complete split enable
                CSPLT: u1,
                reserved31: u14,
                ///  Enable high speed split transaction
                SPLEN: u1,
            }),
            ///  host channel-9 interrupt flag register (HCH9INTF)
            HCH9INTF: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed
                TF: u1,
                ///  Channel halted
                CH: u1,
                ///  DMA Error
                DMAER: u1,
                ///  STALL response received interrupt
                STALL: u1,
                ///  NAK response received interrupt
                NAK: u1,
                ///  ACK response received/transmitted interrupt
                ACK: u1,
                ///  NYET
                NYET: u1,
                ///  USB bus error
                USBER: u1,
                ///  Babble error
                BBER: u1,
                ///  Request queue overrun
                REQOVR: u1,
                ///  Data toggle error
                DTER: u1,
                padding: u21,
            }),
            ///  host channel-9 interrupt enable register (HCH9INTEN)
            HCH9INTEN: mmio.Mmio(packed struct(u32) {
                ///  Transfer finished interrupt enable
                TFIE: u1,
                ///  Channel halted interrupt enable
                CHIE: u1,
                ///  DMA error interrupt enable
                DMAERIE: u1,
                ///  STALL interrupt enable
                STALLIE: u1,
                ///  NAK interrupt enable
                NAKIE: u1,
                ///  ACK interrupt enable
                ACKIE: u1,
                ///  NYET interrupt enable
                NYETIE: u1,
                ///  USB bus error interrupt enable
                USBERIE: u1,
                ///  Babble error interrupt enable
                BBERIE: u1,
                ///  request queue overrun interrupt enable
                REQOVRIE: u1,
                ///  Data toggle error interrupt enable
                DTERIE: u1,
                padding: u21,
            }),
            ///  host channel-9 transfer length register
            HCH9LEN: mmio.Mmio(packed struct(u32) {
                ///  Transfer length
                TLEN: u19,
                ///  Packet count
                PCNT: u10,
                ///  Data PID
                DPID: u2,
                ///  Ping token request
                PING: u1,
            }),
            ///  host channel-9 DMA address register
            HCH9DMAADDR: mmio.Mmio(packed struct(u32) {
                ///  DMA address
                DMAADDR: u32,
            }),
            reserved576: [8]u8,
            ///  host channel-10 control register (HCH10CTL)
            HCH10CTL: mmio.Mmio(packed struct(u32) {
                ///  Maximum packet size
                MPL: u11,
                ///  Endpoint number
                EPNUM: u4,
                ///  Endpoint direction
                EPDIR: u1,
                reserved17: u1,
                ///  Low-speed device
                LSD: u1,
                ///  Endpoint type
                EPTYPE: u2,
                ///  Multiple packet count
                MPC: u2,
                ///  Device address
                DAR: u7,
                ///  Odd frame
                ODDFRM: u1,
                ///  Channel disable
                CDIS: u1,
                ///  Channel enable
                CEN: u1,
            }),
            ///  host channel-10 split transaction control register (HCH10STCTL)
            HCH10STCTL: mmio.Mmio(packed struct(u32) {
                ///  Port address
                PADDR: u7,
                ///  HUB address
                HADDR: u7,
                ///  Isochronous OUT payload continuation encoding
                ISOPCE: u2,
                ///  Complete split enable
                CSPLT: u1,
                reserved31: u14,
                ///  Enable high speed split transaction
                SPLEN: u1,
            }),
            ///  host channel-10 interrupt flag register (HCH10INTF)
            HCH10INTF: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed
                TF: u1,
                ///  Channel halted
                CH: u1,
                ///  DMA Error
                DMAER: u1,
                ///  STALL response received interrupt
                STALL: u1,
                ///  NAK response received interrupt
                NAK: u1,
                ///  ACK response received/transmitted interrupt
                ACK: u1,
                ///  NYET
                NYET: u1,
                ///  USB bus error
                USBER: u1,
                ///  Babble error
                BBER: u1,
                ///  Request queue overrun
                REQOVR: u1,
                ///  Data toggle error
                DTER: u1,
                padding: u21,
            }),
            ///  host channel-10 interrupt enable register (HCH10INTEN)
            HCH10INTEN: mmio.Mmio(packed struct(u32) {
                ///  Transfer finished interrupt enable
                TFIE: u1,
                ///  Channel halted interrupt enable
                CHIE: u1,
                ///  DMA error interrupt enable
                DMAERIE: u1,
                ///  STALL interrupt enable
                STALLIE: u1,
                ///  NAK interrupt enable
                NAKIE: u1,
                ///  ACK interrupt enable
                ACKIE: u1,
                ///  NYET interrupt enable
                NYETIE: u1,
                ///  USB bus error interrupt enable
                USBERIE: u1,
                ///  Babble error interrupt enable
                BBERIE: u1,
                ///  request queue overrun interrupt enable
                REQOVRIE: u1,
                ///  Data toggle error interrupt enable
                DTERIE: u1,
                padding: u21,
            }),
            ///  host channel-10 transfer length register
            HCH10LEN: mmio.Mmio(packed struct(u32) {
                ///  Transfer length
                TLEN: u19,
                ///  Packet count
                PCNT: u10,
                ///  Data PID
                DPID: u2,
                ///  Ping token request
                PING: u1,
            }),
            ///  host channel-10 DMA address register
            HCH10DMAADDR: mmio.Mmio(packed struct(u32) {
                ///  DMA address
                DMAADDR: u32,
            }),
            reserved608: [8]u8,
            ///  host channel-11 control register (HCH11CTL)
            HCH11CTL: mmio.Mmio(packed struct(u32) {
                ///  Maximum packet size
                MPL: u11,
                ///  Endpoint number
                EPNUM: u4,
                ///  Endpoint direction
                EPDIR: u1,
                reserved17: u1,
                ///  Low-speed device
                LSD: u1,
                ///  Endpoint type
                EPTYPE: u2,
                ///  Multiple packet count
                MPC: u2,
                ///  Device address
                DAR: u7,
                ///  Odd frame
                ODDFRM: u1,
                ///  Channel disable
                CDIS: u1,
                ///  Channel enable
                CEN: u1,
            }),
            ///  host channel-11 split transaction control register (HCH11STCTL)
            HCH11STCTL: mmio.Mmio(packed struct(u32) {
                ///  Port address
                PADDR: u7,
                ///  HUB address
                HADDR: u7,
                ///  Isochronous OUT payload continuation encoding
                ISOPCE: u2,
                ///  Complete split enable
                CSPLT: u1,
                reserved31: u14,
                ///  Enable high speed split transaction
                SPLEN: u1,
            }),
            ///  host channel-11 interrupt flag register (HCH11INTF)
            HCH11INTF: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed
                TF: u1,
                ///  Channel halted
                CH: u1,
                ///  DMA Error
                DMAER: u1,
                ///  STALL response received interrupt
                STALL: u1,
                ///  NAK response received interrupt
                NAK: u1,
                ///  ACK response received/transmitted interrupt
                ACK: u1,
                ///  NYET
                NYET: u1,
                ///  USB bus error
                USBER: u1,
                ///  Babble error
                BBER: u1,
                ///  Request queue overrun
                REQOVR: u1,
                ///  Data toggle error
                DTER: u1,
                padding: u21,
            }),
            ///  host channel-11 interrupt enable register (HCH11INTEN)
            HCH11INTEN: mmio.Mmio(packed struct(u32) {
                ///  Transfer finished interrupt enable
                TFIE: u1,
                ///  Channel halted interrupt enable
                CHIE: u1,
                ///  DMA error interrupt enable
                DMAERIE: u1,
                ///  STALL interrupt enable
                STALLIE: u1,
                ///  NAK interrupt enable
                NAKIE: u1,
                ///  ACK interrupt enable
                ACKIE: u1,
                ///  NYET interrupt enable
                NYETIE: u1,
                ///  USB bus error interrupt enable
                USBERIE: u1,
                ///  Babble error interrupt enable
                BBERIE: u1,
                ///  request queue overrun interrupt enable
                REQOVRIE: u1,
                ///  Data toggle error interrupt enable
                DTERIE: u1,
                padding: u21,
            }),
            ///  host channel-11 transfer length register
            HCH11LEN: mmio.Mmio(packed struct(u32) {
                ///  Transfer length
                TLEN: u19,
                ///  Packet count
                PCNT: u10,
                ///  Data PID
                DPID: u2,
                ///  Ping token request
                PING: u1,
            }),
            ///  host channel-11 DMA address register
            HCH11DMAADDR: mmio.Mmio(packed struct(u32) {
                ///  DMA address
                DMAADDR: u32,
            }),
        };

        ///  Ethernet: DMA controller operation
        pub const ENET_DMA = extern struct {
            ///  Ethernet DMA bus control register
            DMA_BCTL: mmio.Mmio(packed struct(u32) {
                ///  Software reset
                SWR: u1,
                ///  DMA Arbitration
                DAB: u1,
                ///  Descriptor skip length
                DPSL: u5,
                ///  Descriptor format mode
                DFM: u1,
                ///  Programmable burst length
                PGBL: u6,
                ///  RxDMA and TxDMA transfer priority ratio
                RTPR: u2,
                ///  Fixed burst
                FB: u1,
                ///  Rx DMA PGBL
                RXDP: u6,
                ///  Use independent PGBL
                UIP: u1,
                ///  Four times PGBL mode
                FPBL: u1,
                ///  Address-aligned
                AA: u1,
                ///  Mixed burst
                MB: u1,
                padding: u5,
            }),
            ///  Ethernet DMA transmit poll enable register
            DMA_TPEN: mmio.Mmio(packed struct(u32) {
                ///  Transmit poll enable
                TPE: u32,
            }),
            ///  Ethernet DMA receive poll enable register
            DMA_RPEN: mmio.Mmio(packed struct(u32) {
                ///  Receive poll enable
                RPE: u32,
            }),
            ///  Ethernet DMA receive descriptor table address register
            DMA_RDTADDR: mmio.Mmio(packed struct(u32) {
                ///  Start address of receive table
                SRT: u32,
            }),
            ///  Ethernet DMA transmit descriptor table address register
            DMA_TDTADDR: mmio.Mmio(packed struct(u32) {
                ///  Start address of transmit table
                STT: u32,
            }),
            ///  Ethernet DMA status register
            DMA_STAT: mmio.Mmio(packed struct(u32) {
                ///  Transmit status
                TS: u1,
                ///  Transmit process stopped status
                TPS: u1,
                ///  Transmit buffer unavailable status
                TBU: u1,
                ///  Transmit jabber timeout status
                TJT: u1,
                ///  Receive overflow status
                RO: u1,
                ///  Transmit underflow status
                TU: u1,
                ///  Receive status
                RS: u1,
                ///  Receive buffer unavailable status
                RBU: u1,
                ///  Receive process stopped status
                RPS: u1,
                ///  Receive watchdog timeout status
                RWT: u1,
                ///  Early transmit status
                ET: u1,
                reserved13: u2,
                ///  Fatal bus error status
                FBE: u1,
                ///  Early receive status
                ER: u1,
                ///  Abnormal interrupt summary
                AI: u1,
                ///  Normal interrupt summary
                NI: u1,
                ///  Receive process state
                RP: u3,
                ///  Transmit process state
                TP: u3,
                ///  Error bits status
                EB: u3,
                reserved27: u1,
                ///  MSC status
                MSC: u1,
                ///  WUM status
                WUM: u1,
                ///  Time stamp trigger status
                TST: u1,
                padding: u2,
            }),
            ///  Ethernet DMA control register
            DMA_CTL: mmio.Mmio(packed struct(u32) {
                reserved1: u1,
                ///  Start/stop receive enable
                SRE: u1,
                ///  Operate on second frame
                OSF: u1,
                ///  Receive threshold control
                RTHC: u2,
                reserved6: u1,
                ///  Forward undersized good frames
                FUF: u1,
                ///  Forward error frames
                FERF: u1,
                reserved13: u5,
                ///  Start/stop transmission enable
                STE: u1,
                ///  Transmit threshold control
                TTHC: u3,
                reserved20: u3,
                ///  Flush transmit FIFO
                FTF: u1,
                ///  Transmit Store-and-Forward
                TSFD: u1,
                reserved24: u2,
                ///  Disable flushing of received frames
                DAFRF: u1,
                ///  Receive Store-and-Forward
                RSFD: u1,
                ///  Dropping of TCP/IP checksum error frames disable
                DTCERFD: u1,
                padding: u5,
            }),
            ///  Ethernet DMA interrupt enable register
            DMA_INTEN: mmio.Mmio(packed struct(u32) {
                ///  Transmit interrupt enable
                TIEN: u1,
                ///  Transmit process stopped interrupt enable
                TPSIEN: u1,
                ///  Transmit buffer unavailable interrupt enable
                TBUIEN: u1,
                ///  Transmit jabber timeout interrupt enable
                TJTIEN: u1,
                ///  Receive overflow interrupt enable
                ROIEN: u1,
                ///  Transmit underflow interrupt enable
                TUIEN: u1,
                ///  Receive interrupt enable
                RIEN: u1,
                ///  Receive buffer unavailable interrupt enable
                RBUIEN: u1,
                ///  Receive process stopped interrupt enable
                RPSIEN: u1,
                ///  receive watchdog timeout interrupt enable
                RWTIEN: u1,
                ///  Early transmit interrupt enable
                ETIEN: u1,
                reserved13: u2,
                ///  Fatal bus error interrupt enable
                FBEIEN: u1,
                ///  Early receive interrupt enable
                ERIEN: u1,
                ///  Abnormal interrupt summary enable
                AIEN: u1,
                ///  Normal interrupt summary enable
                NIEN: u1,
                padding: u15,
            }),
            ///  Ethernet DMA missed frame and buffer overflow counter register
            DMA_MFBOCNT: mmio.Mmio(packed struct(u32) {
                ///  Missed frames by the controller
                MSFC: u16,
                reserved17: u1,
                ///  Missed frames by the application
                MSFA: u11,
                padding: u4,
            }),
            ///  Ethernet DMA receive state watchdog counter register
            DMA_RSWDC: mmio.Mmio(packed struct(u32) {
                ///  Watchdog counter for receive status (RS)
                WDCFRS: u8,
                padding: u24,
            }),
            reserved72: [32]u8,
            ///  DMA current transmit descriptor address register
            DMA_CTDADDR: mmio.Mmio(packed struct(u32) {
                ///  transmit descriptor address pointer
                TDAP: u32,
            }),
            ///  Ethernet DMA current receive descriptor address register
            DMA_CRDADDR: mmio.Mmio(packed struct(u32) {
                ///  Receive descriptor address pointer
                RDAP: u32,
            }),
            ///  Ethernet DMA current transmit buffer address register
            DMA_CTBADDR: mmio.Mmio(packed struct(u32) {
                ///  Transmit buffer address pointer
                TBAP: u32,
            }),
            ///  Ethernet DMA current receive buffer address register
            DMA_CRBADDR: mmio.Mmio(packed struct(u32) {
                ///  receive buffer address pointer
                RBAP: u32,
            }),
        };

        ///  MAC flow control threshold register
        pub const ENET_MAC_FCTH = extern struct {
            ///  Ethernet MAC flow control threshold register
            MAC_FCTH: mmio.Mmio(packed struct(u32) {
                ///  Threshold of active flow control
                RFA: u3,
                reserved4: u1,
                ///  Threshold of deactive flow control
                RFD: u3,
                padding: u25,
            }),
        };

        ///  Ethernet: media access control
        pub const ENET_MAC = extern struct {
            ///  Ethernet MAC configuration register (MAC_CFG)
            MAC_CFG: mmio.Mmio(packed struct(u32) {
                reserved2: u2,
                ///  Receiver enable
                REN: u1,
                ///  Transmitter enable
                TEN: u1,
                ///  Deferral check
                DFC: u1,
                ///  Back-off limit
                BOL: u2,
                ///  Automatic pad/CRC drop
                APCD: u1,
                reserved9: u1,
                ///  Retry disable
                RTD: u1,
                ///  IP frame checksum offload
                IPFCO: u1,
                ///  Duplex mode
                DPM: u1,
                ///  Loopback mode
                LBM: u1,
                ///  Receive own disable
                ROD: u1,
                ///  Fast Ethernet speed
                SPD: u1,
                reserved16: u1,
                ///  Carrier sense disable
                CSD: u1,
                ///  Inter frame gap bit selection
                IGBS: u3,
                reserved22: u2,
                ///  Jabber disable
                JBD: u1,
                ///  Watchdog disable
                WDD: u1,
                reserved25: u1,
                ///  Type Frame CRC Dropping
                TFCD: u1,
                padding: u6,
            }),
            ///  Ethernet MAC frame filter register (MAC_FRMF)
            MAC_FRMF: mmio.Mmio(packed struct(u32) {
                ///  Promiscuous mode
                PM: u1,
                ///  Hash unicast filter
                HUF: u1,
                ///  Hash multicast filter
                HMF: u1,
                ///  Destination address inverse filtering
                DAIFLT: u1,
                ///  multicast filter disable
                MFD: u1,
                ///  Broadcast frames disable
                BFRMD: u1,
                ///  Pass control frames
                PCFRM: u2,
                ///  Source address inverse filtering
                SAIFLT: u1,
                ///  Source address filter
                SAFLT: u1,
                ///  Hash or perfect filter
                HPFLT: u1,
                reserved31: u20,
                ///  Frames all receive
                FAR: u1,
            }),
            ///  Ethernet MAC hash list high register
            MAC_HLH: mmio.Mmio(packed struct(u32) {
                ///  Hash list high
                HLH: u32,
            }),
            ///  Ethernet MAC hash list low register
            MAC_HLL: mmio.Mmio(packed struct(u32) {
                ///  Hash list low
                HLL: u32,
            }),
            ///  Ethernet MAC PHY control register (MAC_PHY_CTL)
            MAC_PHY_CTL: mmio.Mmio(packed struct(u32) {
                ///  PHY busy
                PB: u1,
                ///  PHY write
                PW: u1,
                ///  Clock range
                CLR: u3,
                reserved6: u1,
                ///  PHY register
                PR: u5,
                ///  PHY address
                PA: u5,
                padding: u16,
            }),
            ///  Ethernet MAC MII data register (MAC_PHY_DATA)
            MAC_PHY_DATA: mmio.Mmio(packed struct(u32) {
                ///  PHY data
                PD: u16,
                padding: u16,
            }),
            ///  Ethernet MAC flow control register (MAC_FCTL)
            MAC_FCTL: mmio.Mmio(packed struct(u32) {
                ///  Flow control busy/back pressure activate
                FLCB_BKPA: u1,
                ///  Transmit flow control enable
                TFCEN: u1,
                ///  Receive flow control enable
                RFCEN: u1,
                ///  Unicast pause frame detect
                UPFDT: u1,
                ///  Pause low threshold
                PLTS: u2,
                reserved7: u1,
                ///  Disable Zero-quanta pause
                DZQP: u1,
                reserved16: u8,
                ///  Pause time
                PTM: u16,
            }),
            ///  Ethernet MAC VLAN tag register (MAC_VLT)
            MAC_VLT: mmio.Mmio(packed struct(u32) {
                ///  VLAN tag identifier (for receive frames)
                VLTI: u16,
                ///  12-bit VLAN tag comparison
                VLTC: u1,
                padding: u15,
            }),
            reserved40: [8]u8,
            ///  Ethernet MAC remote wakeup frame filter register (MAC_RWFF)
            MAC_RWFF: u32,
            ///  Ethernet MAC wakeup management register (MAC_WUM)
            MAC_WUM: mmio.Mmio(packed struct(u32) {
                ///  Power down
                PWD: u1,
                ///  Magic Packet enable
                MPEN: u1,
                ///  Wakeup frame enable
                WFEN: u1,
                reserved5: u2,
                ///  Magic packet received
                MPKR: u1,
                ///  Wakeup frame received
                WUFR: u1,
                reserved9: u2,
                ///  Global unicast
                GU: u1,
                reserved31: u21,
                ///  Wakeup frame filter register pointer reset
                WUFFRPR: u1,
            }),
            reserved52: [4]u8,
            ///  Ethernet MAC debug register (MAC_DBG)
            MAC_DBG: mmio.Mmio(packed struct(u32) {
                ///  MAC receive state not idle
                MRNI: u1,
                ///  Rx asynchronous FIFO status
                RXAFS: u2,
                reserved4: u1,
                ///  RxFIFO is writing
                RXFW: u1,
                ///  RxFIFO read operation status
                RXFRS: u2,
                reserved8: u1,
                ///  RxFIFO state
                RXFS: u2,
                reserved16: u6,
                ///  MAC transmit state not idle
                MTNI: u1,
                ///  Status of MAC transmitter
                SOMT: u2,
                ///  Pause condition status
                PCS: u1,
                ///  TxFIFO read operation status
                TXFRS: u2,
                ///  TxFIFO is writing
                TXFW: u1,
                reserved24: u1,
                ///  TxFIFO not empty flag
                TXFNE: u1,
                ///  TxFIFO Full flag
                TXFF: u1,
                padding: u6,
            }),
            ///  Ethernet MAC interrupt flag register (MAC_INTF)
            MAC_INTF: mmio.Mmio(packed struct(u32) {
                reserved3: u3,
                ///  WUM status
                WUM: u1,
                ///  MSC status
                MSC: u1,
                ///  MSC receive status
                MSCR: u1,
                ///  MSC transmit status
                MSCT: u1,
                reserved9: u2,
                ///  Time stamp trigger status
                TMST: u1,
                padding: u22,
            }),
            ///  Ethernet MAC interrupt mask register (MAC_INTMSK)
            MAC_INTMSK: mmio.Mmio(packed struct(u32) {
                reserved3: u3,
                ///  WUM interrupt mask
                WUMIM: u1,
                reserved9: u5,
                ///  Time stamp trigger interrupt mask
                TMSTIM: u1,
                padding: u22,
            }),
            ///  Ethernet MAC address 0 high register (MAC_ADDR0H)
            MAC_ADDR0H: mmio.Mmio(packed struct(u32) {
                ///  MAC address0 high
                ADDR0H: u16,
                reserved31: u15,
                ///  Always 1
                MO: u1,
            }),
            ///  Ethernet MAC address 0 low register
            MAC_ADDR0L: mmio.Mmio(packed struct(u32) {
                ///  MAC address0 low
                ADDR0L: u32,
            }),
            ///  Ethernet MAC address 1 high register (MAC_ADDR1H)
            MAC_ADDR1H: mmio.Mmio(packed struct(u32) {
                ///  MAC address1 high
                ADDR1H: u16,
                reserved24: u8,
                ///  Mask byte
                MB: u6,
                ///  Source address filter
                SAF: u1,
                ///  Address filter enable
                AFE: u1,
            }),
            ///  Ethernet MAC address1 low register
            MAC_ADDR1L: mmio.Mmio(packed struct(u32) {
                ///  MAC address1 low
                ADDR1L: u32,
            }),
            ///  Ethernet MAC address 2 high register (MAC_ADDR2H)
            MAC_ADDR2H: mmio.Mmio(packed struct(u32) {
                ///  Ethernet MAC address 2 high register
                ADDR2H: u16,
                reserved24: u8,
                ///  Mask byte
                MB: u6,
                ///  Source address filter
                SAF: u1,
                ///  Address filter enable
                AFE: u1,
            }),
            ///  Ethernet MAC address 2 low register
            MAC_ADDR2L: mmio.Mmio(packed struct(u32) {
                ///  MAC address2 low
                ADDR2L: u32,
            }),
            ///  Ethernet MAC address 3 high register (MAC_ADDR3H)
            MAC_ADDR3H: mmio.Mmio(packed struct(u32) {
                ///  MAC address3 high
                ADDR3H: u16,
                reserved24: u8,
                ///  Mask byte
                MB: u6,
                ///  Source address filter
                SAF: u1,
                ///  Address filter enable
                AFE: u1,
            }),
            ///  Ethernet MAC address 3 low register
            MAC_ADDR3L: mmio.Mmio(packed struct(u32) {
                ///  MAC address3 low
                ADDR3L: u32,
            }),
        };

        ///  Ethernet: MAC statistics counters
        pub const ENET_MSC = extern struct {
            ///  Ethernet MSC control register (MSC_CTL)
            MSC_CTL: mmio.Mmio(packed struct(u32) {
                ///  Counter reset
                CTR: u1,
                ///  Counter stop rollover
                CTSR: u1,
                ///  Reset on read
                RTOR: u1,
                ///  MSC counter freeze
                MCFZ: u1,
                ///  Preset MSC counter
                PMC: u1,
                ///  Almost full or half preset mode
                AFHPM: u1,
                padding: u26,
            }),
            ///  Ethernet MSC receive interrupt flag register (MSC_RINTF)
            MSC_RINTF: mmio.Mmio(packed struct(u32) {
                reserved5: u5,
                ///  Received frames CRC error
                RFCE: u1,
                ///  Received frames alignment error
                RFAE: u1,
                reserved17: u10,
                ///  Received Good Unicast Frames
                RGUF: u1,
                padding: u14,
            }),
            ///  Ethernet MSC transmit interrupt flag register (MSC_TINTF)
            MSC_TINTF: mmio.Mmio(packed struct(u32) {
                reserved14: u14,
                ///  Transmitted good frames single collision
                TGFSC: u1,
                ///  Transmitted good frames more single collision
                TGFMSC: u1,
                reserved21: u5,
                ///  Transmitted good frames
                TGF: u1,
                padding: u10,
            }),
            ///  Ethernet MSC receive interrupt mask register (MSC_RINTMSK)
            MSC_RINTMSK: mmio.Mmio(packed struct(u32) {
                reserved5: u5,
                ///  Received frame CRC error interrupt mask
                RFCEIM: u1,
                ///  Received frames alignment error interrupt mask
                RFAEIM: u1,
                reserved17: u10,
                ///  Received good unicast frames interrupt mask
                RGUFIM: u1,
                padding: u14,
            }),
            ///  Ethernet MSC transmit interrupt mask register (MSC_TINTMSK)
            MSC_TINTMSK: mmio.Mmio(packed struct(u32) {
                reserved14: u14,
                ///  Transmitted good frames single collision interrupt mask
                TGFSCIM: u1,
                ///  Transmitted good frames more single interrupt collision mask
                TGFMSCIM: u1,
                reserved21: u5,
                ///  Transmitted good frames interrupt mask
                TGFIM: u1,
                padding: u10,
            }),
            reserved76: [56]u8,
            ///  Ethernet MSC transmitted good frames after a single collision counter
            MSC_SCCNT: mmio.Mmio(packed struct(u32) {
                ///  Transmitted good frames after a single collision counter
                SCC: u32,
            }),
            ///  Ethernet MSC transmitted good frames after more than a single collision
            MSC_MSCCNT: mmio.Mmio(packed struct(u32) {
                ///  Transmitted good frames after more than a single collision counter
                MSCC: u32,
            }),
            reserved104: [20]u8,
            ///  Ethernet MSC transmitted good frames counter register
            MSC_TGFCNT: mmio.Mmio(packed struct(u32) {
                ///  Transmitted good frames counter
                TGF: u32,
            }),
            reserved148: [40]u8,
            ///  Ethernet MSC received frames with CRC error counter register
            MSC_RFCECNT: mmio.Mmio(packed struct(u32) {
                ///  Received frames with CRC error counter
                RFCER: u32,
            }),
            ///  Ethernet MSC received frames with alignment error counter register
            MSC_RFAECNT: mmio.Mmio(packed struct(u32) {
                ///  Received frames with alignment error counter
                RFAER: u32,
            }),
            reserved196: [40]u8,
            ///  MSC received good unicast frames counter register
            MSC_RGUFCNT: mmio.Mmio(packed struct(u32) {
                ///  Received good unicast frames counter
                RGUF: u32,
            }),
        };

        ///  Ethernet: Precision time protocol
        pub const ENET_PTP = extern struct {
            ///  Ethernet PTP time stamp control register (PTP_TSCTL)
            PTP_TSCTL: mmio.Mmio(packed struct(u32) {
                ///  Time stamp enable
                TMSEN: u1,
                ///  Time stamp fine or coarse update
                TMSFCU: u1,
                ///  Time stamp system time initialize
                TMSSTI: u1,
                ///  Time stamp system time update
                TMSSTU: u1,
                ///  Time stamp interrupt trigger enable
                TMSITEN: u1,
                ///  Time stamp addend register update
                TMSARU: u1,
                reserved8: u2,
                ///  All received frames snapshot enable
                ARFSEN: u1,
                ///  Subsecond counter rollover mode
                SCROM: u1,
                ///  PTP frame snooping version
                PFSV: u1,
                ///  Received Ethernet snapshot enable
                ESEN: u1,
                ///  Received IPv6 snapshot enable
                IP6SEN: u1,
                ///  Received IPv4 snapshot enable
                IP4SEN: u1,
                ///  Received event type message snapshot enable
                ETMSEN: u1,
                ///  Received master node message snapshot enable
                MNMSEN: u1,
                ///  Clock node type for time stamp
                CKNT: u2,
                ///  MAC address filter enable for PTP frame
                MAFEN: u1,
                padding: u13,
            }),
            ///  Ethernet PTP subsecond increment register
            PTP_SSINC: mmio.Mmio(packed struct(u32) {
                ///  System time subsecond increment
                STMSSI: u8,
                padding: u24,
            }),
            ///  Ethernet PTP time stamp high register
            PTP_TSH: mmio.Mmio(packed struct(u32) {
                ///  System time second
                STMS: u32,
            }),
            ///  Ethernet PTP time stamp low register (PTP_TSL)
            PTP_TSL: mmio.Mmio(packed struct(u32) {
                ///  System time subseconds
                STMSS: u31,
                ///  System time sign
                STS: u1,
            }),
            ///  Ethernet PTP time stamp high update register
            PTP_TSUH: mmio.Mmio(packed struct(u32) {
                ///  Time stamp update second
                TMSUS: u32,
            }),
            ///  Ethernet PTP time stamp low update register (PTP_TSUL)
            PTP_TSUL: mmio.Mmio(packed struct(u32) {
                ///  Time stamp update subseconds
                TMSUSS: u31,
                ///  Time stamp update positive or negative sign
                TMSUPNS: u1,
            }),
            ///  Ethernet PTP time stamp addend register
            PTP_TSADDEND: mmio.Mmio(packed struct(u32) {
                ///  Time stamp addend
                TMSA: u32,
            }),
            ///  Ethernet PTP expected time high register
            PTP_ETH: mmio.Mmio(packed struct(u32) {
                ///  Expected time stamp high
                ETSH: u32,
            }),
            ///  Ethernet PTP expected time low register
            PTP_ETL: mmio.Mmio(packed struct(u32) {
                ///  Expected time stamp low
                ETSL: u32,
            }),
            reserved40: [4]u8,
            ///  Ethernet PTP time stamp flag register
            PTP_TSF: mmio.Mmio(packed struct(u32) {
                ///  Timestamp second counter overflow
                TSSCO: u1,
                ///  Target time match
                TTM: u1,
                padding: u30,
            }),
            ///  Ethernet PTP PPS control register
            PTP_PPSCTL: mmio.Mmio(packed struct(u32) {
                ///  PPS output frequency configure
                PPSOFC: u4,
                padding: u28,
            }),
        };

        ///  External memory controller
        pub const EXMC = extern struct {
            ///  SRAM/NOR flash control register 0
            SNCTL0: mmio.Mmio(packed struct(u32) {
                ///  NOR bank enable
                NRBKEN: u1,
                ///  NOR bank memory address/data multiplexing
                NRMUX: u1,
                ///  NOR bank memory type
                NRTP: u2,
                ///  NOR bank memory data bus width
                NRW: u2,
                ///  NOR Flash access enable
                NREN: u1,
                reserved8: u1,
                ///  Synchronous burst enable
                SBRSTEN: u1,
                ///  NWAIT signal polarity
                NRWTPOL: u1,
                ///  Wrapped burst mode enable
                WRAPEN: u1,
                ///  NWAIT signal configuration, only work in synchronous mode
                NRWTCFG: u1,
                ///  Write enable
                WREN: u1,
                ///  NWAIT signal enable
                NRWTEN: u1,
                ///  Extended mode enable
                EXMODEN: u1,
                ///  Asynchronous wait
                ASYNCWAIT: u1,
                ///  CRAM page size
                CPS: u3,
                ///  Synchronous write
                SYNCWR: u1,
                ///  Consecutive Clock
                CCK: u1,
                padding: u11,
            }),
            ///  SRAM/NOR flash timing configuration register 0
            SNTCFG0: mmio.Mmio(packed struct(u32) {
                ///  Address setup time
                ASET: u4,
                ///  Address hold time
                AHLD: u4,
                ///  Data setup time
                DSET: u8,
                ///  Bus latency
                BUSLAT: u4,
                ///  Synchronous clock divide ratio
                CKDIV: u4,
                ///  Data latency for NOR Flash
                DLAT: u4,
                ///  Asynchronous access mode
                ASYNCMOD: u2,
                padding: u2,
            }),
            ///  SRAM/NOR flash control register 1
            SNCTL1: mmio.Mmio(packed struct(u32) {
                ///  NOR bank enable
                NRBKEN: u1,
                ///  NOR bank memory address/data multiplexing
                NRMUX: u1,
                ///  NOR bank memory type
                NRTP: u2,
                ///  NOR bank memory data bus width
                NRW: u2,
                ///  NOR Flash access enable
                NREN: u1,
                reserved8: u1,
                ///  Synchronous burst enable
                SBRSTEN: u1,
                ///  NWAIT signal polarity
                NRWTPOL: u1,
                ///  Wrapped burst mode enable
                WRAPEN: u1,
                ///  NWAIT signal configuration, only work in synchronous mode
                NRWTCFG: u1,
                ///  Write enable
                WREN: u1,
                ///  NWAIT signal enable
                NRWTEN: u1,
                ///  Extended mode enable
                EXMODEN: u1,
                ///  Asynchronous wait
                ASYNCWAIT: u1,
                ///  CRAM page size
                CPS: u3,
                ///  Synchronous write
                SYNCWR: u1,
                ///  Consecutive Clock
                CCK: u1,
                padding: u11,
            }),
            ///  SRAM/NOR flash timing configuration register 1
            SNTCFG1: mmio.Mmio(packed struct(u32) {
                ///  Address setup time
                ASET: u4,
                ///  Address hold time
                AHLD: u4,
                ///  Data setup time
                DSET: u8,
                ///  Bus latency
                BUSLAT: u4,
                ///  Synchronous clock divide ratio
                CKDIV: u4,
                ///  Data latency for NOR Flash
                DLAT: u4,
                ///  Asynchronous access mode
                ASYNCMOD: u2,
                padding: u2,
            }),
            ///  SRAM/NOR flash control register 2
            SNCTL2: mmio.Mmio(packed struct(u32) {
                ///  NOR bank enable
                NRBKEN: u1,
                ///  NOR bank memory address/data multiplexing
                NRMUX: u1,
                ///  NOR bank memory type
                NRTP: u2,
                ///  NOR bank memory data bus width
                NRW: u2,
                ///  NOR Flash access enable
                NREN: u1,
                reserved8: u1,
                ///  Synchronous burst enable
                SBRSTEN: u1,
                ///  NWAIT signal polarity
                NRWTPOL: u1,
                ///  Wrapped burst mode enable
                WRAPEN: u1,
                ///  NWAIT signal configuration, only work in synchronous mode
                NRWTCFG: u1,
                ///  Write enable
                WREN: u1,
                ///  NWAIT signal enable
                NRWTEN: u1,
                ///  Extended mode enable
                EXMODEN: u1,
                ///  Asynchronous wait
                ASYNCWAIT: u1,
                ///  CRAM page size
                CPS: u3,
                ///  Synchronous write
                SYNCWR: u1,
                ///  Consecutive Clock
                CCK: u1,
                padding: u11,
            }),
            ///  SRAM/NOR flash timing configuration register 2
            SNTCFG2: mmio.Mmio(packed struct(u32) {
                ///  Address setup time
                ASET: u4,
                ///  Address hold time
                AHLD: u4,
                ///  Data setup time
                DSET: u8,
                ///  Bus latency
                BUSLAT: u4,
                ///  Synchronous clock divide ratio
                CKDIV: u4,
                ///  Data latency for NOR Flash
                DLAT: u4,
                ///  Asynchronous access mode
                ASYNCMOD: u2,
                padding: u2,
            }),
            ///  SRAM/NOR flash control register 3
            SNCTL3: mmio.Mmio(packed struct(u32) {
                ///  NOR bank enable
                NRBKEN: u1,
                ///  NOR bank memory address/data multiplexing
                NRMUX: u1,
                ///  NOR bank memory type
                NRTP: u2,
                ///  NOR bank memory data bus width
                NRW: u2,
                ///  NOR Flash access enable
                NREN: u1,
                reserved8: u1,
                ///  Synchronous burst enable
                SBRSTEN: u1,
                ///  NWAIT signal polarity
                NRWTPOL: u1,
                ///  Wrapped burst mode enable
                WRAPEN: u1,
                ///  NWAIT signal configuration, only work in synchronous mode
                NRWTCFG: u1,
                ///  Write enable
                WREN: u1,
                ///  NWAIT signal enable
                NRWTEN: u1,
                ///  Extended mode enable
                EXMODEN: u1,
                ///  Asynchronous wait
                ASYNCWAIT: u1,
                ///  CRAM page size
                CPS: u3,
                ///  Synchronous write
                SYNCWR: u1,
                ///  Consecutive Clock
                CCK: u1,
                padding: u11,
            }),
            ///  SRAM/NOR flash timing configuration register 3
            SNTCFG3: mmio.Mmio(packed struct(u32) {
                ///  Address setup time
                ASET: u4,
                ///  Address hold time
                AHLD: u4,
                ///  Data setup time
                DSET: u8,
                ///  Bus latency
                BUSLAT: u4,
                ///  Synchronous clock divide ratio
                CKDIV: u4,
                ///  Data latency for NOR Flash
                DLAT: u4,
                ///  Asynchronous access mode
                ASYNCMOD: u2,
                padding: u2,
            }),
            reserved96: [64]u8,
            ///  NAND flash/PC card control register 1
            NPCTL1: mmio.Mmio(packed struct(u32) {
                reserved1: u1,
                ///  Wait feature enable
                NDWTEN: u1,
                ///  NAND bank enable
                NDBKEN: u1,
                ///  NAND bank memory type
                NDTP: u1,
                ///  NAND bank memory data bus width
                NDW: u2,
                ///  ECC enable
                ECCEN: u1,
                reserved9: u2,
                ///  CLE to RE delay
                CTR: u4,
                ///  ALE to RE delay
                ATR: u4,
                ///  ECC size
                ECCSZ: u3,
                padding: u12,
            }),
            ///  NAND flash/PC card interrupt enable register 1
            NPINTEN1: mmio.Mmio(packed struct(u32) {
                ///  Interrupt rising edge status
                INTRS: u1,
                ///  Interrupt high-level status
                INTHS: u1,
                ///  Interrupt falling edge status
                INTFS: u1,
                ///  Interrupt rising edge detection enable bit
                INTREN: u1,
                ///  Interrupt high-level detection enable
                INTHEN: u1,
                ///  Interrupt falling edge detection enable
                INTFEN: u1,
                ///  FIFO empty flag
                FFEPT: u1,
                padding: u25,
            }),
            ///  NAND flash/PC card common space timing configuration register 1
            NPCTCFG1: mmio.Mmio(packed struct(u32) {
                ///  Common memory setup time
                COMSET: u8,
                ///  Common memory wait time
                COMWAIT: u8,
                ///  Common memory hold time
                COMHLD: u8,
                ///  Common memory data bus HiZ time
                COMHIZ: u8,
            }),
            ///  NAND flash/PC card attribute space timing configuration register 1
            NPATCFG1: mmio.Mmio(packed struct(u32) {
                ///  Attribute memory setup time
                ATTSET: u8,
                ///  Attribute memory wait time
                ATTWAIT: u8,
                ///  Attribute memory hold time
                ATTHLD: u8,
                ///  Attribute memory data bus HiZ time
                ATTHIZ: u8,
            }),
            reserved116: [4]u8,
            ///  NAND flash ECC register 1
            NECC1: mmio.Mmio(packed struct(u32) {
                ///  ECC result
                ECC: u32,
            }),
            reserved128: [8]u8,
            ///  NAND flash/PC card control register 2
            NPCTL2: mmio.Mmio(packed struct(u32) {
                reserved1: u1,
                ///  Wait feature enable
                NDWTEN: u1,
                ///  NAND bank enable
                NDBKEN: u1,
                ///  NAND bank memory type
                NDTP: u1,
                ///  NAND bank memory data bus width
                NDW: u2,
                ///  ECC enable
                ECCEN: u1,
                reserved9: u2,
                ///  CLE to RE delay
                CTR: u4,
                ///  ALE to RE delay
                ATR: u4,
                ///  ECC size
                ECCSZ: u3,
                padding: u12,
            }),
            ///  NAND flash/PC card interrupt enable register 2
            NPINTEN2: mmio.Mmio(packed struct(u32) {
                ///  Interrupt rising edge status
                INTRS: u1,
                ///  Interrupt high-level status
                INTHS: u1,
                ///  Interrupt falling edge status
                INTFS: u1,
                ///  Interrupt rising edge detection enable bit
                INTREN: u1,
                ///  Interrupt high-level detection enable
                INTHEN: u1,
                ///  Interrupt falling edge detection enable
                INTFEN: u1,
                ///  FIFO empty flag
                FFEPT: u1,
                padding: u25,
            }),
            ///  NAND flash/PC card common space timing configuration register 2
            NPCTCFG2: mmio.Mmio(packed struct(u32) {
                ///  Common memory setup time
                COMSET: u8,
                ///  Common memory wait time
                COMWAIT: u8,
                ///  Common memory hold time
                COMHLD: u8,
                ///  Common memory data bus HiZ time
                COMHIZ: u8,
            }),
            ///  NAND flash/PC card attribute space timing configuration register 2
            NPATCFG2: mmio.Mmio(packed struct(u32) {
                ///  Attribute memory setup time
                ATTSET: u8,
                ///  Attribute memory wait time
                ATTWAIT: u8,
                ///  Attribute memory hold time
                ATTHLD: u8,
                ///  Attribute memory data bus HiZ time
                ATTHIZ: u8,
            }),
            reserved148: [4]u8,
            ///  NAND flash ECC register 2
            NECC2: mmio.Mmio(packed struct(u32) {
                ///  ECC result
                ECC: u32,
            }),
            reserved160: [8]u8,
            ///  NAND flash/PC card control register 3
            NPCTL3: mmio.Mmio(packed struct(u32) {
                reserved1: u1,
                ///  Wait feature enable
                NDWTEN: u1,
                ///  NAND bank enable
                NDBKEN: u1,
                ///  NAND bank memory type
                NDTP: u1,
                ///  NAND bank memory data bus width
                NDW: u2,
                ///  ECC enable
                ECCEN: u1,
                reserved9: u2,
                ///  CLE to RE delay
                CTR: u4,
                ///  ALE to RE delay
                ATR: u4,
                ///  ECC size
                ECCSZ: u3,
                padding: u12,
            }),
            ///  NAND flash/PC card interrupt enable register 3
            NPINTEN3: mmio.Mmio(packed struct(u32) {
                ///  Interrupt rising edge status
                INTRS: u1,
                ///  Interrupt high-level status
                INTHS: u1,
                ///  Interrupt falling edge status
                INTFS: u1,
                ///  Interrupt rising edge detection enable bit
                INTREN: u1,
                ///  Interrupt high-level detection enable
                INTHEN: u1,
                ///  Interrupt falling edge detection enable
                INTFEN: u1,
                ///  FIFO empty flag
                FFEPT: u1,
                padding: u25,
            }),
            ///  NAND flash/PC card common space timing configuration register 3
            NPCTCFG3: mmio.Mmio(packed struct(u32) {
                ///  Common memory setup time
                COMSET: u8,
                ///  Common memory wait time
                COMWAIT: u8,
                ///  Common memory hold time
                COMHLD: u8,
                ///  Common memory data bus HiZ time
                COMHIZ: u8,
            }),
            ///  NAND flash/PC card attribute space timing configuration register 3
            NPATCFG3: mmio.Mmio(packed struct(u32) {
                ///  Attribute memory setup time
                ATTSET: u8,
                ///  Attribute memory wait time
                ATTWAIT: u8,
                ///  Attribute memory hold time
                ATTHLD: u8,
                ///  Attribute memory data bus HiZ time
                ATTHIZ: u8,
            }),
            ///  PC card I/O space timing configuration register
            PIOTCFG3: mmio.Mmio(packed struct(u32) {
                ///  IO space setup time
                IOSET: u8,
                ///  IO space wait time
                IOWAIT: u8,
                ///  IO space hold time
                IOHLD: u8,
                ///  IO space data bus HiZ time
                IOHIZ: u8,
            }),
            reserved260: [80]u8,
            ///  SRAM/NOR flash write timing configuration register 0
            SNWTCFG0: mmio.Mmio(packed struct(u32) {
                ///  Address setup time
                WASET: u4,
                ///  Address hold time
                WAHLD: u4,
                ///  Data setup time
                WDSET: u8,
                ///  Bus latency
                WBUSLAT: u4,
                reserved28: u8,
                ///  Asynchronous access mode
                WASYNCMOD: u2,
                padding: u2,
            }),
            reserved268: [4]u8,
            ///  SRAM/NOR flash write timing configuration register 1
            SNWTCFG1: mmio.Mmio(packed struct(u32) {
                ///  Address setup time
                WASET: u4,
                ///  Address hold time
                WAHLD: u4,
                ///  Data setup time
                WDSET: u8,
                ///  Bus latency
                WBUSLAT: u4,
                reserved28: u8,
                ///  Asynchronous access mode
                WASYNCMOD: u2,
                padding: u2,
            }),
            reserved276: [4]u8,
            ///  SRAM/NOR flash write timing configuration register 2
            SNWTCFG2: mmio.Mmio(packed struct(u32) {
                ///  Address setup time
                WASET: u4,
                ///  Address hold time
                WAHLD: u4,
                ///  Data setup time
                WDSET: u8,
                ///  Bus latency
                WBUSLAT: u4,
                reserved28: u8,
                ///  Asynchronous access mode
                WASYNCMOD: u2,
                padding: u2,
            }),
            reserved284: [4]u8,
            ///  SRAM/NOR flash write timing configuration register 3
            SNWTCFG3: mmio.Mmio(packed struct(u32) {
                ///  Address setup time
                WASET: u4,
                ///  Address hold time
                WAHLD: u4,
                ///  Data setup time
                WDSET: u8,
                ///  Bus latency
                WBUSLAT: u4,
                reserved28: u8,
                ///  Asynchronous access mode
                WASYNCMOD: u2,
                padding: u2,
            }),
            reserved320: [32]u8,
            ///  SDRAM control register 0
            SDCTL0: mmio.Mmio(packed struct(u32) {
                ///  Column address bit width
                CAW: u2,
                ///  Row address bit width
                RAW: u2,
                ///  SDRAM data bus width
                SDW: u2,
                ///  Number of banks
                NBK: u1,
                ///  CAS Latency
                CL: u2,
                ///  Write protection enable
                WPEN: u1,
                ///  SDRAM clock configuration
                SDCLK: u2,
                ///  Burst read
                BRSTRD: u1,
                ///  Pipeline delay
                PIPED: u2,
                padding: u17,
            }),
            ///  SDRAM control register 1
            SDCTL1: mmio.Mmio(packed struct(u32) {
                ///  Column address bit width
                CAW: u2,
                ///  Row address bit width
                RAW: u2,
                ///  SDRAM data bus width
                SDW: u2,
                ///  Number of banks
                NBK: u1,
                ///  CAS Latency
                CL: u2,
                ///  Write protection enable
                WPEN: u1,
                ///  SDRAM clock configuration
                SDCLK: u2,
                ///  Burst read
                BRSTRD: u1,
                ///  Pipeline delay
                PIPED: u2,
                padding: u17,
            }),
            ///  SDRAM timing configuration register 0
            SDTCFG0: mmio.Mmio(packed struct(u32) {
                ///  Load Mode Register Delay
                LMRD: u4,
                ///  Exit Self-refresh delay
                XSRD: u4,
                ///  Row address select delay
                RASD: u4,
                ///  Auto refresh delay
                ARFD: u4,
                ///  Write recovery delay
                WRD: u4,
                ///  Row precharge delay
                RPD: u4,
                ///  Row to column delay
                RCD: u4,
                padding: u4,
            }),
            ///  SDRAM timing configuration register 1
            SDTCFG1: mmio.Mmio(packed struct(u32) {
                ///  Load Mode Register Delay
                LMRD: u4,
                ///  Exit Self-refresh delay
                XSRD: u4,
                ///  Row address select delay
                RASD: u4,
                ///  Auto refresh delay
                ARFD: u4,
                ///  Write recovery delay
                WRD: u4,
                ///  Row precharge delay
                RPD: u4,
                ///  Row to column delay
                RCD: u4,
                padding: u4,
            }),
            ///  SDRAM command register
            SDCMD: mmio.Mmio(packed struct(u32) {
                ///  Command
                CMD: u3,
                ///  Device select 1
                DS1: u1,
                ///  Device select 0
                DS0: u1,
                ///  Number of successive Auto-refresh
                NARF: u4,
                ///  Mode register content
                MRC: u13,
                padding: u10,
            }),
            ///  SDRAM auto-refresh interval register
            SDARI: mmio.Mmio(packed struct(u32) {
                ///  Refresh error flag clear
                REC: u1,
                ///  Auto-Refresh Interval
                ARINTV: u13,
                ///  Refresh error interrupt Enable
                REIE: u1,
                padding: u17,
            }),
            ///  SDRAM status register
            SDSTAT: mmio.Mmio(packed struct(u32) {
                ///  Refresh error interrupt flag
                REIF: u1,
                ///  Device 0 status
                STA0: u2,
                ///  Device1 status
                STA1: u2,
                ///  Not Ready status
                NRDY: u1,
                padding: u26,
            }),
            reserved384: [36]u8,
            ///  SDRAM read sample control register
            SDRSCTL: mmio.Mmio(packed struct(u32) {
                ///  Read sample enable
                RSEN: u1,
                ///  Select sample cycle of read data
                SSCR: u1,
                reserved4: u2,
                ///  Select the delayed sample clock of read data
                SDSC: u4,
                padding: u24,
            }),
            reserved784: [396]u8,
            ///  SPI initialization register
            SINIT: mmio.Mmio(packed struct(u32) {
                reserved16: u16,
                ///  Bit number of SPI PSRAM command phase
                CMDBIT: u2,
                reserved24: u6,
                ///  Bit number of SPI PSRAM address phase
                ADRBIT: u5,
                ///  SPI PSRAM ID Length
                IDL: u2,
                ///  Read data sample polarity
                POL: u1,
            }),
            reserved800: [12]u8,
            ///  SPI read command register
            SRCMD: mmio.Mmio(packed struct(u32) {
                ///  SPI Read Command for AHB read transfer
                RCMD: u16,
                ///  SPI Read Wait Cycle number after address phase
                RWAITCYCLE: u4,
                ///  SPI PSRAM Read command mode
                RMODE: u2,
                reserved31: u9,
                ///  Send SPI Read ID Command
                RDID: u1,
            }),
            reserved816: [12]u8,
            ///  SPI write command register
            SWCMD: mmio.Mmio(packed struct(u32) {
                ///  SPI Write Command for AHB write transfer
                WCMD: u15,
                reserved16: u1,
                ///  SPI Write Wait Cycle number after address phase
                WWAITCYCLE: u4,
                ///  SPI PSRAM Write command mode
                WMODE: u2,
                reserved31: u9,
                ///  Send SPI Special Command which does not have address and data phase, command code and mode come from WCMD and WMODE
                SC: u1,
            }),
            reserved832: [12]u8,
            ///  SPI ID low register
            SIDL: mmio.Mmio(packed struct(u32) {
                ///  ID Low Data saved for SPI Read ID Command
                SIDL: u32,
            }),
            reserved848: [12]u8,
            ///  SPI ID high register
            SIDH: mmio.Mmio(packed struct(u32) {
                ///  ID High Data saved for SPI Read ID Command
                SIDH: u32,
            }),
        };

        ///  External interrupt/event controller
        pub const EXTI = extern struct {
            ///  Interrupt enable register (EXTI_INTEN)
            INTEN: mmio.Mmio(packed struct(u32) {
                ///  Enable Interrupt on line 0
                INTEN0: u1,
                ///  Enable Interrupt on line 1
                INTEN1: u1,
                ///  Enable Interrupt on line 2
                INTEN2: u1,
                ///  Enable Interrupt on line 3
                INTEN3: u1,
                ///  Enable Interrupt on line 4
                INTEN4: u1,
                ///  Enable Interrupt on line 5
                INTEN5: u1,
                ///  Enable Interrupt on line 6
                INTEN6: u1,
                ///  Enable Interrupt on line 7
                INTEN7: u1,
                ///  Enable Interrupt on line 8
                INTEN8: u1,
                ///  Enable Interrupt on line 9
                INTEN9: u1,
                ///  Enable Interrupt on line 10
                INTEN10: u1,
                ///  Enable Interrupt on line 11
                INTEN11: u1,
                ///  Enable Interrupt on line 12
                INTEN12: u1,
                ///  Enable Interrupt on line 13
                INTEN13: u1,
                ///  Enable Interrupt on line 14
                INTEN14: u1,
                ///  Enable Interrupt on line 15
                INTEN15: u1,
                ///  Enable Interrupt on line 16
                INTEN16: u1,
                ///  Enable Interrupt on line 17
                INTEN17: u1,
                ///  Enable Interrupt on line 18
                INTEN18: u1,
                ///  Enable Interrupt on line 19
                INTEN19: u1,
                ///  Enable Interrupt on line 20
                INTEN20: u1,
                ///  Enable Interrupt on line 21
                INTEN21: u1,
                ///  Enable Interrupt on line 22
                INTEN22: u1,
                padding: u9,
            }),
            ///  Event enable register (EXTI_EVEN)
            EVEN: mmio.Mmio(packed struct(u32) {
                ///  Enable Event on line 0
                EVEN0: u1,
                ///  Enable Event on line 1
                EVEN1: u1,
                ///  Enable Event on line 2
                EVEN2: u1,
                ///  Enable Event on line 3
                EVEN3: u1,
                ///  Enable Event on line 4
                EVEN4: u1,
                ///  Enable Event on line 5
                EVEN5: u1,
                ///  Enable Event on line 6
                EVEN6: u1,
                ///  Enable Event on line 7
                EVEN7: u1,
                ///  Enable Event on line 8
                EVEN8: u1,
                ///  Enable Event on line 9
                EVEN9: u1,
                ///  Enable Event on line 10
                EVEN10: u1,
                ///  Enable Event on line 11
                EVEN11: u1,
                ///  Enable Event on line 12
                EVEN12: u1,
                ///  Enable Event on line 13
                EVEN13: u1,
                ///  Enable Event on line 14
                EVEN14: u1,
                ///  Enable Event on line 15
                EVEN15: u1,
                ///  Enable Event on line 16
                EVEN16: u1,
                ///  Enable Event on line 17
                EVEN17: u1,
                ///  Enable Event on line 18
                EVEN18: u1,
                ///  Enable Event on line 19
                EVEN19: u1,
                ///  Enable Event on line 20
                EVEN20: u1,
                ///  Enable Event on line 21
                EVEN21: u1,
                ///  Enable Event on line 22
                EVEN22: u1,
                padding: u9,
            }),
            ///  Rising Edge Trigger Enable register (EXTI_RTEN)
            RTEN: mmio.Mmio(packed struct(u32) {
                ///  Rising edge trigger enable of line 0
                RTEN0: u1,
                ///  Rising edge trigger enable of line 1
                RTEN1: u1,
                ///  Rising edge trigger enable of line 2
                RTEN2: u1,
                ///  Rising edge trigger enable of line 3
                RTEN3: u1,
                ///  Rising edge trigger enable of line 4
                RTEN4: u1,
                ///  Rising edge trigger enable of line 5
                RTEN5: u1,
                ///  Rising edge trigger enable of line 6
                RTEN6: u1,
                ///  Rising edge trigger enable of line 7
                RTEN7: u1,
                ///  Rising edge trigger enable of line 8
                RTEN8: u1,
                ///  Rising edge trigger enable of line 9
                RTEN9: u1,
                ///  Rising edge trigger enable of line 10
                RTEN10: u1,
                ///  Rising edge trigger enable of line 11
                RTEN11: u1,
                ///  Rising edge trigger enable of line 12
                RTEN12: u1,
                ///  Rising edge trigger enable of line 13
                RTEN13: u1,
                ///  Rising edge trigger enable of line 14
                RTEN14: u1,
                ///  Rising edge trigger enable of line 15
                RTEN15: u1,
                ///  Rising edge trigger enable of line 16
                RTEN16: u1,
                ///  Rising edge trigger enable of line 17
                RTEN17: u1,
                ///  Rising edge trigger enable of line 18
                RTEN18: u1,
                ///  Rising edge trigger enable of line 19
                RTEN19: u1,
                ///  Rising edge trigger enable of line 20
                RTEN20: u1,
                ///  Rising edge trigger enable of line 21
                RTEN21: u1,
                ///  Rising edge trigger enable of line 22
                RTEN22: u1,
                padding: u9,
            }),
            ///  Falling Egde Trigger Enable register (EXTI_FTEN)
            FTEN: mmio.Mmio(packed struct(u32) {
                ///  Falling edge trigger enable of line 0
                FTEN0: u1,
                ///  Falling edge trigger enable of line 1
                FTEN1: u1,
                ///  Falling edge trigger enable of line 2
                FTEN2: u1,
                ///  Falling edge trigger enable of line 3
                FTEN3: u1,
                ///  Falling edge trigger enable of line 4
                FTEN4: u1,
                ///  Falling edge trigger enable of line 5
                FTEN5: u1,
                ///  Falling edge trigger enable of line 6
                FTEN6: u1,
                ///  Falling edge trigger enable of line 7
                FTEN7: u1,
                ///  Falling edge trigger enable of line 8
                FTEN8: u1,
                ///  Falling edge trigger enable of line 9
                FTEN9: u1,
                ///  Falling edge trigger enable of line 10
                FTEN10: u1,
                ///  Falling edge trigger enable of line 11
                FTEN11: u1,
                ///  Falling edge trigger enable of line 12
                FTEN12: u1,
                ///  Falling edge trigger enable of line 13
                FTEN13: u1,
                ///  Falling edge trigger enable of line 14
                FTEN14: u1,
                ///  Falling edge trigger enable of line 15
                FTEN15: u1,
                ///  Falling edge trigger enable of line 16
                FTEN16: u1,
                ///  Falling edge trigger enable of line 17
                FTEN17: u1,
                ///  Falling edge trigger enable of line 18
                FTEN18: u1,
                ///  Falling edge trigger enable of line 19
                FTEN19: u1,
                ///  Falling edge trigger enable of line 20
                FTEN20: u1,
                ///  Falling edge trigger enable of line 21
                FTEN21: u1,
                ///  Falling edge trigger enable of line 22
                FTEN22: u1,
                padding: u9,
            }),
            ///  Software interrupt event register (EXTI_SWIEV)
            SWIEV: mmio.Mmio(packed struct(u32) {
                ///  Interrupt/Event software trigger on line 0
                SWIEV0: u1,
                ///  Interrupt/Event software trigger on line 1
                SWIEV1: u1,
                ///  Interrupt/Event software trigger on line 2
                SWIEV2: u1,
                ///  Interrupt/Event software trigger on line 3
                SWIEV3: u1,
                ///  Interrupt/Event software trigger on line 4
                SWIEV4: u1,
                ///  Interrupt/Event software trigger on line 5
                SWIEV5: u1,
                ///  Interrupt/Event software trigger on line 6
                SWIEV6: u1,
                ///  Interrupt/Event software trigger on line 7
                SWIEV7: u1,
                ///  Interrupt/Event software trigger on line 8
                SWIEV8: u1,
                ///  Interrupt/Event software trigger on line 9
                SWIEV9: u1,
                ///  Interrupt/Event software trigger on line 10
                SWIEV10: u1,
                ///  Interrupt/Event software trigger on line 11
                SWIEV11: u1,
                ///  Interrupt/Event software trigger on line 12
                SWIEV12: u1,
                ///  Interrupt/Event software trigger on line 13
                SWIEV13: u1,
                ///  Interrupt/Event software trigger on line 14
                SWIEV14: u1,
                ///  Interrupt/Event software trigger on line 15
                SWIEV15: u1,
                ///  Interrupt/Event software trigger on line 16
                SWIEV16: u1,
                ///  Interrupt/Event software trigger on line 17
                SWIEV17: u1,
                ///  Interrupt/Event software trigger on line 18
                SWIEV18: u1,
                ///  Interrupt/Event software trigger on line 19
                SWIEV19: u1,
                ///  Interrupt/Event software trigger on line 20
                SWIEV20: u1,
                ///  Interrupt/Event software trigger on line 21
                SWIEV21: u1,
                ///  Interrupt/Event software trigger on line 22
                SWIEV22: u1,
                padding: u9,
            }),
            ///  Pending register (EXTI_PD)
            PD: mmio.Mmio(packed struct(u32) {
                ///  Interrupt pending status of line 0
                PD0: u1,
                ///  Interrupt pending status of line 1
                PD1: u1,
                ///  Interrupt pending status of line 2
                PD2: u1,
                ///  Interrupt pending status of line 3
                PD3: u1,
                ///  Interrupt pending status of line 4
                PD4: u1,
                ///  Interrupt pending status of line 5
                PD5: u1,
                ///  Interrupt pending status of line 6
                PD6: u1,
                ///  Interrupt pending status of line 7
                PD7: u1,
                ///  Interrupt pending status of line 8
                PD8: u1,
                ///  Interrupt pending status of line 9
                PD9: u1,
                ///  Interrupt pending status of line 10
                PD10: u1,
                ///  Interrupt pending status of line 11
                PD11: u1,
                ///  Interrupt pending status of line 12
                PD12: u1,
                ///  Interrupt pending status of line 13
                PD13: u1,
                ///  Interrupt pending status of line 14
                PD14: u1,
                ///  Interrupt pending status of line 15
                PD15: u1,
                ///  Interrupt pending status of line 16
                PD16: u1,
                ///  Interrupt pending status of line 17
                PD17: u1,
                ///  Interrupt pending status of line 18
                PD18: u1,
                ///  Interrupt pending status of line 19
                PD19: u1,
                ///  Interrupt pending status of line 20
                PD20: u1,
                ///  Interrupt pending status of line 21
                PD21: u1,
                ///  Interrupt pending status of line 22
                PD22: u1,
                padding: u9,
            }),
        };

        ///  FMC
        pub const FMC = extern struct {
            ///  wait state counter register
            WS: mmio.Mmio(packed struct(u32) {
                ///  wait state counter register
                WSCNT: u4,
                padding: u28,
            }),
            ///  Unlock key register
            KEY: mmio.Mmio(packed struct(u32) {
                ///  FMC_CTL unlock register
                KEY: u32,
            }),
            ///  Option byte unlock key register
            OBKEY: mmio.Mmio(packed struct(u32) {
                ///  FMC_ OBCTL0 option byte operation unlock register
                OBKEY: u32,
            }),
            ///  Status register
            STAT: mmio.Mmio(packed struct(u32) {
                ///  End of operation flag bit
                END: u1,
                ///  Flash operation error flag bit
                OPERR: u1,
                reserved4: u2,
                ///  Erase/Program protection error flag bit
                WPERR: u1,
                reserved6: u1,
                ///  Program size not match error flag bit
                PGMERR: u1,
                ///  Program sequence error flag bit
                PGSERR: u1,
                ///  Read D-bus protection error flag bit
                RDDERR: u1,
                reserved16: u7,
                ///  The flash is busy bit
                BUSY: u1,
                padding: u15,
            }),
            ///  Control register
            CTL: mmio.Mmio(packed struct(u32) {
                ///  main flash program command bit
                PG: u1,
                ///  main flash sector erase command bit
                SER: u1,
                ///  main flash mass erase for bank0 command bit
                MER0: u1,
                ///  Select which sector number to be erased.
                SN: u5,
                ///  Program size bit
                PSZ: u2,
                reserved15: u5,
                ///  main flash mass erase for bank1command bit
                MER1: u1,
                ///  send erase command to FMC bit
                START: u1,
                reserved24: u7,
                ///  End of operation interrupt enable bit
                ENDIE: u1,
                ///  Error interrupt enable bit
                ERRIE: u1,
                reserved31: u5,
                ///  FMC_CTL lock bit
                LK: u1,
            }),
            ///  Option byte control register 0
            OBCTL0: mmio.Mmio(packed struct(u32) {
                ///  FMC_OBCTL0 lock bit
                OB_LK: u1,
                ///  send option byte change command to FMC bit
                OB_START: u1,
                ///  option byte BOR threshold value
                BOR_TH: u2,
                ///  option byte boot bank value
                BB: u1,
                ///  option byte watchdog value
                nWDG_HW: u1,
                ///  option byte deepsleep reset value
                nRST_DPSLP: u1,
                ///  option byte standby reset value
                nRST_STDBY: u1,
                ///  option byte Security Protection code
                SPC: u8,
                ///  Erase/program protection of each sector when DRP is 0
                WP0: u12,
                reserved30: u2,
                ///  Double banks or single bank selection when flash size is 1M
                DBS: u1,
                ///  D-bus read protection bit
                DRP: u1,
            }),
            ///  Option byte control register 1
            OBCTL1: mmio.Mmio(packed struct(u32) {
                reserved16: u16,
                ///  Erase/program protection of each sector when DRP is 0
                WP1: u12,
                padding: u4,
            }),
            reserved252: [224]u8,
            ///  Wait state enable register
            WSEN: mmio.Mmio(packed struct(u32) {
                ///  FMC wait state enable register
                WSEN: u1,
                padding: u31,
            }),
            ///  Product ID register
            PID: mmio.Mmio(packed struct(u32) {
                ///  Product reserved ID code register
                PID: u32,
            }),
        };

        ///  free watchdog timer
        pub const FWDGT = extern struct {
            ///  Control register
            CTL: mmio.Mmio(packed struct(u32) {
                ///  Key value
                CMD: u16,
                padding: u16,
            }),
            ///  Prescaler register
            PSC: mmio.Mmio(packed struct(u32) {
                ///  Prescaler divider
                PSC: u3,
                padding: u29,
            }),
            ///  Reload register
            RLD: mmio.Mmio(packed struct(u32) {
                ///  Free watchdog timer counter reload value
                RLD: u12,
                padding: u20,
            }),
            ///  Status register
            STAT: mmio.Mmio(packed struct(u32) {
                ///  Free watchdog timer prescaler value update
                PUD: u1,
                ///  Free watchdog timer counter reload value update
                RUD: u1,
                padding: u30,
            }),
        };

        ///  General-purpose I/Os
        pub const GPIOA = extern struct {
            ///  GPIO port control register
            CTL: mmio.Mmio(packed struct(u32) {
                ///  Port x configuration bits (x = 0)
                CTL0: u2,
                ///  Port x configuration bits (x = 1)
                CTL1: u2,
                ///  Port x configuration bits (x = 2)
                CTL2: u2,
                ///  Port x configuration bits (x = 3)
                CTL3: u2,
                ///  Port x configuration bits (x = 4 )
                CTL4: u2,
                ///  Port x configuration bits (x = 5)
                CTL5: u2,
                ///  Port x configuration bits (x = 6 )
                CTL6: u2,
                ///  Port x configuration bits (x = 7)
                CTL7: u2,
                ///  Port x configuration bits (x = 8)
                CTL8: u2,
                ///  Port x configuration bits (x = 9)
                CTL9: u2,
                ///  Port x configuration bits (x = 10)
                CTL10: u2,
                ///  Port x configuration bits (x = 11)
                CTL11: u2,
                ///  Port x configuration bits (x = 12)
                CTL12: u2,
                ///  Port x configuration bits (x = 13)
                CTL13: u2,
                ///  Port x configuration bits (x = 14)
                CTL14: u2,
                ///  Port x configuration bits (x = 15)
                CTL15: u2,
            }),
            ///  GPIO port output mode register
            OMODE: mmio.Mmio(packed struct(u32) {
                ///  Port 0 output mode bit
                OM0: u1,
                ///  Port 1 output mode bit
                OM1: u1,
                ///  Port 2 output mode bit
                OM2: u1,
                ///  Port 3 output mode bit
                OM3: u1,
                ///  Port 4 output mode bit
                OM4: u1,
                ///  Port 5 output mode bit
                OM5: u1,
                ///  Port 6 output mode bit
                OM6: u1,
                ///  Port 7 output mode bit
                OM7: u1,
                ///  Port 8 output mode bit
                OM8: u1,
                ///  Port 9 output mode bit
                OM9: u1,
                ///  Port 10 output mode bit
                OM10: u1,
                ///  Port 11 output mode bit
                OM11: u1,
                ///  Port 12 output mode bit
                OM12: u1,
                ///  Port 13 output mode bit
                OM13: u1,
                ///  Port 14 output mode bit
                OM14: u1,
                ///  Port 15 output mode bit
                OM15: u1,
                padding: u16,
            }),
            ///  GPIO port output speed register
            OSPD: mmio.Mmio(packed struct(u32) {
                ///  Port 0 output max speed bits
                OSPD0: u2,
                ///  Port 1 output max speed bits
                OSPD1: u2,
                ///  Port 2 output max speed bits
                OSPD2: u2,
                ///  Port 3 output max speed bits
                OSPD3: u2,
                ///  Port 4 output max speed bits
                OSPD4: u2,
                ///  Port 5 output max speed bits
                OSPD5: u2,
                ///  Port 6 output max speed bits
                OSPD6: u2,
                ///  Port 7 output max speed bits
                OSPD7: u2,
                ///  Port 8 output max speed bits
                OSPD8: u2,
                ///  Port 9 output max speed bits
                OSPD9: u2,
                ///  Port 10 output max speed bits
                OSPD10: u2,
                ///  Port 11 output max speed bits
                OSPD11: u2,
                ///  Port 12 output max speed bits
                OSPD12: u2,
                ///  Port 13 output max speed bits
                OSPD13: u2,
                ///  Port 14 output max speed bits
                OSPD14: u2,
                ///  Port 15 output max speed bits
                OSPD15: u2,
            }),
            ///  GPIO port pull-up/pull-down register
            PUD: mmio.Mmio(packed struct(u32) {
                ///  Port 0 pull-up or pull-down bits
                PUD0: u2,
                ///  Port 1 pull-up or pull-down bits
                PUD1: u2,
                ///  Port 2 pull-up or pull-down bits
                PUD2: u2,
                ///  Port 3 pull-up or pull-down bits
                PUD3: u2,
                ///  Port 4 pull-up or pull-down bits
                PUD4: u2,
                ///  Port 5 pull-up or pull-down bits
                PUD5: u2,
                ///  Port 6 pull-up or pull-down bits
                PUD6: u2,
                ///  Port 7 pull-up or pull-down bits
                PUD7: u2,
                ///  Port 8 pull-up or pull-down bits
                PUD8: u2,
                ///  Port 9 pull-up or pull-down bits
                PUD9: u2,
                ///  Port 10 pull-up or pull-down bits
                PUD10: u2,
                ///  Port 11 pull-up or pull-down bits
                PUD11: u2,
                ///  Port 12 pull-up or pull-down bits
                PUD12: u2,
                ///  Port 13 pull-up or pull-down bits
                PUD13: u2,
                ///  Port 14 pull-up or pull-down bits
                PUD14: u2,
                ///  Port 15 pull-up or pull-down bits
                PUD15: u2,
            }),
            ///  GPIO port input status register
            ISTAT: mmio.Mmio(packed struct(u32) {
                ///  Port input status (y = 0)
                ISTAT0: u1,
                ///  Port input status (y = 1)
                ISTAT1: u1,
                ///  Port input status (y = 2)
                ISTAT2: u1,
                ///  Port input status (y = 3)
                ISTAT3: u1,
                ///  Port input status (y = 4)
                ISTAT4: u1,
                ///  Port input status (y = 5)
                ISTAT5: u1,
                ///  Port input status (y = 6)
                ISTAT6: u1,
                ///  Port input status (y = 7)
                ISTAT7: u1,
                ///  Port input status (y = 8)
                ISTAT8: u1,
                ///  Port input status (y = 9)
                ISTAT9: u1,
                ///  Port input status (y = 10)
                ISTAT10: u1,
                ///  Port input status (y = 11)
                ISTAT11: u1,
                ///  Port input status (y = 12)
                ISTAT12: u1,
                ///  Port input status (y = 13)
                ISTAT13: u1,
                ///  Port input status (y = 14)
                ISTAT14: u1,
                ///  Port input status (y = 15)
                ISTAT15: u1,
                padding: u16,
            }),
            ///  GPIO port output control register
            OCTL: mmio.Mmio(packed struct(u32) {
                ///  Port output control (y = 0)
                OCTL0: u1,
                ///  Port output control (y = 1)
                OCTL1: u1,
                ///  Port output control (y = 2)
                OCTL2: u1,
                ///  Port output control (y = 3)
                OCTL3: u1,
                ///  Port output control (y = 4)
                OCTL4: u1,
                ///  Port output control (y = 5)
                OCTL5: u1,
                ///  Port output control (y = 6)
                OCTL6: u1,
                ///  Port output control (y = 7)
                OCTL7: u1,
                ///  Port output control (y = 8)
                OCTL8: u1,
                ///  Port output control (y = 9)
                OCTL9: u1,
                ///  Port output control (y = 10)
                OCTL10: u1,
                ///  Port output control (y = 11)
                OCTL11: u1,
                ///  Port output control (y = 12)
                OCTL12: u1,
                ///  Port output control (y = 13)
                OCTL13: u1,
                ///  Port output control (y = 14)
                OCTL14: u1,
                ///  Port output control (y = 15)
                OCTL15: u1,
                padding: u16,
            }),
            ///  GPIO port bit operate register
            BOP: mmio.Mmio(packed struct(u32) {
                ///  Port Set bit 0
                BOP0: u1,
                ///  Port Set bit 1
                BOP1: u1,
                ///  Port Set bit 2
                BOP2: u1,
                ///  Port Set bit 3
                BOP3: u1,
                ///  Port Set bit 4
                BOP4: u1,
                ///  Port Set bit 5
                BOP5: u1,
                ///  Port Set bit 6
                BOP6: u1,
                ///  Port Set bit 7
                BOP7: u1,
                ///  Port Set bit 8
                BOP8: u1,
                ///  Port Set bit 9
                BOP9: u1,
                ///  Port Set bit 10
                BOP10: u1,
                ///  Port Set bit 11
                BOP11: u1,
                ///  Port Set bit 12
                BOP12: u1,
                ///  Port Set bit 13
                BOP13: u1,
                ///  Port Set bit 14
                BOP14: u1,
                ///  Port Set bit 15
                BOP15: u1,
                ///  Port Clear bit 0
                CR0: u1,
                ///  Port Clear bit 1
                CR1: u1,
                ///  Port Clear bit 2
                CR2: u1,
                ///  Port Clear bit 3
                CR3: u1,
                ///  Port Clear bit 4
                CR4: u1,
                ///  Port Clear bit 5
                CR5: u1,
                ///  Port Clear bit 6
                CR6: u1,
                ///  Port Clear bit 7
                CR7: u1,
                ///  Port Clear bit 8
                CR8: u1,
                ///  Port Clear bit 9
                CR9: u1,
                ///  Port Clear bit 10
                CR10: u1,
                ///  Port Clear bit 11
                CR11: u1,
                ///  Port Clear bit 12
                CR12: u1,
                ///  Port Clear bit 13
                CR13: u1,
                ///  Port Clear bit 14
                CR14: u1,
                ///  Port Clear bit 15
                CR15: u1,
            }),
            ///  GPIO port configuration lock register
            LOCK: mmio.Mmio(packed struct(u32) {
                ///  Port Lock bit 0
                LK0: u1,
                ///  Port Lock bit 1
                LK1: u1,
                ///  Port Lock bit 2
                LK2: u1,
                ///  Port Lock bit 3
                LK3: u1,
                ///  Port Lock bit 4
                LK4: u1,
                ///  Port Lock bit 5
                LK5: u1,
                ///  Port Lock bit 6
                LK6: u1,
                ///  Port Lock bit 7
                LK7: u1,
                ///  Port Lock bit 8
                LK8: u1,
                ///  Port Lock bit 9
                LK9: u1,
                ///  Port Lock bit 10
                LK10: u1,
                ///  Port Lock bit 11
                LK11: u1,
                ///  Port Lock bit 12
                LK12: u1,
                ///  Port Lock bit 13
                LK13: u1,
                ///  Port Lock bit 14
                LK14: u1,
                ///  Port Lock bit 15
                LK15: u1,
                ///  Lock sequence key
                LKK: u1,
                padding: u15,
            }),
            ///  GPIO alternate function selected register 0
            AFSEL0: mmio.Mmio(packed struct(u32) {
                ///  Port 0 alternate function selected
                SEL0: u4,
                ///  Port 1 alternate function selected
                SEL1: u4,
                ///  Port 2 alternate function selected
                SEL2: u4,
                ///  Port 3 alternate function selected
                SEL3: u4,
                ///  Port 4 alternate function selected
                SEL4: u4,
                ///  Port 5 alternate function selected
                SEL5: u4,
                ///  Port 6 alternate function selected
                SEL6: u4,
                ///  Port 7 alternate function selected
                SEL7: u4,
            }),
            ///  GPIO alternate function selected register 1
            AFSEL1: mmio.Mmio(packed struct(u32) {
                ///  Port 8 alternate function selected
                SEL8: u4,
                ///  Port 9 alternate function selected
                SEL9: u4,
                ///  Port 10 alternate function selected
                SEL10: u4,
                ///  Port 11 alternate function selected
                SEL11: u4,
                ///  Port 12 alternate function selected
                SEL12: u4,
                ///  Port 13 alternate function selected
                SEL13: u4,
                ///  Port 14 alternate function selected
                SEL14: u4,
                ///  Port 15 alternate function selected
                SEL15: u4,
            }),
            ///  Bit clear register
            BC: mmio.Mmio(packed struct(u32) {
                ///  Port cleat bit
                CR0: u1,
                ///  Port cleat bit
                CR1: u1,
                ///  Port cleat bit
                CR2: u1,
                ///  Port cleat bit
                CR3: u1,
                ///  Port cleat bit
                CR4: u1,
                ///  Port cleat bit
                CR5: u1,
                ///  Port cleat bit
                CR6: u1,
                ///  Port cleat bit
                CR7: u1,
                ///  Port cleat bit
                CR8: u1,
                ///  Port cleat bit
                CR9: u1,
                ///  Port cleat bit
                CR10: u1,
                ///  Port cleat bit
                CR11: u1,
                ///  Port cleat bit
                CR12: u1,
                ///  Port cleat bit
                CR13: u1,
                ///  Port cleat bit
                CR14: u1,
                ///  Port cleat bit
                CR15: u1,
                padding: u16,
            }),
            ///  Port bit toggle register
            TG: mmio.Mmio(packed struct(u32) {
                ///  Port toggle bit
                TG0: u1,
                ///  Port toggle bit
                TG1: u1,
                ///  Port toggle bit
                TG2: u1,
                ///  Port toggle bit
                TG3: u1,
                ///  Port toggle bit
                TG4: u1,
                ///  Port toggle bit
                TG5: u1,
                ///  Port toggle bit
                TG6: u1,
                ///  Port toggle bit
                TG7: u1,
                ///  Port toggle bit
                TG8: u1,
                ///  Port toggle bit
                TG9: u1,
                ///  Port toggle bit
                TG10: u1,
                ///  Port toggle bit
                TG11: u1,
                ///  Port toggle bit
                TG12: u1,
                ///  Port toggle bit
                TG13: u1,
                ///  Port toggle bit
                TG14: u1,
                ///  Port toggle bit
                TG15: u1,
                padding: u16,
            }),
        };

        ///  General-purpose I/Os
        pub const GPIOB = extern struct {
            ///  GPIO port control register
            CTL: mmio.Mmio(packed struct(u32) {
                ///  Port x configuration bits (x = 0)
                CTL0: u2,
                ///  Port x configuration bits (x = 1)
                CTL1: u2,
                ///  Port x configuration bits (x = 2)
                CTL2: u2,
                ///  Port x configuration bits (x = 3)
                CTL3: u2,
                ///  Port x configuration bits (x = 4 )
                CTL4: u2,
                ///  Port x configuration bits (x = 5)
                CTL5: u2,
                ///  Port x configuration bits (x = 6 )
                CTL6: u2,
                ///  Port x configuration bits (x = 7)
                CTL7: u2,
                ///  Port x configuration bits (x = 8)
                CTL8: u2,
                ///  Port x configuration bits (x = 9)
                CTL9: u2,
                ///  Port x configuration bits (x = 10)
                CTL10: u2,
                ///  Port x configuration bits (x = 11)
                CTL11: u2,
                ///  Port x configuration bits (x = 12)
                CTL12: u2,
                ///  Port x configuration bits (x = 13)
                CTL13: u2,
                ///  Port x configuration bits (x = 14)
                CTL14: u2,
                ///  Port x configuration bits (x = 15)
                CTL15: u2,
            }),
            ///  GPIO port output mode register
            OMODE: mmio.Mmio(packed struct(u32) {
                ///  Port 0 output mode bit
                OM0: u1,
                ///  Port 1 output mode bit
                OM1: u1,
                ///  Port 2 output mode bit
                OM2: u1,
                ///  Port 3 output mode bit
                OM3: u1,
                ///  Port 4 output mode bit
                OM4: u1,
                ///  Port 5 output mode bit
                OM5: u1,
                ///  Port 6 output mode bit
                OM6: u1,
                ///  Port 7 output mode bit
                OM7: u1,
                ///  Port 8 output mode bit
                OM8: u1,
                ///  Port 9 output mode bit
                OM9: u1,
                ///  Port 10 output mode bit
                OM10: u1,
                ///  Port 11 output mode bit
                OM11: u1,
                ///  Port 12 output mode bit
                OM12: u1,
                ///  Port 13 output mode bit
                OM13: u1,
                ///  Port 14 output mode bit
                OM14: u1,
                ///  Port 15 output mode bit
                OM15: u1,
                padding: u16,
            }),
            ///  GPIO port output speed register
            OSPD: mmio.Mmio(packed struct(u32) {
                ///  Port 0 output max speed bits
                OSPD0: u2,
                ///  Port 1 output max speed bits
                OSPD1: u2,
                ///  Port 2 output max speed bits
                OSPD2: u2,
                ///  Port 3 output max speed bits
                OSPD3: u2,
                ///  Port 4 output max speed bits
                OSPD4: u2,
                ///  Port 5 output max speed bits
                OSPD5: u2,
                ///  Port 6 output max speed bits
                OSPD6: u2,
                ///  Port 7 output max speed bits
                OSPD7: u2,
                ///  Port 8 output max speed bits
                OSPD8: u2,
                ///  Port 9 output max speed bits
                OSPD9: u2,
                ///  Port 10 output max speed bits
                OSPD10: u2,
                ///  Port 11 output max speed bits
                OSPD11: u2,
                ///  Port 12 output max speed bits
                OSPD12: u2,
                ///  Port 13 output max speed bits
                OSPD13: u2,
                ///  Port 14 output max speed bits
                OSPD14: u2,
                ///  Port 15 output max speed bits
                OSPD15: u2,
            }),
            ///  GPIO port pull-up/pull-down register
            PUD: mmio.Mmio(packed struct(u32) {
                ///  Port 0 pull-up or pull-down bits
                PUD0: u2,
                ///  Port 1 pull-up or pull-down bits
                PUD1: u2,
                ///  Port 2 pull-up or pull-down bits
                PUD2: u2,
                ///  Port 3 pull-up or pull-down bits
                PUD3: u2,
                ///  Port 4 pull-up or pull-down bits
                PUD4: u2,
                ///  Port 5 pull-up or pull-down bits
                PUD5: u2,
                ///  Port 6 pull-up or pull-down bits
                PUD6: u2,
                ///  Port 7 pull-up or pull-down bits
                PUD7: u2,
                ///  Port 8 pull-up or pull-down bits
                PUD8: u2,
                ///  Port 9 pull-up or pull-down bits
                PUD9: u2,
                ///  Port 10 pull-up or pull-down bits
                PUD10: u2,
                ///  Port 11 pull-up or pull-down bits
                PUD11: u2,
                ///  Port 12 pull-up or pull-down bits
                PUD12: u2,
                ///  Port 13 pull-up or pull-down bits
                PUD13: u2,
                ///  Port 14 pull-up or pull-down bits
                PUD14: u2,
                ///  Port 15 pull-up or pull-down bits
                PUD15: u2,
            }),
            ///  GPIO port input status register
            ISTAT: mmio.Mmio(packed struct(u32) {
                ///  Port input status (y = 0)
                ISTAT0: u1,
                ///  Port input status (y = 1)
                ISTAT1: u1,
                ///  Port input status (y = 2)
                ISTAT2: u1,
                ///  Port input status (y = 3)
                ISTAT3: u1,
                ///  Port input status (y = 4)
                ISTAT4: u1,
                ///  Port input status (y = 5)
                ISTAT5: u1,
                ///  Port input status (y = 6)
                ISTAT6: u1,
                ///  Port input status (y = 7)
                ISTAT7: u1,
                ///  Port input status (y = 8)
                ISTAT8: u1,
                ///  Port input status (y = 9)
                ISTAT9: u1,
                ///  Port input status (y = 10)
                ISTAT10: u1,
                ///  Port input status (y = 11)
                ISTAT11: u1,
                ///  Port input status (y = 12)
                ISTAT12: u1,
                ///  Port input status (y = 13)
                ISTAT13: u1,
                ///  Port input status (y = 14)
                ISTAT14: u1,
                ///  Port input status (y = 15)
                ISTAT15: u1,
                padding: u16,
            }),
            ///  GPIO port output control register
            OCTL: mmio.Mmio(packed struct(u32) {
                ///  Port output control (y = 0)
                OCTL0: u1,
                ///  Port output control (y = 1)
                OCTL1: u1,
                ///  Port output control (y = 2)
                OCTL2: u1,
                ///  Port output control (y = 3)
                OCTL3: u1,
                ///  Port output control (y = 4)
                OCTL4: u1,
                ///  Port output control (y = 5)
                OCTL5: u1,
                ///  Port output control (y = 6)
                OCTL6: u1,
                ///  Port output control (y = 7)
                OCTL7: u1,
                ///  Port output control (y = 8)
                OCTL8: u1,
                ///  Port output control (y = 9)
                OCTL9: u1,
                ///  Port output control (y = 10)
                OCTL10: u1,
                ///  Port output control (y = 11)
                OCTL11: u1,
                ///  Port output control (y = 12)
                OCTL12: u1,
                ///  Port output control (y = 13)
                OCTL13: u1,
                ///  Port output control (y = 14)
                OCTL14: u1,
                ///  Port output control (y = 15)
                OCTL15: u1,
                padding: u16,
            }),
            ///  GPIO port bit operate register
            BOP: mmio.Mmio(packed struct(u32) {
                ///  Port Set bit 0
                BOP0: u1,
                ///  Port Set bit 1
                BOP1: u1,
                ///  Port Set bit 2
                BOP2: u1,
                ///  Port Set bit 3
                BOP3: u1,
                ///  Port Set bit 4
                BOP4: u1,
                ///  Port Set bit 5
                BOP5: u1,
                ///  Port Set bit 6
                BOP6: u1,
                ///  Port Set bit 7
                BOP7: u1,
                ///  Port Set bit 8
                BOP8: u1,
                ///  Port Set bit 9
                BOP9: u1,
                ///  Port Set bit 10
                BOP10: u1,
                ///  Port Set bit 11
                BOP11: u1,
                ///  Port Set bit 12
                BOP12: u1,
                ///  Port Set bit 13
                BOP13: u1,
                ///  Port Set bit 14
                BOP14: u1,
                ///  Port Set bit 15
                BOP15: u1,
                ///  Port Clear bit 0
                CR0: u1,
                ///  Port Clear bit 1
                CR1: u1,
                ///  Port Clear bit 2
                CR2: u1,
                ///  Port Clear bit 3
                CR3: u1,
                ///  Port Clear bit 4
                CR4: u1,
                ///  Port Clear bit 5
                CR5: u1,
                ///  Port Clear bit 6
                CR6: u1,
                ///  Port Clear bit 7
                CR7: u1,
                ///  Port Clear bit 8
                CR8: u1,
                ///  Port Clear bit 9
                CR9: u1,
                ///  Port Clear bit 10
                CR10: u1,
                ///  Port Clear bit 11
                CR11: u1,
                ///  Port Clear bit 12
                CR12: u1,
                ///  Port Clear bit 13
                CR13: u1,
                ///  Port Clear bit 14
                CR14: u1,
                ///  Port Clear bit 15
                CR15: u1,
            }),
            ///  GPIO port configuration lock register
            LOCK: mmio.Mmio(packed struct(u32) {
                ///  Port Lock bit 0
                LK0: u1,
                ///  Port Lock bit 1
                LK1: u1,
                ///  Port Lock bit 2
                LK2: u1,
                ///  Port Lock bit 3
                LK3: u1,
                ///  Port Lock bit 4
                LK4: u1,
                ///  Port Lock bit 5
                LK5: u1,
                ///  Port Lock bit 6
                LK6: u1,
                ///  Port Lock bit 7
                LK7: u1,
                ///  Port Lock bit 8
                LK8: u1,
                ///  Port Lock bit 9
                LK9: u1,
                ///  Port Lock bit 10
                LK10: u1,
                ///  Port Lock bit 11
                LK11: u1,
                ///  Port Lock bit 12
                LK12: u1,
                ///  Port Lock bit 13
                LK13: u1,
                ///  Port Lock bit 14
                LK14: u1,
                ///  Port Lock bit 15
                LK15: u1,
                ///  Lock sequence key
                LKK: u1,
                padding: u15,
            }),
            ///  GPIO alternate function selected register 0
            AFSEL0: mmio.Mmio(packed struct(u32) {
                ///  Port 0 alternate function selected
                SEL0: u4,
                ///  Port 1 alternate function selected
                SEL1: u4,
                ///  Port 2 alternate function selected
                SEL2: u4,
                ///  Port 3 alternate function selected
                SEL3: u4,
                ///  Port 4 alternate function selected
                SEL4: u4,
                ///  Port 5 alternate function selected
                SEL5: u4,
                ///  Port 6 alternate function selected
                SEL6: u4,
                ///  Port 7 alternate function selected
                SEL7: u4,
            }),
            ///  GPIO alternate function selected register 1
            AFSEL1: mmio.Mmio(packed struct(u32) {
                ///  Port 8 alternate function selected
                SEL8: u4,
                ///  Port 9 alternate function selected
                SEL9: u4,
                ///  Port 10 alternate function selected
                SEL10: u4,
                ///  Port 11 alternate function selected
                SEL11: u4,
                ///  Port 12 alternate function selected
                SEL12: u4,
                ///  Port 13 alternate function selected
                SEL13: u4,
                ///  Port 14 alternate function selected
                SEL14: u4,
                ///  Port 15 alternate function selected
                SEL15: u4,
            }),
            ///  Bit clear register
            BC: mmio.Mmio(packed struct(u32) {
                ///  Port cleat bit
                CR0: u1,
                ///  Port cleat bit
                CR1: u1,
                ///  Port cleat bit
                CR2: u1,
                ///  Port cleat bit
                CR3: u1,
                ///  Port cleat bit
                CR4: u1,
                ///  Port cleat bit
                CR5: u1,
                ///  Port cleat bit
                CR6: u1,
                ///  Port cleat bit
                CR7: u1,
                ///  Port cleat bit
                CR8: u1,
                ///  Port cleat bit
                CR9: u1,
                ///  Port cleat bit
                CR10: u1,
                ///  Port cleat bit
                CR11: u1,
                ///  Port cleat bit
                CR12: u1,
                ///  Port cleat bit
                CR13: u1,
                ///  Port cleat bit
                CR14: u1,
                ///  Port cleat bit
                CR15: u1,
                padding: u16,
            }),
            ///  Port bit toggle register
            TG: mmio.Mmio(packed struct(u32) {
                ///  Port toggle bit
                TG0: u1,
                ///  Port toggle bit
                TG1: u1,
                ///  Port toggle bit
                TG2: u1,
                ///  Port toggle bit
                TG3: u1,
                ///  Port toggle bit
                TG4: u1,
                ///  Port toggle bit
                TG5: u1,
                ///  Port toggle bit
                TG6: u1,
                ///  Port toggle bit
                TG7: u1,
                ///  Port toggle bit
                TG8: u1,
                ///  Port toggle bit
                TG9: u1,
                ///  Port toggle bit
                TG10: u1,
                ///  Port toggle bit
                TG11: u1,
                ///  Port toggle bit
                TG12: u1,
                ///  Port toggle bit
                TG13: u1,
                ///  Port toggle bit
                TG14: u1,
                ///  Port toggle bit
                TG15: u1,
                padding: u16,
            }),
        };

        ///  General-purpose I/Os
        pub const GPIOC = extern struct {
            ///  GPIO port control register
            CTL: mmio.Mmio(packed struct(u32) {
                ///  Port x configuration bits (x = 0)
                CTL0: u2,
                ///  Port x configuration bits (x = 1)
                CTL1: u2,
                ///  Port x configuration bits (x = 2)
                CTL2: u2,
                ///  Port x configuration bits (x = 3)
                CTL3: u2,
                ///  Port x configuration bits (x = 4 )
                CTL4: u2,
                ///  Port x configuration bits (x = 5)
                CTL5: u2,
                ///  Port x configuration bits (x = 6 )
                CTL6: u2,
                ///  Port x configuration bits (x = 7)
                CTL7: u2,
                ///  Port x configuration bits (x = 8)
                CTL8: u2,
                ///  Port x configuration bits (x = 9)
                CTL9: u2,
                ///  Port x configuration bits (x = 10)
                CTL10: u2,
                ///  Port x configuration bits (x = 11)
                CTL11: u2,
                ///  Port x configuration bits (x = 12)
                CTL12: u2,
                ///  Port x configuration bits (x = 13)
                CTL13: u2,
                ///  Port x configuration bits (x = 14)
                CTL14: u2,
                ///  Port x configuration bits (x = 15)
                CTL15: u2,
            }),
            ///  GPIO port output mode register
            OMODE: mmio.Mmio(packed struct(u32) {
                ///  Port 0 output mode bit
                OM0: u1,
                ///  Port 1 output mode bit
                OM1: u1,
                ///  Port 2 output mode bit
                OM2: u1,
                ///  Port 3 output mode bit
                OM3: u1,
                ///  Port 4 output mode bit
                OM4: u1,
                ///  Port 5 output mode bit
                OM5: u1,
                ///  Port 6 output mode bit
                OM6: u1,
                ///  Port 7 output mode bit
                OM7: u1,
                ///  Port 8 output mode bit
                OM8: u1,
                ///  Port 9 output mode bit
                OM9: u1,
                ///  Port 10 output mode bit
                OM10: u1,
                ///  Port 11 output mode bit
                OM11: u1,
                ///  Port 12 output mode bit
                OM12: u1,
                ///  Port 13 output mode bit
                OM13: u1,
                ///  Port 14 output mode bit
                OM14: u1,
                ///  Port 15 output mode bit
                OM15: u1,
                padding: u16,
            }),
            ///  GPIO port output speed register
            OSPD: mmio.Mmio(packed struct(u32) {
                ///  Port 0 output max speed bits
                OSPD0: u2,
                ///  Port 1 output max speed bits
                OSPD1: u2,
                ///  Port 2 output max speed bits
                OSPD2: u2,
                ///  Port 3 output max speed bits
                OSPD3: u2,
                ///  Port 4 output max speed bits
                OSPD4: u2,
                ///  Port 5 output max speed bits
                OSPD5: u2,
                ///  Port 6 output max speed bits
                OSPD6: u2,
                ///  Port 7 output max speed bits
                OSPD7: u2,
                ///  Port 8 output max speed bits
                OSPD8: u2,
                ///  Port 9 output max speed bits
                OSPD9: u2,
                ///  Port 10 output max speed bits
                OSPD10: u2,
                ///  Port 11 output max speed bits
                OSPD11: u2,
                ///  Port 12 output max speed bits
                OSPD12: u2,
                ///  Port 13 output max speed bits
                OSPD13: u2,
                ///  Port 14 output max speed bits
                OSPD14: u2,
                ///  Port 15 output max speed bits
                OSPD15: u2,
            }),
            ///  GPIO port pull-up/pull-down register
            PUD: mmio.Mmio(packed struct(u32) {
                ///  Port 0 pull-up or pull-down bits
                PUD0: u2,
                ///  Port 1 pull-up or pull-down bits
                PUD1: u2,
                ///  Port 2 pull-up or pull-down bits
                PUD2: u2,
                ///  Port 3 pull-up or pull-down bits
                PUD3: u2,
                ///  Port 4 pull-up or pull-down bits
                PUD4: u2,
                ///  Port 5 pull-up or pull-down bits
                PUD5: u2,
                ///  Port 6 pull-up or pull-down bits
                PUD6: u2,
                ///  Port 7 pull-up or pull-down bits
                PUD7: u2,
                ///  Port 8 pull-up or pull-down bits
                PUD8: u2,
                ///  Port 9 pull-up or pull-down bits
                PUD9: u2,
                ///  Port 10 pull-up or pull-down bits
                PUD10: u2,
                ///  Port 11 pull-up or pull-down bits
                PUD11: u2,
                ///  Port 12 pull-up or pull-down bits
                PUD12: u2,
                ///  Port 13 pull-up or pull-down bits
                PUD13: u2,
                ///  Port 14 pull-up or pull-down bits
                PUD14: u2,
                ///  Port 15 pull-up or pull-down bits
                PUD15: u2,
            }),
            ///  GPIO port input status register
            ISTAT: mmio.Mmio(packed struct(u32) {
                ///  Port input status (y = 0)
                ISTAT0: u1,
                ///  Port input status (y = 1)
                ISTAT1: u1,
                ///  Port input status (y = 2)
                ISTAT2: u1,
                ///  Port input status (y = 3)
                ISTAT3: u1,
                ///  Port input status (y = 4)
                ISTAT4: u1,
                ///  Port input status (y = 5)
                ISTAT5: u1,
                ///  Port input status (y = 6)
                ISTAT6: u1,
                ///  Port input status (y = 7)
                ISTAT7: u1,
                ///  Port input status (y = 8)
                ISTAT8: u1,
                ///  Port input status (y = 9)
                ISTAT9: u1,
                ///  Port input status (y = 10)
                ISTAT10: u1,
                ///  Port input status (y = 11)
                ISTAT11: u1,
                ///  Port input status (y = 12)
                ISTAT12: u1,
                ///  Port input status (y = 13)
                ISTAT13: u1,
                ///  Port input status (y = 14)
                ISTAT14: u1,
                ///  Port input status (y = 15)
                ISTAT15: u1,
                padding: u16,
            }),
            ///  GPIO port output control register
            OCTL: mmio.Mmio(packed struct(u32) {
                ///  Port output control (y = 0)
                OCTL0: u1,
                ///  Port output control (y = 1)
                OCTL1: u1,
                ///  Port output control (y = 2)
                OCTL2: u1,
                ///  Port output control (y = 3)
                OCTL3: u1,
                ///  Port output control (y = 4)
                OCTL4: u1,
                ///  Port output control (y = 5)
                OCTL5: u1,
                ///  Port output control (y = 6)
                OCTL6: u1,
                ///  Port output control (y = 7)
                OCTL7: u1,
                ///  Port output control (y = 8)
                OCTL8: u1,
                ///  Port output control (y = 9)
                OCTL9: u1,
                ///  Port output control (y = 10)
                OCTL10: u1,
                ///  Port output control (y = 11)
                OCTL11: u1,
                ///  Port output control (y = 12)
                OCTL12: u1,
                ///  Port output control (y = 13)
                OCTL13: u1,
                ///  Port output control (y = 14)
                OCTL14: u1,
                ///  Port output control (y = 15)
                OCTL15: u1,
                padding: u16,
            }),
            ///  GPIO port bit operate register
            BOP: mmio.Mmio(packed struct(u32) {
                ///  Port Set bit 0
                BOP0: u1,
                ///  Port Set bit 1
                BOP1: u1,
                ///  Port Set bit 2
                BOP2: u1,
                ///  Port Set bit 3
                BOP3: u1,
                ///  Port Set bit 4
                BOP4: u1,
                ///  Port Set bit 5
                BOP5: u1,
                ///  Port Set bit 6
                BOP6: u1,
                ///  Port Set bit 7
                BOP7: u1,
                ///  Port Set bit 8
                BOP8: u1,
                ///  Port Set bit 9
                BOP9: u1,
                ///  Port Set bit 10
                BOP10: u1,
                ///  Port Set bit 11
                BOP11: u1,
                ///  Port Set bit 12
                BOP12: u1,
                ///  Port Set bit 13
                BOP13: u1,
                ///  Port Set bit 14
                BOP14: u1,
                ///  Port Set bit 15
                BOP15: u1,
                ///  Port Clear bit 0
                CR0: u1,
                ///  Port Clear bit 1
                CR1: u1,
                ///  Port Clear bit 2
                CR2: u1,
                ///  Port Clear bit 3
                CR3: u1,
                ///  Port Clear bit 4
                CR4: u1,
                ///  Port Clear bit 5
                CR5: u1,
                ///  Port Clear bit 6
                CR6: u1,
                ///  Port Clear bit 7
                CR7: u1,
                ///  Port Clear bit 8
                CR8: u1,
                ///  Port Clear bit 9
                CR9: u1,
                ///  Port Clear bit 10
                CR10: u1,
                ///  Port Clear bit 11
                CR11: u1,
                ///  Port Clear bit 12
                CR12: u1,
                ///  Port Clear bit 13
                CR13: u1,
                ///  Port Clear bit 14
                CR14: u1,
                ///  Port Clear bit 15
                CR15: u1,
            }),
            ///  GPIO port configuration lock register
            LOCK: mmio.Mmio(packed struct(u32) {
                ///  Port Lock bit 0
                LK0: u1,
                ///  Port Lock bit 1
                LK1: u1,
                ///  Port Lock bit 2
                LK2: u1,
                ///  Port Lock bit 3
                LK3: u1,
                ///  Port Lock bit 4
                LK4: u1,
                ///  Port Lock bit 5
                LK5: u1,
                ///  Port Lock bit 6
                LK6: u1,
                ///  Port Lock bit 7
                LK7: u1,
                ///  Port Lock bit 8
                LK8: u1,
                ///  Port Lock bit 9
                LK9: u1,
                ///  Port Lock bit 10
                LK10: u1,
                ///  Port Lock bit 11
                LK11: u1,
                ///  Port Lock bit 12
                LK12: u1,
                ///  Port Lock bit 13
                LK13: u1,
                ///  Port Lock bit 14
                LK14: u1,
                ///  Port Lock bit 15
                LK15: u1,
                ///  Lock sequence key
                LKK: u1,
                padding: u15,
            }),
            ///  GPIO alternate function selected register 0
            AFSEL0: mmio.Mmio(packed struct(u32) {
                ///  Port 0 alternate function selected
                SEL0: u4,
                ///  Port 1 alternate function selected
                SEL1: u4,
                ///  Port 2 alternate function selected
                SEL2: u4,
                ///  Port 3 alternate function selected
                SEL3: u4,
                ///  Port 4 alternate function selected
                SEL4: u4,
                ///  Port 5 alternate function selected
                SEL5: u4,
                ///  Port 6 alternate function selected
                SEL6: u4,
                ///  Port 7 alternate function selected
                SEL7: u4,
            }),
            ///  GPIO alternate function selected register 1
            AFSEL1: mmio.Mmio(packed struct(u32) {
                ///  Port 8 alternate function selected
                SEL8: u4,
                ///  Port 9 alternate function selected
                SEL9: u4,
                ///  Port 10 alternate function selected
                SEL10: u4,
                ///  Port 11 alternate function selected
                SEL11: u4,
                ///  Port 12 alternate function selected
                SEL12: u4,
                ///  Port 13 alternate function selected
                SEL13: u4,
                ///  Port 14 alternate function selected
                SEL14: u4,
                ///  Port 15 alternate function selected
                SEL15: u4,
            }),
            ///  Bit clear register
            BC: mmio.Mmio(packed struct(u32) {
                ///  Port cleat bit
                CR0: u1,
                ///  Port cleat bit
                CR1: u1,
                ///  Port cleat bit
                CR2: u1,
                ///  Port cleat bit
                CR3: u1,
                ///  Port cleat bit
                CR4: u1,
                ///  Port cleat bit
                CR5: u1,
                ///  Port cleat bit
                CR6: u1,
                ///  Port cleat bit
                CR7: u1,
                ///  Port cleat bit
                CR8: u1,
                ///  Port cleat bit
                CR9: u1,
                ///  Port cleat bit
                CR10: u1,
                ///  Port cleat bit
                CR11: u1,
                ///  Port cleat bit
                CR12: u1,
                ///  Port cleat bit
                CR13: u1,
                ///  Port cleat bit
                CR14: u1,
                ///  Port cleat bit
                CR15: u1,
                padding: u16,
            }),
            ///  Port bit toggle register
            TG: mmio.Mmio(packed struct(u32) {
                ///  Port toggle bit
                TG0: u1,
                ///  Port toggle bit
                TG1: u1,
                ///  Port toggle bit
                TG2: u1,
                ///  Port toggle bit
                TG3: u1,
                ///  Port toggle bit
                TG4: u1,
                ///  Port toggle bit
                TG5: u1,
                ///  Port toggle bit
                TG6: u1,
                ///  Port toggle bit
                TG7: u1,
                ///  Port toggle bit
                TG8: u1,
                ///  Port toggle bit
                TG9: u1,
                ///  Port toggle bit
                TG10: u1,
                ///  Port toggle bit
                TG11: u1,
                ///  Port toggle bit
                TG12: u1,
                ///  Port toggle bit
                TG13: u1,
                ///  Port toggle bit
                TG14: u1,
                ///  Port toggle bit
                TG15: u1,
                padding: u16,
            }),
        };

        ///  USB high speed global registers
        pub const HS_GLOBAL = extern struct {
            ///  control and status register (GOTGCS)
            GOTGCS: mmio.Mmio(packed struct(u32) {
                ///  Session request success
                SRPS: u1,
                ///  SRP request
                SRPREQ: u1,
                reserved8: u6,
                ///  Host negotiation success
                HNPS: u1,
                ///  HNP request
                HNPREQ: u1,
                ///  Host HNP enable
                HHNPEN: u1,
                ///  Device HNP enabled
                DHNPEN: u1,
                reserved16: u4,
                ///  ID pin status
                CIDPS: u1,
                ///  Debounce interval of a detected connection
                DI: u1,
                ///  A-session valid
                ASV: u1,
                ///  B-session valid
                BSV: u1,
                padding: u12,
            }),
            ///  Global OTG interrupt register (GOTGINTF)
            GOTGINTF: mmio.Mmio(packed struct(u32) {
                reserved2: u2,
                ///  Session end
                SESEND: u1,
                reserved8: u5,
                ///  SRPEND
                SRPEND: u1,
                ///  HNP end
                HNPEND: u1,
                reserved17: u7,
                ///  Host negotiation detected
                HNPDET: u1,
                ///  A-device timeout
                ADTO: u1,
                ///  Debounce finish
                DF: u1,
                padding: u12,
            }),
            ///  Global AHB configuration register (GAHBCS)
            GAHBCS: mmio.Mmio(packed struct(u32) {
                ///  Global interrupt enable
                GINTEN: u1,
                ///  AHB burst type used by DMA
                BURST: u4,
                ///  DMA function enalbed
                DMAEN: u1,
                reserved7: u1,
                ///  TxFIFO threshold
                TXFTH: u1,
                ///  Periodic TxFIFO empty level
                PTXFTH: u1,
                padding: u23,
            }),
            ///  USB configuration register (GUSBCS)
            GUSBCS: mmio.Mmio(packed struct(u32) {
                ///  timeout calibration
                TOC: u3,
                reserved6: u3,
                ///  Embedded PHY selected
                EMBPHY: u1,
                reserved8: u1,
                ///  SRP capability enable
                SRPCEN: u1,
                ///  HNP capability enable
                HNPCEN: u1,
                ///  USB turnaround time
                UTT: u4,
                reserved20: u6,
                ///  ULPI external VBUS driver
                ULPIEVD: u1,
                ///  ULPI external over current indicator
                ULPIEOI: u1,
                reserved29: u7,
                ///  Force host mode
                FHM: u1,
                ///  Force device mode
                FDM: u1,
                padding: u1,
            }),
            ///  Global reset register (GRSTCTL)
            GRSTCTL: mmio.Mmio(packed struct(u32) {
                ///  Core soft reset
                CSRST: u1,
                ///  HCLK soft reset
                HCSRST: u1,
                ///  Host frame counter reset
                HFCRST: u1,
                reserved4: u1,
                ///  RxFIFO flush
                RXFF: u1,
                ///  TxFIFO flush
                TXFF: u1,
                ///  TxFIFO number
                TXFNUM: u5,
                reserved30: u19,
                ///  DMA Busy
                DMABSY: u1,
                ///  DMA idle state
                DMAIDL: u1,
            }),
            ///  Global interrupt flag register (GINTF)
            GINTF: mmio.Mmio(packed struct(u32) {
                ///  Current mode of operation
                COPM: u1,
                ///  Mode fault interrupt flag
                MFIF: u1,
                ///  OTG interrupt
                OTGIF: u1,
                ///  Start of frame
                SOF: u1,
                ///  RxFIFO non-empty
                RXFNEIF: u1,
                ///  Non-periodic TxFIFO empty interrupt flag
                NPTXFEIF: u1,
                ///  Global IN non-periodic NAK effective
                GNPINAK: u1,
                ///  Global OUT NAK effective
                GONAK: u1,
                reserved10: u2,
                ///  Early suspend
                ESP: u1,
                ///  USB suspend
                SP: u1,
                ///  USB reset
                RST: u1,
                ///  Enumeration finished
                ENUMF: u1,
                ///  Isochronous OUT packet dropped interrupt flag
                ISOOPDIF: u1,
                ///  End of periodic frame interrupt flag
                EOPFIF: u1,
                reserved18: u2,
                ///  IN endpoint interrupt flag
                IEPIF: u1,
                ///  OUT endpoint interrupt flag
                OEPIF: u1,
                ///  Isochronous IN transfer Not Complete Interrupt Flag
                ISOINCIF: u1,
                ///  periodic transfer not complete interrupt flag(Host mode)/isochronous OUT transfer not complete interrupt flag(Device mode)
                PXNCIF_ISOONCIF: u1,
                reserved24: u2,
                ///  Host port interrupt flag
                HPIF: u1,
                ///  Host channels interrupt flag
                HCIF: u1,
                ///  Periodic TxFIFO empty interrupt flag
                PTXFEIF: u1,
                reserved28: u1,
                ///  ID pin status change
                IDPSC: u1,
                ///  Disconnect interrupt flag
                DISCIF: u1,
                ///  Session interrupt flag
                SESIF: u1,
                ///  wakeup interrupt flag
                WKUPIF: u1,
            }),
            ///  Global interrupt enable register (GINTEN)
            GINTEN: mmio.Mmio(packed struct(u32) {
                reserved1: u1,
                ///  Mode fault interrupt enable
                MFIE: u1,
                ///  OTG interrupt enable
                OTGIE: u1,
                ///  Start of frame interrupt enable
                SOFIE: u1,
                ///  Receive FIFO non-empty interrupt enable
                RXFNEIE: u1,
                ///  Non-periodic TxFIFO empty interrupt enable
                NPTXFEIE: u1,
                ///  Global non-periodic IN NAK interrupt enable
                GNPINAKIE: u1,
                ///  Global OUT NAK effective interrupt enable
                GONAKIE: u1,
                reserved10: u2,
                ///  Early suspend interrupt enable
                ESPIE: u1,
                ///  USB suspend interrupt enable
                SPIE: u1,
                ///  USB reset interrupt enable
                RSTIE: u1,
                ///  Enumeration finish enable
                ENUMFIE: u1,
                ///  Isochronous OUT packet dropped interrupt enable
                ISOOPDIE: u1,
                ///  End of periodic frame interrupt enable
                EOPFIE: u1,
                reserved18: u2,
                ///  IN endpoints interrupt enable
                IEPIE: u1,
                ///  OUT endpoints interrupt enable
                OEPIE: u1,
                ///  isochronous IN transfer not complete interrupt enable
                ISOINCIE: u1,
                ///  periodic transfer not compelete Interrupt enable(Host mode)/isochronous OUT transfer not complete interrupt enable(Device mode)
                PXNCIE_ISOONCIE: u1,
                reserved24: u2,
                ///  Host port interrupt enable
                HPIE: u1,
                ///  Host channels interrupt enable
                HCIE: u1,
                ///  Periodic TxFIFO empty interrupt enable
                PTXFEIE: u1,
                reserved28: u1,
                ///  ID pin status change interrupt enable
                IDPSCIE: u1,
                ///  Disconnect interrupt enable
                DISCIE: u1,
                ///  Session interrupt enable
                SESIE: u1,
                ///  Wakeup interrupt enable
                WKUPIE: u1,
            }),
            ///  Global Receive status read(Device mode)
            GRSTATR_Device: mmio.Mmio(packed struct(u32) {
                ///  Endpoint number
                EPNUM: u4,
                ///  Byte count
                BCOUNT: u11,
                ///  Data PID
                DPID: u2,
                ///  Recieve packet status
                RPCKST: u4,
                padding: u11,
            }),
            ///  Global Receive status pop(Device mode)
            GRSTATP_Device: mmio.Mmio(packed struct(u32) {
                ///  Endpoint number
                EPNUM: u4,
                ///  Byte count
                BCOUNT: u11,
                ///  Data PID
                DPID: u2,
                ///  Recieve packet status
                RPCKST: u4,
                padding: u11,
            }),
            ///  Global Receive FIFO size register (OTG_FS_GRFLEN)
            GRFLEN: mmio.Mmio(packed struct(u32) {
                ///  Rx FIFO depth
                RXFD: u16,
                padding: u16,
            }),
            ///  Host non-periodic transmit FIFO size register (Host mode)
            HNPTFLEN: mmio.Mmio(packed struct(u32) {
                ///  host non-periodic transmit Tx RAM start address
                HNPTXRSAR: u16,
                ///  host non-periodic TxFIFO depth
                HNPTXFD: u16,
            }),
            ///  Host non-periodic transmit FIFO/queue status register (HNPTFQSTAT)
            HNPTFQSTAT: mmio.Mmio(packed struct(u32) {
                ///  Non-periodic TxFIFO space available
                NPTXFS: u16,
                ///  Non-periodic transmit request queue space
                NPTXRQS: u8,
                ///  Top entry of the non-periodic Tx request queue
                NPTXRQTOP: u7,
                padding: u1,
            }),
            reserved56: [8]u8,
            ///  Global core configuration register (GCCFG)
            GCCFG: mmio.Mmio(packed struct(u32) {
                reserved16: u16,
                ///  Power on
                PWRON: u1,
                reserved18: u1,
                ///  The VBUS A-device Comparer enable
                VBUSACEN: u1,
                ///  The VBUS B-device Comparer enable
                VBUSBCEN: u1,
                ///  SOF output enable
                SOFOEN: u1,
                ///  VBUS ignored
                VBUSIG: u1,
                padding: u10,
            }),
            ///  core ID register
            CID: mmio.Mmio(packed struct(u32) {
                ///  Core ID
                CID: u32,
            }),
            reserved256: [192]u8,
            ///  Host periodic transmit FIFO size register (HPTFLEN)
            HPTFLEN: mmio.Mmio(packed struct(u32) {
                ///  Host periodic TxFIFO start address
                HPTXFSAR: u16,
                ///  Host periodic TxFIFO depth
                HPTXFD: u16,
            }),
            ///  device IN endpoint transmit FIFO size register (DIEP1TFLEN)
            DIEP1TFLEN: mmio.Mmio(packed struct(u32) {
                ///  IN endpoint FIFO transmit RAM start address
                IEPTXRSAR: u16,
                ///  IN endpoint TxFIFO depth
                IEPTXFD: u16,
            }),
            ///  device IN endpoint transmit FIFO size register (DIEP2TFLEN)
            DIEP2TFLEN: mmio.Mmio(packed struct(u32) {
                ///  IN endpoint FIFO transmit RAM start address
                IEPTXRSAR: u16,
                ///  IN endpoint TxFIFO depth
                IEPTXFD: u16,
            }),
            ///  device IN endpoint transmit FIFO size register (DIEP3TXFLEN)
            DIEP3TFLEN: mmio.Mmio(packed struct(u32) {
                ///  IN endpoint FIFO transmit RAM start address
                IEPTXRSAR: u16,
                ///  IN endpoint TxFIFO depth
                IEPTXFD: u16,
            }),
            ///  device IN endpoint transmit FIFO size register (DIEP4TXFLEN)
            DIEP4TFLEN: mmio.Mmio(packed struct(u32) {
                ///  IN endpoint FIFO transmit RAM start address
                IEPTXRSAR: u16,
                ///  IN endpoint TxFIFO depth
                IEPTXFD: u16,
            }),
            ///  device IN endpoint transmit FIFO size register (DIEP5TXFLEN)
            DIEP5TFLEN: mmio.Mmio(packed struct(u32) {
                ///  IN endpoint FIFO4 transmit RAM start address
                IEPTXRSAR: u16,
                ///  IN endpoint TxFIFO depth
                IEPTXFD: u16,
            }),
        };

        ///  USB on the go full speed
        pub const FS_PWRCLK = extern struct {
            ///  power and clock gating control register (PWRCLKCTL)
            PWRCLKCTL: mmio.Mmio(packed struct(u32) {
                ///  Stop the USB clock
                SUCLK: u1,
                ///  Stop HCLK
                SHCLK: u1,
                padding: u30,
            }),
        };

        ///  USB on the go full speed device
        pub const FS_DEVICE = extern struct {
            ///  device configuration register (DCFG)
            DCFG: mmio.Mmio(packed struct(u32) {
                ///  Device speed
                DS: u2,
                ///  Non-zero-length status OUT handshake
                NZLSOH: u1,
                reserved4: u1,
                ///  Device address
                DAR: u7,
                ///  end of periodic frame time
                EOPFT: u2,
                padding: u19,
            }),
            ///  device control register (DCTL)
            DCTL: mmio.Mmio(packed struct(u32) {
                ///  Remote wakeup
                RWKUP: u1,
                ///  Soft disconnect
                SD: u1,
                ///  Global IN NAK status
                GINS: u1,
                ///  Global OUT NAK status
                GONS: u1,
                reserved7: u3,
                ///  Set global IN NAK
                SGINAK: u1,
                ///  Clear global IN NAK
                CGINAK: u1,
                ///  Set global OUT NAK
                SGONAK: u1,
                ///  Clear global OUT NAK
                CGONAK: u1,
                ///  Power-on initialization flag
                POIF: u1,
                padding: u20,
            }),
            ///  device status register (DSTAT)
            DSTAT: mmio.Mmio(packed struct(u32) {
                ///  Suspend status
                SPST: u1,
                ///  Enumerated speed
                ES: u2,
                reserved8: u5,
                ///  Frame number of the received SOF
                FNRSOF: u14,
                padding: u10,
            }),
            reserved16: [4]u8,
            ///  device IN endpoint common interrupt mask register (DIEPINTEN)
            DIEPINTEN: mmio.Mmio(packed struct(u32) {
                ///  Transfer finished interrupt enable
                TFEN: u1,
                ///  Endpoint disabled interrupt enable
                EPDISEN: u1,
                reserved3: u1,
                ///  Control IN timeout condition interrupt enable (Non-isochronous endpoints)
                CITOEN: u1,
                ///  Endpoint Tx FIFO underrun interrupt enable bit
                EPTXFUDEN: u1,
                reserved6: u1,
                ///  IN endpoint NAK effective interrupt enable
                IEPNEEN: u1,
                ///  Trabsmit FIFO empty interrupt enable
                TXFEEN: u1,
                padding: u24,
            }),
            ///  device OUT endpoint common interrupt enable register (DOEPINTEN)
            DOEPINTEN: mmio.Mmio(packed struct(u32) {
                ///  Transfer finished interrupt enable
                TFEN: u1,
                ///  Endpoint disabled interrupt enable
                EPDISEN: u1,
                reserved3: u1,
                ///  SETUP phase finished interrupt enable
                STPFEN: u1,
                ///  Endpoint Rx FIFO overrun interrupt enable
                EPRXFOVREN: u1,
                reserved6: u1,
                ///  Back-to-back SETUP packets interrupt enable
                BTBSTPEN: u1,
                padding: u25,
            }),
            ///  device all endpoints interrupt register (DAEPINT)
            DAEPINT: mmio.Mmio(packed struct(u32) {
                ///  Device all IN endpoint interrupt bits
                IEPITB: u4,
                reserved16: u12,
                ///  Device all OUT endpoint interrupt bits
                OEPITB: u4,
                padding: u12,
            }),
            ///  Device all endpoints interrupt enable register (DAEPINTEN)
            DAEPINTEN: mmio.Mmio(packed struct(u32) {
                ///  IN EP interrupt interrupt enable bits
                IEPIE: u4,
                reserved16: u12,
                ///  OUT endpoint interrupt enable bits
                OEPIE: u4,
                padding: u12,
            }),
            reserved40: [8]u8,
            ///  device VBUS discharge time register
            DVBUSDT: mmio.Mmio(packed struct(u32) {
                ///  Device VBUS discharge time
                DVBUSDT: u16,
                padding: u16,
            }),
            ///  device VBUS pulsing time register
            DVBUSPT: mmio.Mmio(packed struct(u32) {
                ///  Device VBUS pulsing time
                DVBUSPT: u12,
                padding: u20,
            }),
            reserved52: [4]u8,
            ///  device IN endpoint FIFO empty interrupt enable register
            DIEPFEINTEN: mmio.Mmio(packed struct(u32) {
                ///  IN EP Tx FIFO empty interrupt enable bits
                IEPTXFEIE: u4,
                padding: u28,
            }),
            reserved256: [200]u8,
            ///  device IN endpoint 0 control register (DIEP0CTL)
            DIEP0CTL: mmio.Mmio(packed struct(u32) {
                ///  Maximum packet length
                MPL: u2,
                reserved15: u13,
                ///  endpoint active
                EPACT: u1,
                reserved17: u1,
                ///  NAK status
                NAKS: u1,
                ///  Endpoint type
                EPTYPE: u2,
                reserved21: u1,
                ///  STALL handshake
                STALL: u1,
                ///  TxFIFO number
                TXFNUM: u4,
                ///  Clear NAK
                CNAK: u1,
                ///  Set NAK
                SNAK: u1,
                reserved30: u2,
                ///  Endpoint disable
                EPD: u1,
                ///  Endpoint enable
                EPEN: u1,
            }),
            reserved264: [4]u8,
            ///  device endpoint-0 interrupt register
            DIEP0INTF: mmio.Mmio(packed struct(u32) {
                ///  Transfer finished
                TF: u1,
                ///  Endpoint finished
                EPDIS: u1,
                reserved3: u1,
                ///  Control in timeout interrupt
                CITO: u1,
                ///  Endpoint Tx FIFO underrun
                EPTXFUD: u1,
                reserved6: u1,
                ///  IN endpoint NAK effective
                IEPNE: u1,
                ///  Transmit FIFO empty
                TXFE: u1,
                padding: u24,
            }),
            reserved272: [4]u8,
            ///  device IN endpoint-0 transfer length register
            DIEP0LEN: mmio.Mmio(packed struct(u32) {
                ///  Transfer length
                TLEN: u7,
                reserved19: u12,
                ///  Packet count
                PCNT: u2,
                padding: u11,
            }),
            reserved280: [4]u8,
            ///  device IN endpoint 0 transmit FIFO status register
            DIEP0TFSTAT: mmio.Mmio(packed struct(u32) {
                ///  IN endpoint TxFIFO space remaining
                IEPTFS: u16,
                padding: u16,
            }),
            reserved288: [4]u8,
            ///  device in endpoint-1 control register
            DIEP1CTL: mmio.Mmio(packed struct(u32) {
                ///  maximum packet length
                MPL: u11,
                reserved15: u4,
                ///  Endpoint active
                EPACT: u1,
                ///  EOFRM/DPID
                EOFRM_DPID: u1,
                ///  NAK status
                NAKS: u1,
                ///  Endpoint type
                EPTYPE: u2,
                reserved21: u1,
                ///  STALL handshake
                STALL: u1,
                ///  Tx FIFO number
                TXFNUM: u4,
                ///  Clear NAK
                CNAK: u1,
                ///  Set NAK
                SNAK: u1,
                ///  SD0PID/SEVNFRM
                SD0PID_SEVENFRM: u1,
                ///  Set DATA1 PID/Set odd frame
                SD1PID_SODDFRM: u1,
                ///  Endpoint disable
                EPD: u1,
                ///  Endpoint enable
                EPEN: u1,
            }),
            reserved296: [4]u8,
            ///  device endpoint-1 interrupt register
            DIEP1INTF: mmio.Mmio(packed struct(u32) {
                ///  Transfer finished
                TF: u1,
                ///  Endpoint finished
                EPDIS: u1,
                reserved3: u1,
                ///  Control in timeout interrupt
                CITO: u1,
                ///  Endpoint Tx FIFO underrun
                EPTXFUD: u1,
                reserved6: u1,
                ///  IN endpoint NAK effective
                IEPNE: u1,
                ///  Transmit FIFO empty
                TXFE: u1,
                padding: u24,
            }),
            reserved304: [4]u8,
            ///  device IN endpoint-1 transfer length register
            DIEP1LEN: mmio.Mmio(packed struct(u32) {
                ///  Transfer length
                TLEN: u19,
                ///  Packet count
                PCNT: u10,
                padding: u3,
            }),
            reserved312: [4]u8,
            ///  device IN endpoint 1 transmit FIFO status register
            DIEP1TFSTAT: mmio.Mmio(packed struct(u32) {
                ///  IN endpoint TxFIFO space remaining
                IEPTFS: u16,
                padding: u16,
            }),
            reserved320: [4]u8,
            ///  device endpoint-2 control register
            DIEP2CTL: mmio.Mmio(packed struct(u32) {
                ///  maximum packet length
                MPL: u11,
                reserved15: u4,
                ///  Endpoint active
                EPACT: u1,
                ///  EOFRM/DPID
                EOFRM_DPID: u1,
                ///  NAK status
                NAKS: u1,
                ///  Endpoint type
                EPTYPE: u2,
                reserved21: u1,
                ///  STALL handshake
                STALL: u1,
                ///  Tx FIFO number
                TXFNUM: u4,
                ///  Clear NAK
                CNAK: u1,
                ///  Set NAK
                SNAK: u1,
                ///  SD0PID/SEVNFRM
                SD0PID_SEVENFRM: u1,
                ///  Set DATA1 PID/Set odd frame
                SD1PID_SODDFRM: u1,
                ///  Endpoint disable
                EPD: u1,
                ///  Endpoint enable
                EPEN: u1,
            }),
            reserved328: [4]u8,
            ///  device endpoint-2 interrupt register
            DIEP2INTF: mmio.Mmio(packed struct(u32) {
                ///  Transfer finished
                TF: u1,
                ///  Endpoint finished
                EPDIS: u1,
                reserved3: u1,
                ///  Control in timeout interrupt
                CITO: u1,
                ///  Endpoint Tx FIFO underrun
                EPTXFUD: u1,
                reserved6: u1,
                ///  IN endpoint NAK effective
                IEPNE: u1,
                ///  Transmit FIFO empty
                TXFE: u1,
                padding: u24,
            }),
            reserved336: [4]u8,
            ///  device IN endpoint-2 transfer length register
            DIEP2LEN: mmio.Mmio(packed struct(u32) {
                ///  Transfer length
                TLEN: u19,
                ///  Packet count
                PCNT: u10,
                padding: u3,
            }),
            reserved344: [4]u8,
            ///  device IN endpoint 2 transmit FIFO status register
            DIEP2TFSTAT: mmio.Mmio(packed struct(u32) {
                ///  IN endpoint TxFIFO space remaining
                IEPTFS: u16,
                padding: u16,
            }),
            reserved352: [4]u8,
            ///  device endpoint-3 control register
            DIEP3CTL: mmio.Mmio(packed struct(u32) {
                ///  maximum packet length
                MPL: u11,
                reserved15: u4,
                ///  Endpoint active
                EPACT: u1,
                ///  EOFRM/DPID
                EOFRM_DPID: u1,
                ///  NAK status
                NAKS: u1,
                ///  Endpoint type
                EPTYPE: u2,
                reserved21: u1,
                ///  STALL handshake
                STALL: u1,
                ///  Tx FIFO number
                TXFNUM: u4,
                ///  Clear NAK
                CNAK: u1,
                ///  Set NAK
                SNAK: u1,
                ///  SD0PID/SEVNFRM
                SD0PID_SEVENFRM: u1,
                ///  Set DATA1 PID/Set odd frame
                SD1PID_SODDFRM: u1,
                ///  Endpoint disable
                EPD: u1,
                ///  Endpoint enable
                EPEN: u1,
            }),
            reserved360: [4]u8,
            ///  device endpoint-3 interrupt register
            DIEP3INTF: mmio.Mmio(packed struct(u32) {
                ///  Transfer finished
                TF: u1,
                ///  Endpoint finished
                EPDIS: u1,
                reserved3: u1,
                ///  Control in timeout interrupt
                CITO: u1,
                ///  Endpoint Tx FIFO underrun
                EPTXFUD: u1,
                reserved6: u1,
                ///  IN endpoint NAK effective
                IEPNE: u1,
                ///  Transmit FIFO empty
                TXFE: u1,
                padding: u24,
            }),
            reserved368: [4]u8,
            ///  device IN endpoint-3 transfer length register
            DIEP3LEN: mmio.Mmio(packed struct(u32) {
                ///  Transfer length
                TLEN: u19,
                ///  Packet count
                PCNT: u10,
                padding: u3,
            }),
            reserved376: [4]u8,
            ///  device IN endpoint 3 transmit FIFO status register
            DIEP3TFSTAT: mmio.Mmio(packed struct(u32) {
                ///  IN endpoint TxFIFO space remaining
                IEPTFS: u16,
                padding: u16,
            }),
            reserved768: [388]u8,
            ///  device endpoint-0 control register
            DOEP0CTL: mmio.Mmio(packed struct(u32) {
                ///  Maximum packet length
                MPL: u2,
                reserved15: u13,
                ///  Endpoint active
                EPACT: u1,
                reserved17: u1,
                ///  NAK status
                NAKS: u1,
                ///  Endpoint type
                EPTYPE: u2,
                ///  Snoop mode
                SNOOP: u1,
                ///  STALL handshake
                STALL: u1,
                reserved26: u4,
                ///  Clear NAK
                CNAK: u1,
                ///  Set NAK
                SNAK: u1,
                reserved30: u2,
                ///  Endpoint disable
                EPD: u1,
                ///  Endpoint enable
                EPEN: u1,
            }),
            reserved776: [4]u8,
            ///  device out endpoint-0 interrupt flag register
            DOEP0INTF: mmio.Mmio(packed struct(u32) {
                ///  Transfer finished
                TF: u1,
                ///  Endpoint disabled
                EPDIS: u1,
                reserved3: u1,
                ///  Setup phase finished
                STPF: u1,
                ///  Endpoint Rx FIFO overrun
                EPRXFOVR: u1,
                reserved6: u1,
                ///  Back-to-back SETUP packets
                BTBSTP: u1,
                padding: u25,
            }),
            reserved784: [4]u8,
            ///  device OUT endpoint-0 transfer length register
            DOEP0LEN: mmio.Mmio(packed struct(u32) {
                ///  Transfer length
                TLEN: u7,
                reserved19: u12,
                ///  Packet count
                PCNT: u1,
                reserved29: u9,
                ///  SETUP packet count
                STPCNT: u2,
                padding: u1,
            }),
            reserved800: [12]u8,
            ///  device endpoint-1 control register
            DOEP1CTL: mmio.Mmio(packed struct(u32) {
                ///  maximum packet length
                MPL: u11,
                reserved15: u4,
                ///  Endpoint active
                EPACT: u1,
                ///  EOFRM/DPID
                EOFRM_DPID: u1,
                ///  NAK status
                NAKS: u1,
                ///  Endpoint type
                EPTYPE: u2,
                ///  Snoop mode
                SNOOP: u1,
                ///  STALL handshake
                STALL: u1,
                reserved26: u4,
                ///  Clear NAK
                CNAK: u1,
                ///  Set NAK
                SNAK: u1,
                ///  SD0PID/SEVENFRM
                SD0PID_SEVENFRM: u1,
                ///  SD1PID/SODDFRM
                SD1PID_SODDFRM: u1,
                ///  Endpoint disable
                EPD: u1,
                ///  Endpoint enable
                EPEN: u1,
            }),
            reserved808: [4]u8,
            ///  device out endpoint-1 interrupt flag register
            DOEP1INTF: mmio.Mmio(packed struct(u32) {
                ///  Transfer finished
                TF: u1,
                ///  Endpoint disabled
                EPDIS: u1,
                reserved3: u1,
                ///  Setup phase finished
                STPF: u1,
                ///  Endpoint Rx FIFO overrun
                EPRXFOVR: u1,
                reserved6: u1,
                ///  Back-to-back SETUP packets
                BTBSTP: u1,
                padding: u25,
            }),
            reserved816: [4]u8,
            ///  device OUT endpoint-1 transfer length register
            DOEP1LEN: mmio.Mmio(packed struct(u32) {
                ///  Transfer length
                TLEN: u19,
                ///  Packet count
                PCNT: u10,
                ///  SETUP packet count/Received data PID
                STPCNT_RXDPID: u2,
                padding: u1,
            }),
            reserved832: [12]u8,
            ///  device endpoint-2 control register
            DOEP2CTL: mmio.Mmio(packed struct(u32) {
                ///  maximum packet length
                MPL: u11,
                reserved15: u4,
                ///  Endpoint active
                EPACT: u1,
                ///  EOFRM/DPID
                EOFRM_DPID: u1,
                ///  NAK status
                NAKS: u1,
                ///  Endpoint type
                EPTYPE: u2,
                ///  Snoop mode
                SNOOP: u1,
                ///  STALL handshake
                STALL: u1,
                reserved26: u4,
                ///  Clear NAK
                CNAK: u1,
                ///  Set NAK
                SNAK: u1,
                ///  SD0PID/SEVENFRM
                SD0PID_SEVENFRM: u1,
                ///  SD1PID/SODDFRM
                SD1PID_SODDFRM: u1,
                ///  Endpoint disable
                EPD: u1,
                ///  Endpoint enable
                EPEN: u1,
            }),
            reserved840: [4]u8,
            ///  device out endpoint-2 interrupt flag register
            DOEP2INTF: mmio.Mmio(packed struct(u32) {
                ///  Transfer finished
                TF: u1,
                ///  Endpoint disabled
                EPDIS: u1,
                reserved3: u1,
                ///  Setup phase finished
                STPF: u1,
                ///  Endpoint Rx FIFO overrun
                EPRXFOVR: u1,
                reserved6: u1,
                ///  Back-to-back SETUP packets
                BTBSTP: u1,
                padding: u25,
            }),
            reserved848: [4]u8,
            ///  device OUT endpoint-2 transfer length register
            DOEP2LEN: mmio.Mmio(packed struct(u32) {
                ///  Transfer length
                TLEN: u19,
                ///  Packet count
                PCNT: u10,
                ///  SETUP packet count/Received data PID
                STPCNT_RXDPID: u2,
                padding: u1,
            }),
            reserved864: [12]u8,
            ///  device endpoint-3 control register
            DOEP3CTL: mmio.Mmio(packed struct(u32) {
                ///  maximum packet length
                MPL: u11,
                reserved15: u4,
                ///  Endpoint active
                EPACT: u1,
                ///  EOFRM/DPID
                EOFRM_DPID: u1,
                ///  NAK status
                NAKS: u1,
                ///  Endpoint type
                EPTYPE: u2,
                ///  Snoop mode
                SNOOP: u1,
                ///  STALL handshake
                STALL: u1,
                reserved26: u4,
                ///  Clear NAK
                CNAK: u1,
                ///  Set NAK
                SNAK: u1,
                ///  SD0PID/SEVENFRM
                SD0PID_SEVENFRM: u1,
                ///  SD1PID/SODDFRM
                SD1PID_SODDFRM: u1,
                ///  Endpoint disable
                EPD: u1,
                ///  Endpoint enable
                EPEN: u1,
            }),
            reserved872: [4]u8,
            ///  device out endpoint-3 interrupt flag register
            DOEP3INTF: mmio.Mmio(packed struct(u32) {
                ///  Transfer finished
                TF: u1,
                ///  Endpoint disabled
                EPDIS: u1,
                reserved3: u1,
                ///  Setup phase finished
                STPF: u1,
                ///  Endpoint Rx FIFO overrun
                EPRXFOVR: u1,
                reserved6: u1,
                ///  Back-to-back SETUP packets
                BTBSTP: u1,
                padding: u25,
            }),
            reserved880: [4]u8,
            ///  device OUT endpoint-3 transfer length register
            DOEP3LEN: mmio.Mmio(packed struct(u32) {
                ///  Transfer length
                TLEN: u19,
                ///  Packet count
                PCNT: u10,
                ///  SETUP packet count/Received data PID
                STPCNT_RXDPID: u2,
                padding: u1,
            }),
        };

        ///  USB on the go full speed host
        pub const FS_HOST = extern struct {
            ///  host configuration register (HCTL)
            HCTL: mmio.Mmio(packed struct(u32) {
                ///  clock select for USB clock
                CLKSEL: u2,
                padding: u30,
            }),
            ///  Host frame interval register
            HFT: mmio.Mmio(packed struct(u32) {
                ///  Frame interval
                FRI: u16,
                padding: u16,
            }),
            ///  OTG_FS host frame number/frame time remaining register (HFINFR)
            HFINFR: mmio.Mmio(packed struct(u32) {
                ///  Frame number
                FRNUM: u16,
                ///  Frame remaining time
                FRT: u16,
            }),
            reserved16: [4]u8,
            ///  Host periodic transmit FIFO/queue status register (HPTFQSTAT)
            HPTFQSTAT: mmio.Mmio(packed struct(u32) {
                ///  Periodic transmit data FIFO space available
                PTXFS: u16,
                ///  Periodic transmit request queue space available
                PTXREQS: u8,
                ///  Top of the periodic transmit request queue
                PTXREQT: u8,
            }),
            ///  Host all channels interrupt register
            HACHINT: mmio.Mmio(packed struct(u32) {
                ///  Host all channel interrupts
                HACHINT: u8,
                padding: u24,
            }),
            ///  host all channels interrupt mask register
            HACHINTEN: mmio.Mmio(packed struct(u32) {
                ///  Channel interrupt enable
                CINTEN: u8,
                padding: u24,
            }),
            reserved64: [36]u8,
            ///  Host port control and status register (USBFS_HPCS)
            HPCS: mmio.Mmio(packed struct(u32) {
                ///  Port connect status
                PCST: u1,
                ///  Port connect detected
                PCD: u1,
                ///  Port enable
                PE: u1,
                ///  Port enable/disable change
                PEDC: u1,
                reserved6: u2,
                ///  Port resume
                PREM: u1,
                ///  Port suspend
                PSP: u1,
                ///  Port reset
                PRST: u1,
                reserved10: u1,
                ///  Port line status
                PLST: u2,
                ///  Port power
                PP: u1,
                reserved17: u4,
                ///  Port speed
                PS: u2,
                padding: u13,
            }),
            reserved256: [188]u8,
            ///  host channel-0 characteristics register (HCH0CTL)
            HCH0CTL: mmio.Mmio(packed struct(u32) {
                ///  Maximum packet size
                MPL: u11,
                ///  Endpoint number
                EPNUM: u4,
                ///  Endpoint direction
                EPDIR: u1,
                reserved17: u1,
                ///  Low-speed device
                LSD: u1,
                ///  Endpoint type
                EPTYPE: u2,
                reserved22: u2,
                ///  Device address
                DAR: u7,
                ///  Odd frame
                ODDFRM: u1,
                ///  Channel disable
                CDIS: u1,
                ///  Channel enable
                CEN: u1,
            }),
            reserved264: [4]u8,
            ///  host channel-0 interrupt register (USBFS_HCHxINTF)
            HCH0INTF: mmio.Mmio(packed struct(u32) {
                ///  Transfer finished
                TF: u1,
                ///  Channel halted
                CH: u1,
                reserved3: u1,
                ///  STALL response received interrupt
                STALL: u1,
                ///  NAK response received interrupt
                NAK: u1,
                ///  ACK response received/transmitted interrupt
                ACK: u1,
                reserved7: u1,
                ///  USB bus error
                USBER: u1,
                ///  Babble error
                BBER: u1,
                ///  Request queue overrun
                REQOVR: u1,
                ///  Data toggle error
                DTER: u1,
                padding: u21,
            }),
            ///  host channel-0 interrupt enable register (HCH0INTEN)
            HCH0INTEN: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed interrupt enable
                TFIE: u1,
                ///  Channel halted interrupt enable
                CHIE: u1,
                reserved3: u1,
                ///  STALL interrupt enable
                STALLIE: u1,
                ///  NAK interrupt enable
                NAKIE: u1,
                ///  ACK interrupt enable
                ACKIE: u1,
                reserved7: u1,
                ///  USB bus error interrupt enable
                USBERIE: u1,
                ///  Babble error interrupt enable
                BBERIE: u1,
                ///  request queue overrun interrupt enable
                REQOVRIE: u1,
                ///  Data toggle error interrupt enable
                DTERIE: u1,
                padding: u21,
            }),
            ///  host channel-0 transfer length register
            HCH0LEN: mmio.Mmio(packed struct(u32) {
                ///  Transfer length
                TLEN: u19,
                ///  Packet count
                PCNT: u10,
                ///  Data PID
                DPID: u2,
                padding: u1,
            }),
            reserved288: [12]u8,
            ///  host channel-1 characteristics register (HCH1CTL)
            HCH1CTL: mmio.Mmio(packed struct(u32) {
                ///  Maximum packet size
                MPL: u11,
                ///  Endpoint number
                EPNUM: u4,
                ///  Endpoint direction
                EPDIR: u1,
                reserved17: u1,
                ///  Low-speed device
                LSD: u1,
                ///  Endpoint type
                EPTYPE: u2,
                reserved22: u2,
                ///  Device address
                DAR: u7,
                ///  Odd frame
                ODDFRM: u1,
                ///  Channel disable
                CDIS: u1,
                ///  Channel enable
                CEN: u1,
            }),
            reserved296: [4]u8,
            ///  host channel-1 interrupt register (HCH1INTF)
            HCH1INTF: mmio.Mmio(packed struct(u32) {
                ///  Transfer finished
                TF: u1,
                ///  Channel halted
                CH: u1,
                reserved3: u1,
                ///  STALL response received interrupt
                STALL: u1,
                ///  NAK response received interrupt
                NAK: u1,
                ///  ACK response received/transmitted interrupt
                ACK: u1,
                reserved7: u1,
                ///  USB bus error
                USBER: u1,
                ///  Babble error
                BBER: u1,
                ///  Request queue overrun
                REQOVR: u1,
                ///  Data toggle error
                DTER: u1,
                padding: u21,
            }),
            ///  host channel-1 interrupt enable register (HCH1INTEN)
            HCH1INTEN: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed interrupt enable
                TFIE: u1,
                ///  Channel halted interrupt enable
                CHIE: u1,
                reserved3: u1,
                ///  STALL interrupt enable
                STALLIE: u1,
                ///  NAK interrupt enable
                NAKIE: u1,
                ///  ACK interrupt enable
                ACKIE: u1,
                reserved7: u1,
                ///  USB bus error interrupt enable
                USBERIE: u1,
                ///  Babble error interrupt enable
                BBERIE: u1,
                ///  request queue overrun interrupt enable
                REQOVRIE: u1,
                ///  Data toggle error interrupt enable
                DTERIE: u1,
                padding: u21,
            }),
            ///  host channel-1 transfer length register
            HCH1LEN: mmio.Mmio(packed struct(u32) {
                ///  Transfer length
                TLEN: u19,
                ///  Packet count
                PCNT: u10,
                ///  Data PID
                DPID: u2,
                padding: u1,
            }),
            reserved320: [12]u8,
            ///  host channel-2 characteristics register (HCH2CTL)
            HCH2CTL: mmio.Mmio(packed struct(u32) {
                ///  Maximum packet size
                MPL: u11,
                ///  Endpoint number
                EPNUM: u4,
                ///  Endpoint direction
                EPDIR: u1,
                reserved17: u1,
                ///  Low-speed device
                LSD: u1,
                ///  Endpoint type
                EPTYPE: u2,
                reserved22: u2,
                ///  Device address
                DAR: u7,
                ///  Odd frame
                ODDFRM: u1,
                ///  Channel disable
                CDIS: u1,
                ///  Channel enable
                CEN: u1,
            }),
            reserved328: [4]u8,
            ///  host channel-2 interrupt register (HCH2INTF)
            HCH2INTF: mmio.Mmio(packed struct(u32) {
                ///  Transfer finished
                TF: u1,
                ///  Channel halted
                CH: u1,
                reserved3: u1,
                ///  STALL response received interrupt
                STALL: u1,
                ///  NAK response received interrupt
                NAK: u1,
                ///  ACK response received/transmitted interrupt
                ACK: u1,
                reserved7: u1,
                ///  USB bus error
                USBER: u1,
                ///  Babble error
                BBER: u1,
                ///  Request queue overrun
                REQOVR: u1,
                ///  Data toggle error
                DTER: u1,
                padding: u21,
            }),
            ///  host channel-2 interrupt enable register (HCH2INTEN)
            HCH2INTEN: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed interrupt enable
                TFIE: u1,
                ///  Channel halted interrupt enable
                CHIE: u1,
                reserved3: u1,
                ///  STALL interrupt enable
                STALLIE: u1,
                ///  NAK interrupt enable
                NAKIE: u1,
                ///  ACK interrupt enable
                ACKIE: u1,
                reserved7: u1,
                ///  USB bus error interrupt enable
                USBERIE: u1,
                ///  Babble error interrupt enable
                BBERIE: u1,
                ///  request queue overrun interrupt enable
                REQOVRIE: u1,
                ///  Data toggle error interrupt enable
                DTERIE: u1,
                padding: u21,
            }),
            ///  host channel-2 transfer length register
            HCH2LEN: mmio.Mmio(packed struct(u32) {
                ///  Transfer length
                TLEN: u19,
                ///  Packet count
                PCNT: u10,
                ///  Data PID
                DPID: u2,
                padding: u1,
            }),
            reserved352: [12]u8,
            ///  host channel-3 characteristics register (HCH3CTL)
            HCH3CTL: mmio.Mmio(packed struct(u32) {
                ///  Maximum packet size
                MPL: u11,
                ///  Endpoint number
                EPNUM: u4,
                ///  Endpoint direction
                EPDIR: u1,
                reserved17: u1,
                ///  Low-speed device
                LSD: u1,
                ///  Endpoint type
                EPTYPE: u2,
                reserved22: u2,
                ///  Device address
                DAR: u7,
                ///  Odd frame
                ODDFRM: u1,
                ///  Channel disable
                CDIS: u1,
                ///  Channel enable
                CEN: u1,
            }),
            reserved360: [4]u8,
            ///  host channel-3 interrupt register (HCH3INTF)
            HCH3INTF: mmio.Mmio(packed struct(u32) {
                ///  Transfer finished
                TF: u1,
                ///  Channel halted
                CH: u1,
                reserved3: u1,
                ///  STALL response received interrupt
                STALL: u1,
                ///  NAK response received interrupt
                NAK: u1,
                ///  ACK response received/transmitted interrupt
                ACK: u1,
                reserved7: u1,
                ///  USB bus error
                USBER: u1,
                ///  Babble error
                BBER: u1,
                ///  Request queue overrun
                REQOVR: u1,
                ///  Data toggle error
                DTER: u1,
                padding: u21,
            }),
            ///  host channel-3 interrupt enable register (HCH3INTEN)
            HCH3INTEN: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed interrupt enable
                TFIE: u1,
                ///  Channel halted interrupt enable
                CHIE: u1,
                reserved3: u1,
                ///  STALL interrupt enable
                STALLIE: u1,
                ///  NAK interrupt enable
                NAKIE: u1,
                ///  ACK interrupt enable
                ACKIE: u1,
                reserved7: u1,
                ///  USB bus error interrupt enable
                USBERIE: u1,
                ///  Babble error interrupt enable
                BBERIE: u1,
                ///  request queue overrun interrupt enable
                REQOVRIE: u1,
                ///  Data toggle error interrupt enable
                DTERIE: u1,
                padding: u21,
            }),
            ///  host channel-3 transfer length register
            HCH3LEN: mmio.Mmio(packed struct(u32) {
                ///  Transfer length
                TLEN: u19,
                ///  Packet count
                PCNT: u10,
                ///  Data PID
                DPID: u2,
                padding: u1,
            }),
            reserved384: [12]u8,
            ///  host channel-4 characteristics register (HCH4CTL)
            HCH4CTL: mmio.Mmio(packed struct(u32) {
                ///  Maximum packet size
                MPL: u11,
                ///  Endpoint number
                EPNUM: u4,
                ///  Endpoint direction
                EPDIR: u1,
                reserved17: u1,
                ///  Low-speed device
                LSD: u1,
                ///  Endpoint type
                EPTYPE: u2,
                reserved22: u2,
                ///  Device address
                DAR: u7,
                ///  Odd frame
                ODDFRM: u1,
                ///  Channel disable
                CDIS: u1,
                ///  Channel enable
                CEN: u1,
            }),
            reserved392: [4]u8,
            ///  host channel-4 interrupt register (HCH4INTF)
            HCH4INTF: mmio.Mmio(packed struct(u32) {
                ///  Transfer finished
                TF: u1,
                ///  Channel halted
                CH: u1,
                reserved3: u1,
                ///  STALL response received interrupt
                STALL: u1,
                ///  NAK response received interrupt
                NAK: u1,
                ///  ACK response received/transmitted interrupt
                ACK: u1,
                reserved7: u1,
                ///  USB bus error
                USBER: u1,
                ///  Babble error
                BBER: u1,
                ///  Request queue overrun
                REQOVR: u1,
                ///  Data toggle error
                DTER: u1,
                padding: u21,
            }),
            ///  host channel-4 interrupt enable register (HCH4INTEN)
            HCH4INTEN: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed interrupt enable
                TFIE: u1,
                ///  Channel halted interrupt enable
                CHIE: u1,
                reserved3: u1,
                ///  STALL interrupt enable
                STALLIE: u1,
                ///  NAK interrupt enable
                NAKIE: u1,
                ///  ACK interrupt enable
                ACKIE: u1,
                reserved7: u1,
                ///  USB bus error interrupt enable
                USBERIE: u1,
                ///  Babble error interrupt enable
                BBERIE: u1,
                ///  request queue overrun interrupt enable
                REQOVRIE: u1,
                ///  Data toggle error interrupt enable
                DTERIE: u1,
                padding: u21,
            }),
            ///  host channel-4 transfer length register
            HCH4LEN: mmio.Mmio(packed struct(u32) {
                ///  Transfer length
                TLEN: u19,
                ///  Packet count
                PCNT: u10,
                ///  Data PID
                DPID: u2,
                padding: u1,
            }),
            reserved416: [12]u8,
            ///  host channel-5 characteristics register (HCH5CTL)
            HCH5CTL: mmio.Mmio(packed struct(u32) {
                ///  Maximum packet size
                MPL: u11,
                ///  Endpoint number
                EPNUM: u4,
                ///  Endpoint direction
                EPDIR: u1,
                reserved17: u1,
                ///  Low-speed device
                LSD: u1,
                ///  Endpoint type
                EPTYPE: u2,
                reserved22: u2,
                ///  Device address
                DAR: u7,
                ///  Odd frame
                ODDFRM: u1,
                ///  Channel disable
                CDIS: u1,
                ///  Channel enable
                CEN: u1,
            }),
            reserved424: [4]u8,
            ///  host channel-5 interrupt register (HCH5INTF)
            HCH5INTF: mmio.Mmio(packed struct(u32) {
                ///  Transfer finished
                TF: u1,
                ///  Channel halted
                CH: u1,
                reserved3: u1,
                ///  STALL response received interrupt
                STALL: u1,
                ///  NAK response received interrupt
                NAK: u1,
                ///  ACK response received/transmitted interrupt
                ACK: u1,
                reserved7: u1,
                ///  USB bus error
                USBER: u1,
                ///  Babble error
                BBER: u1,
                ///  Request queue overrun
                REQOVR: u1,
                ///  Data toggle error
                DTER: u1,
                padding: u21,
            }),
            ///  host channel-5 interrupt enable register (HCH5INTEN)
            HCH5INTEN: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed interrupt enable
                TFIE: u1,
                ///  Channel halted interrupt enable
                CHIE: u1,
                reserved3: u1,
                ///  STALL interrupt enable
                STALLIE: u1,
                ///  NAK interrupt enable
                NAKIE: u1,
                ///  ACK interrupt enable
                ACKIE: u1,
                reserved7: u1,
                ///  USB bus error interrupt enable
                USBERIE: u1,
                ///  Babble error interrupt enable
                BBERIE: u1,
                ///  request queue overrun interrupt enable
                REQOVRIE: u1,
                ///  Data toggle error interrupt enable
                DTERIE: u1,
                padding: u21,
            }),
            ///  host channel-5 transfer length register
            HCH5LEN: mmio.Mmio(packed struct(u32) {
                ///  Transfer length
                TLEN: u19,
                ///  Packet count
                PCNT: u10,
                ///  Data PID
                DPID: u2,
                padding: u1,
            }),
            reserved448: [12]u8,
            ///  host channel-6 characteristics register (HCH6CTL)
            HCH6CTL: mmio.Mmio(packed struct(u32) {
                ///  Maximum packet size
                MPL: u11,
                ///  Endpoint number
                EPNUM: u4,
                ///  Endpoint direction
                EPDIR: u1,
                reserved17: u1,
                ///  Low-speed device
                LSD: u1,
                ///  Endpoint type
                EPTYPE: u2,
                reserved22: u2,
                ///  Device address
                DAR: u7,
                ///  Odd frame
                ODDFRM: u1,
                ///  Channel disable
                CDIS: u1,
                ///  Channel enable
                CEN: u1,
            }),
            reserved456: [4]u8,
            ///  host channel-6 interrupt register (HCH6INTF)
            HCH6INTF: mmio.Mmio(packed struct(u32) {
                ///  Transfer finished
                TF: u1,
                ///  Channel halted
                CH: u1,
                reserved3: u1,
                ///  STALL response received interrupt
                STALL: u1,
                ///  NAK response received interrupt
                NAK: u1,
                ///  ACK response received/transmitted interrupt
                ACK: u1,
                reserved7: u1,
                ///  USB bus error
                USBER: u1,
                ///  Babble error
                BBER: u1,
                ///  Request queue overrun
                REQOVR: u1,
                ///  Data toggle error
                DTER: u1,
                padding: u21,
            }),
            ///  host channel-6 interrupt enable register (HCH6INTEN)
            HCH6INTEN: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed interrupt enable
                TFIE: u1,
                ///  Channel halted interrupt enable
                CHIE: u1,
                reserved3: u1,
                ///  STALL interrupt enable
                STALLIE: u1,
                ///  NAK interrupt enable
                NAKIE: u1,
                ///  ACK interrupt enable
                ACKIE: u1,
                reserved7: u1,
                ///  USB bus error interrupt enable
                USBERIE: u1,
                ///  Babble error interrupt enable
                BBERIE: u1,
                ///  request queue overrun interrupt enable
                REQOVRIE: u1,
                ///  Data toggle error interrupt enable
                DTERIE: u1,
                padding: u21,
            }),
            ///  host channel-6 transfer length register
            HCH6LEN: mmio.Mmio(packed struct(u32) {
                ///  Transfer length
                TLEN: u19,
                ///  Packet count
                PCNT: u10,
                ///  Data PID
                DPID: u2,
                padding: u1,
            }),
            reserved480: [12]u8,
            ///  host channel-7 characteristics register (HCH7CTL)
            HCH7CTL: mmio.Mmio(packed struct(u32) {
                ///  Maximum packet size
                MPL: u11,
                ///  Endpoint number
                EPNUM: u4,
                ///  Endpoint direction
                EPDIR: u1,
                reserved17: u1,
                ///  Low-speed device
                LSD: u1,
                ///  Endpoint type
                EPTYPE: u2,
                reserved22: u2,
                ///  Device address
                DAR: u7,
                ///  Odd frame
                ODDFRM: u1,
                ///  Channel disable
                CDIS: u1,
                ///  Channel enable
                CEN: u1,
            }),
            reserved488: [4]u8,
            ///  host channel-7 interrupt register (HCH7INTF)
            HCH7INTF: mmio.Mmio(packed struct(u32) {
                ///  Transfer finished
                TF: u1,
                ///  Channel halted
                CH: u1,
                reserved3: u1,
                ///  STALL response received interrupt
                STALL: u1,
                ///  NAK response received interrupt
                NAK: u1,
                ///  ACK response received/transmitted interrupt
                ACK: u1,
                reserved7: u1,
                ///  USB bus error
                USBER: u1,
                ///  Babble error
                BBER: u1,
                ///  Request queue overrun
                REQOVR: u1,
                ///  Data toggle error
                DTER: u1,
                padding: u21,
            }),
            ///  host channel-7 interrupt enable register (HCH7INTEN)
            HCH7INTEN: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed interrupt enable
                TFIE: u1,
                ///  Channel halted interrupt enable
                CHIE: u1,
                reserved3: u1,
                ///  STALL interrupt enable
                STALLIE: u1,
                ///  NAK interrupt enable
                NAKIE: u1,
                ///  ACK interrupt enable
                ACKIE: u1,
                reserved7: u1,
                ///  USB bus error interrupt enable
                USBERIE: u1,
                ///  Babble error interrupt enable
                BBERIE: u1,
                ///  request queue overrun interrupt enable
                REQOVRIE: u1,
                ///  Data toggle error interrupt enable
                DTERIE: u1,
                padding: u21,
            }),
            ///  host channel-7 transfer length register
            HCH7LEN: mmio.Mmio(packed struct(u32) {
                ///  Transfer length
                TLEN: u19,
                ///  Packet count
                PCNT: u10,
                ///  Data PID
                DPID: u2,
                padding: u1,
            }),
        };

        ///  USB full speed global registers
        pub const FS_GLOBAL = extern struct {
            ///  Global OTG control and status register (USBFS_GOTGCS)
            GOTGCS: mmio.Mmio(packed struct(u32) {
                ///  SRP success
                SRPS: u1,
                ///  SRP request
                SRPREQ: u1,
                reserved8: u6,
                ///  Host success
                HNPS: u1,
                ///  HNP request
                HNPREQ: u1,
                ///  Host HNP enable
                HHNPEN: u1,
                ///  Device HNP enabled
                DHNPEN: u1,
                reserved16: u4,
                ///  ID pin status
                IDPS: u1,
                ///  Debounce interval
                DI: u1,
                ///  A-session valid
                ASV: u1,
                ///  B-session valid
                BSV: u1,
                padding: u12,
            }),
            ///  Global OTG interrupt flag register (OTG_FS_GOTGINTF)
            GOTGINTF: mmio.Mmio(packed struct(u32) {
                reserved2: u2,
                ///  Session end
                SESEND: u1,
                reserved8: u5,
                ///  Session request success status change
                SRPEND: u1,
                ///  HNP end
                HNPEND: u1,
                reserved17: u7,
                ///  Host negotiation request detected
                HNPDET: u1,
                ///  A-device timeout
                ADTO: u1,
                ///  Debounce finish
                DF: u1,
                padding: u12,
            }),
            ///  Global AHB control and status register (USBFS_GAHBCS)
            GAHBCS: mmio.Mmio(packed struct(u32) {
                ///  Global interrupt enable
                GINTEN: u1,
                reserved7: u6,
                ///  Tx FIFO threshold
                TXFTH: u1,
                ///  Periodic Tx FIFO threshold
                PTXFTH: u1,
                padding: u23,
            }),
            ///  Global USB control and status register (OTG_FS_GUSBCSR)
            GUSBCS: mmio.Mmio(packed struct(u32) {
                ///  Timeout calibration
                TOC: u3,
                reserved8: u5,
                ///  SRP capability enable
                SRPCEN: u1,
                ///  HNP capability enable
                HNPCEN: u1,
                ///  USB turnaround time
                UTT: u4,
                reserved29: u15,
                ///  Force host mode
                FHM: u1,
                ///  Force device mode
                FDM: u1,
                padding: u1,
            }),
            ///  Global reset control register (USBFS_GRSTCTL)
            GRSTCTL: mmio.Mmio(packed struct(u32) {
                ///  Core soft reset
                CSRST: u1,
                ///  HCLK soft reset
                HCSRST: u1,
                ///  Host frame counter reset
                HFCRST: u1,
                reserved4: u1,
                ///  RxFIFO flush
                RXFF: u1,
                ///  TxFIFO flush
                TXFF: u1,
                ///  TxFIFO number
                TXFNUM: u5,
                padding: u21,
            }),
            ///  Global interrupt flag register (USBFS_GINTF)
            GINTF: mmio.Mmio(packed struct(u32) {
                ///  Current operation mode
                COPM: u1,
                ///  Mode fault interrupt flag
                MFIF: u1,
                ///  OTG interrupt flag
                OTGIF: u1,
                ///  Start of frame
                SOF: u1,
                ///  RxFIFO non-empty interrupt flag
                RXFNEIF: u1,
                ///  Non-periodic TxFIFO empty interrupt flag
                NPTXFEIF: u1,
                ///  Global Non-Periodic IN NAK effective
                GNPINAK: u1,
                ///  Global OUT NAK effective
                GONAK: u1,
                reserved10: u2,
                ///  Early suspend
                ESP: u1,
                ///  USB suspend
                SP: u1,
                ///  USB reset
                RST: u1,
                ///  Enumeration finished
                ENUMF: u1,
                ///  Isochronous OUT packet dropped interrupt
                ISOOPDIF: u1,
                ///  End of periodic frame interrupt flag
                EOPFIF: u1,
                reserved18: u2,
                ///  IN endpoint interrupt flag
                IEPIF: u1,
                ///  OUT endpoint interrupt flag
                OEPIF: u1,
                ///  Isochronous IN transfer Not Complete Interrupt Flag
                ISOINCIF: u1,
                ///  periodic transfer not complete interrupt flag(Host mode)/isochronous OUT transfer not complete interrupt flag(Device mode)
                PXNCIF_ISOONCIF: u1,
                reserved24: u2,
                ///  Host port interrupt flag
                HPIF: u1,
                ///  Host channels interrupt flag
                HCIF: u1,
                ///  Periodic TxFIFO empty interrupt flag
                PTXFEIF: u1,
                reserved28: u1,
                ///  ID pin status change
                IDPSC: u1,
                ///  Disconnect interrupt flag
                DISCIF: u1,
                ///  Session interrupt flag
                SESIF: u1,
                ///  Wakeup interrupt flag
                WKUPIF: u1,
            }),
            ///  Global interrupt enable register (USBFS_GINTEN)
            GINTEN: mmio.Mmio(packed struct(u32) {
                reserved1: u1,
                ///  Mode fault interrupt enable
                MFIE: u1,
                ///  OTG interrupt enable
                OTGIE: u1,
                ///  Start of frame interrupt enable
                SOFIE: u1,
                ///  Receive FIFO non-empty interrupt enable
                RXFNEIE: u1,
                ///  Non-periodic TxFIFO empty interrupt enable
                NPTXFEIE: u1,
                ///  Global non-periodic IN NAK effective interrupt enable
                GNPINAKIE: u1,
                ///  Global OUT NAK effective interrupt enable
                GONAKIE: u1,
                reserved10: u2,
                ///  Early suspend interrupt enable
                ESPIE: u1,
                ///  USB suspend interrupt enable
                SPIE: u1,
                ///  USB reset interrupt enable
                RSTIE: u1,
                ///  Enumeration finish interrupt enable
                ENUMFIE: u1,
                ///  Isochronous OUT packet dropped interrupt enable
                ISOOPDIE: u1,
                ///  End of periodic frame interrupt enable
                EOPFIE: u1,
                reserved18: u2,
                ///  IN endpoints interrupt enable
                IEPIE: u1,
                ///  OUT endpoints interrupt enable
                OEPIE: u1,
                ///  isochronous IN transfer not complete interrupt enable
                ISOINCIE: u1,
                ///  periodic transfer not compelete Interrupt enable(Host mode)/isochronous OUT transfer not complete interrupt enable(Device mode)
                PXNCIE_ISOONCIE: u1,
                reserved24: u2,
                ///  Host port interrupt enable
                HPIE: u1,
                ///  Host channels interrupt enable
                HCIE: u1,
                ///  Periodic TxFIFO empty interrupt enable
                PTXFEIE: u1,
                reserved28: u1,
                ///  ID pin status change interrupt enable
                IDPSCIE: u1,
                ///  Disconnect interrupt enable
                DISCIE: u1,
                ///  Session interrupt enable
                SESIE: u1,
                ///  Wakeup interrupt enable
                WKUPIE: u1,
            }),
            ///  Global Receive status read(Device mode)
            GRSTATR_Device: mmio.Mmio(packed struct(u32) {
                ///  Endpoint number
                EPNUM: u4,
                ///  Byte count
                BCOUNT: u11,
                ///  Data PID
                DPID: u2,
                ///  Recieve packet status
                RPCKST: u4,
                padding: u11,
            }),
            ///  Global Receive status pop(Device mode)
            GRSTATP_Device: mmio.Mmio(packed struct(u32) {
                ///  Endpoint number
                EPNUM: u4,
                ///  Byte count
                BCOUNT: u11,
                ///  Data PID
                DPID: u2,
                ///  Recieve packet status
                RPCKST: u4,
                padding: u11,
            }),
            ///  Global Receive FIFO size register (USBFS_GRFLEN)
            GRFLEN: mmio.Mmio(packed struct(u32) {
                ///  Rx FIFO depth
                RXFD: u16,
                padding: u16,
            }),
            ///  Host non-periodic transmit FIFO length register (Host mode)
            HNPTFLEN: mmio.Mmio(packed struct(u32) {
                ///  host non-periodic transmit Tx RAM start address
                HNPTXRSAR: u16,
                ///  host non-periodic TxFIFO depth
                HNPTXFD: u16,
            }),
            ///  Host non-periodic transmit FIFO/queue status register (HNPTFQSTAT)
            HNPTFQSTAT: mmio.Mmio(packed struct(u32) {
                ///  Non-periodic TxFIFO space
                NPTXFS: u16,
                ///  Non-periodic transmit request queue space
                NPTXRQS: u8,
                ///  Top of the non-periodic transmit request queue
                NPTXRQTOP: u7,
                padding: u1,
            }),
            reserved56: [8]u8,
            ///  Global core configuration register (USBFS_GCCFG)
            GCCFG: mmio.Mmio(packed struct(u32) {
                reserved16: u16,
                ///  Power on
                PWRON: u1,
                reserved18: u1,
                ///  The VBUS A-device Comparer enable
                VBUSACEN: u1,
                ///  The VBUS B-device Comparer enable
                VBUSBCEN: u1,
                ///  SOF output enable
                SOFOEN: u1,
                ///  VBUS ignored
                VBUSIG: u1,
                padding: u10,
            }),
            ///  core ID register
            CID: mmio.Mmio(packed struct(u32) {
                ///  Core ID
                CID: u32,
            }),
            reserved256: [192]u8,
            ///  Host periodic transmit FIFO length register (HPTFLEN)
            HPTFLEN: mmio.Mmio(packed struct(u32) {
                ///  Host periodic TxFIFO start address
                HPTXFSAR: u16,
                ///  Host periodic TxFIFO depth
                HPTXFD: u16,
            }),
            ///  device IN endpoint transmit FIFO size register (DIEP1TFLEN)
            DIEP1TFLEN: mmio.Mmio(packed struct(u32) {
                ///  IN endpoint FIFO transmit RAM start address
                IEPTXRSAR: u16,
                ///  IN endpoint TxFIFO depth
                IEPTXFD: u16,
            }),
            ///  device IN endpoint transmit FIFO size register (DIEP2TFLEN)
            DIEP2TFLEN: mmio.Mmio(packed struct(u32) {
                ///  IN endpoint FIFO transmit RAM start address
                IEPTXRSAR: u16,
                ///  IN endpoint TxFIFO depth
                IEPTXFD: u16,
            }),
            ///  device IN endpoint transmit FIFO size register (FS_DIEP3TXFLEN)
            DIEP3TFLEN: mmio.Mmio(packed struct(u32) {
                ///  IN endpoint FIFO4 transmit RAM start address
                IEPTXRSAR: u16,
                ///  IN endpoint TxFIFO depth
                IEPTXFD: u16,
            }),
        };

        ///  Advanced-timers
        pub const TIMER0 = extern struct {
            ///  control register 0
            CTL0: mmio.Mmio(packed struct(u32) {
                ///  Counter enable
                CEN: u1,
                ///  Update disable
                UPDIS: u1,
                ///  Update source
                UPS: u1,
                ///  Single pulse mode
                SPM: u1,
                ///  Direction
                DIR: u1,
                ///  Counter aligns mode selection
                CAM: u2,
                ///  Auto-reload shadow enable
                ARSE: u1,
                ///  Clock division
                CKDIV: u2,
                padding: u22,
            }),
            ///  control register 1
            CTL1: mmio.Mmio(packed struct(u32) {
                ///  Commutation control shadow enable
                CCSE: u1,
                reserved2: u1,
                ///  Commutation control shadow register update control
                CCUC: u1,
                ///  DMA request source selection
                DMAS: u1,
                ///  Master mode control
                MMC: u3,
                ///  Channel 0 trigger input selection
                TI0S: u1,
                ///  Idle state of channel 0 output
                ISO0: u1,
                ///  Idle state of channel 0 complementary output
                ISO0N: u1,
                ///  Idle state of channel 1 output
                ISO1: u1,
                ///  Idle state of channel 1 complementary output
                ISO1N: u1,
                ///  Idle state of channel 2 output
                ISO2: u1,
                ///  Idle state of channel 2 complementary output
                ISO2N: u1,
                ///  Idle state of channel 3 output
                ISO3: u1,
                padding: u17,
            }),
            ///  slave mode configuration register
            SMCFG: mmio.Mmio(packed struct(u32) {
                ///  Slave mode selection
                SMC: u3,
                reserved4: u1,
                ///  Trigger selection
                TRGS: u3,
                ///  Master/Slave mode
                MSM: u1,
                ///  External trigger filter control
                ETFC: u4,
                ///  External trigger prescaler
                ETPSC: u2,
                ///  Part of SMC for enable External clock mode1
                SCM1: u1,
                ///  External trigger polarity
                ETP: u1,
                padding: u16,
            }),
            ///  DMA/Interrupt enable register
            DMAINTEN: mmio.Mmio(packed struct(u32) {
                ///  Update interrupt enable
                UPIE: u1,
                ///  Channel 0 capture/compare interrupt enable
                CH0IE: u1,
                ///  Channel 1 capture/compare interrupt enable
                CH1IE: u1,
                ///  Channel 2 capture/compare interrupt enable
                CH2IE: u1,
                ///  Channel 3 capture/compare interrupt enable
                CH3IE: u1,
                ///  commutation interrupt enable
                CMTIE: u1,
                ///  Trigger interrupt enable
                TRGIE: u1,
                ///  Break interrupt enable
                BRKIE: u1,
                ///  Update DMA request enable
                UPDEN: u1,
                ///  Channel 0 capture/compare DMA request enable
                CH0DEN: u1,
                ///  Channel 1 capture/compare DMA request enable
                CH1DEN: u1,
                ///  Channel 2 capture/compare DMA request enable
                CH2DEN: u1,
                ///  Channel 3 capture/compare DMA request enable
                CH3DEN: u1,
                ///  Commutation DMA request enable
                CMTDEN: u1,
                ///  Trigger DMA request enable
                TRGDEN: u1,
                padding: u17,
            }),
            ///  Interrupt flag register
            INTF: mmio.Mmio(packed struct(u32) {
                ///  Update interrupt flag
                UPIF: u1,
                ///  Channel 0 capture/compare interrupt flag
                CH0IF: u1,
                ///  Channel 1 capture/compare interrupt flag
                CH1IF: u1,
                ///  Channel 2 capture/compare interrupt flag
                CH2IF: u1,
                ///  Channel 3 capture/compare interrupt flag
                CH3IF: u1,
                ///  Channel commutation interrupt flag
                CMTIF: u1,
                ///  Trigger interrupt flag
                TRGIF: u1,
                ///  Break interrupt flag
                BRKIF: u1,
                reserved9: u1,
                ///  Channel 0 over capture flag
                CH0OF: u1,
                ///  Channel 1 over capture flag
                CH1OF: u1,
                ///  Channel 2 over capture flag
                CH2OF: u1,
                ///  Channel 3 over capture flag
                CH3OF: u1,
                padding: u19,
            }),
            ///  Software event generation register
            SWEVG: mmio.Mmio(packed struct(u32) {
                ///  Update event generation
                UPG: u1,
                ///  Channel 0 capture or compare event generation
                CH0G: u1,
                ///  Channel 1 capture or compare event generation
                CH1G: u1,
                ///  Channel 2 capture or compare event generation
                CH2G: u1,
                ///  Channel 3 capture or compare event generation
                CH3G: u1,
                ///  Channel commutation event generation
                CMTG: u1,
                ///  Trigger event generation
                TRGG: u1,
                ///  Break event generation
                BRKG: u1,
                padding: u24,
            }),
            ///  Channel control register 0 (output mode)
            CHCTL0_Output: mmio.Mmio(packed struct(u32) {
                ///  Channel 0 I/O mode selection
                CH0MS: u2,
                ///  Channel 0 output compare fast enable
                CH0COMFEN: u1,
                ///  Channel 0 compare output shadow enable
                CH0COMSEN: u1,
                ///  Channel 0 compare output control
                CH0COMCTL: u3,
                ///  Channel 0 output compare clear enable
                CH0COMCEN: u1,
                ///  Channel 1 mode selection
                CH1MS: u2,
                ///  Channel 1 output compare fast enable
                CH1COMFEN: u1,
                ///  Channel 1 output compare shadow enable
                CH1COMSEN: u1,
                ///  Channel 1 compare output control
                CH1COMCTL: u3,
                ///  Channel 1 output compare clear enable
                CH1COMCEN: u1,
                padding: u16,
            }),
            ///  Channel control register 1 (output mode)
            CHCTL1_Output: mmio.Mmio(packed struct(u32) {
                ///  Channel 2 I/O mode selection
                CH2MS: u2,
                ///  Channel 2 output compare fast enable
                CH2COMFEN: u1,
                ///  Channel 2 compare output shadow enable
                CH2COMSEN: u1,
                ///  Channel 2 compare output control
                CH2COMCTL: u3,
                ///  Channel 2 output compare clear enable
                CH2COMCEN: u1,
                ///  Channel 3 mode selection
                CH3MS: u2,
                ///  Channel 3 output compare fast enable
                CH3COMFEN: u1,
                ///  Channel 3 output compare shadow enable
                CH3COMSEN: u1,
                ///  Channel 3 compare output control
                CH3COMCTL: u3,
                ///  Channel 3 output compare clear enable
                CH3COMCEN: u1,
                padding: u16,
            }),
            ///  Channel control register 2
            CHCTL2: mmio.Mmio(packed struct(u32) {
                ///  Channel 0 capture/compare function enable
                CH0EN: u1,
                ///  Channel 0 capture/compare function polarity
                CH0P: u1,
                ///  Channel 0 complementary output enable
                CH0NEN: u1,
                ///  Channel 0 complementary output polarity
                CH0NP: u1,
                ///  Channel 1 capture/compare function enable
                CH1EN: u1,
                ///  Channel 1 capture/compare function polarity
                CH1P: u1,
                ///  Channel 1 complementary output enable
                CH1NEN: u1,
                ///  Channel 1 complementary output polarity
                CH1NP: u1,
                ///  Channel 2 capture/compare function enable
                CH2EN: u1,
                ///  Channel 2 capture/compare function polarity
                CH2P: u1,
                ///  Channel 2 complementary output enable
                CH2NEN: u1,
                ///  Channel 2 complementary output polarity
                CH2NP: u1,
                ///  Channel 3 capture/compare function enable
                CH3EN: u1,
                ///  Channel 3 capture/compare function polarity
                CH3P: u1,
                padding: u18,
            }),
            ///  counter
            CNT: mmio.Mmio(packed struct(u32) {
                ///  current counter value
                CNT: u16,
                padding: u16,
            }),
            ///  prescaler
            PSC: mmio.Mmio(packed struct(u32) {
                ///  Prescaler value of the counter clock
                PSC: u16,
                padding: u16,
            }),
            ///  Counter auto reload register
            CAR: mmio.Mmio(packed struct(u32) {
                ///  Counter auto reload value
                CAR: u16,
                padding: u16,
            }),
            ///  Counter repetition register
            CREP: mmio.Mmio(packed struct(u32) {
                ///  Counter repetition value
                CREP: u8,
                padding: u24,
            }),
            ///  Channel 0 capture/compare value register
            CH0CV: mmio.Mmio(packed struct(u32) {
                ///  Capture or compare value of channel0
                CH0VAL: u16,
                padding: u16,
            }),
            ///  Channel 1 capture/compare value register
            CH1CV: mmio.Mmio(packed struct(u32) {
                ///  Capture or compare value of channel1
                CH1VAL: u16,
                padding: u16,
            }),
            ///  Channel 2 capture/compare value register
            CH2CV: mmio.Mmio(packed struct(u32) {
                ///  Capture or compare value of channel 2
                CH2VAL: u16,
                padding: u16,
            }),
            ///  Channel 3 capture/compare value register
            CH3CV: mmio.Mmio(packed struct(u32) {
                ///  Capture or compare value of channel 3
                CH3VAL: u16,
                padding: u16,
            }),
            ///  channel complementary protection register
            CCHP: mmio.Mmio(packed struct(u32) {
                ///  Dead time configure
                DTCFG: u8,
                ///  Complementary register protect control
                PROT: u2,
                ///  Idle mode off-state configure
                IOS: u1,
                ///  Run mode off-state configure
                ROS: u1,
                ///  Break enable
                BRKEN: u1,
                ///  Break polarity
                BRKP: u1,
                ///  Output automatic enable
                OAEN: u1,
                ///  Primary output enable
                POEN: u1,
                padding: u16,
            }),
            ///  DMA configuration register
            DMACFG: mmio.Mmio(packed struct(u32) {
                ///  DMA transfer access start address
                DMATA: u5,
                reserved8: u3,
                ///  DMA transfer count
                DMATC: u5,
                padding: u19,
            }),
            ///  DMA transfer buffer register
            DMATB: mmio.Mmio(packed struct(u32) {
                ///  DMA transfer buffer
                DMATB: u16,
                padding: u16,
            }),
            reserved252: [172]u8,
            ///  Configuration register
            CFG: mmio.Mmio(packed struct(u32) {
                ///  The output value selection
                OUTSEL: u1,
                ///  Write CHxVAL register selection
                CHVSEL: u1,
                padding: u30,
            }),
        };

        ///  Inter integrated circuit
        pub const I2C0 = extern struct {
            ///  Control register 0
            CTL0: mmio.Mmio(packed struct(u32) {
                ///  I2C peripheral enable
                I2CEN: u1,
                ///  SMBus/I2C mode switch
                SMBEN: u1,
                reserved3: u1,
                ///  SMBusType Selection
                SMBSEL: u1,
                ///  ARP protocol in SMBus switch
                ARPEN: u1,
                ///  PEC Calculation Switch
                PECEN: u1,
                ///  Whether or not to response to a General Call (0x00)
                GCEN: u1,
                ///  Whether to stretch SCL low when data is not ready in slave mode
                DISSTRC: u1,
                ///  Generate a START condition on I2C bus
                START: u1,
                ///  Generate a STOP condition on I2C bus
                STOP: u1,
                ///  Whether or not to send an ACK
                ACKEN: u1,
                ///  Position of ACK and PEC when receiving
                POAP: u1,
                ///  PEC Transfer
                PECTRANS: u1,
                ///  SMBus alert
                SALT: u1,
                reserved15: u1,
                ///  Software reset
                SRESET: u1,
                padding: u16,
            }),
            ///  Control register 1
            CTL1: mmio.Mmio(packed struct(u32) {
                ///  I2C Peripheral clock frequency
                I2CCLK: u6,
                reserved8: u2,
                ///  Error interrupt enable
                ERRIE: u1,
                ///  Event interrupt enable
                EVIE: u1,
                ///  Buffer interrupt enable
                BUFIE: u1,
                ///  DMA mode switch
                DMAON: u1,
                ///  Flag indicating DMA last transfer
                DMALST: u1,
                padding: u19,
            }),
            ///  Slave address register 0
            SADDR0: mmio.Mmio(packed struct(u32) {
                ///  Bit 0 of a 10-bit address
                ADDRESS0: u1,
                ///  7-bit address or bits 7:1 of a 10-bit address
                ADDRESS7_1: u7,
                ///  Highest two bits of a 10-bit address
                ADDRESS9_8: u2,
                reserved15: u5,
                ///  Address mode for the I2C slave
                ADDFORMAT: u1,
                padding: u16,
            }),
            ///  Slave address register 1
            SADDR1: mmio.Mmio(packed struct(u32) {
                ///  Dual-Address mode switch
                DUADEN: u1,
                ///  Second I2C address for the slave in Dual-Address mode
                ADDRESS2: u7,
                padding: u24,
            }),
            ///  Transfer buffer register
            DATA: mmio.Mmio(packed struct(u32) {
                ///  Transmission or reception data buffer register
                TRB: u8,
                padding: u24,
            }),
            ///  Transfer status register 0
            STAT0: mmio.Mmio(packed struct(u32) {
                ///  START condition sent out in master mode
                SBSEND: u1,
                ///  Address is sent in master mode or received and matches in slave mode
                ADDSEND: u1,
                ///  Byte transmission completed
                BTC: u1,
                ///  Header of 10-bit address is sent in master mode
                ADD10SEND: u1,
                ///  STOP condition detected in slave mode
                STPDET: u1,
                reserved6: u1,
                ///  I2C_DATA is not Empty during receiving
                RBNE: u1,
                ///  I2C_DATA is Empty during transmitting
                TBE: u1,
                ///  A bus error occurs indication a unexpected START or STOP condition on I2C bus
                BERR: u1,
                ///  Arbitration Lost in master mode
                LOSTARB: u1,
                ///  Acknowledge error
                AERR: u1,
                ///  Over-run or under-run situation occurs in slave mode
                OUERR: u1,
                ///  PEC error when receiving data
                PECERR: u1,
                reserved14: u1,
                ///  Timeout signal in SMBus mode
                SMBTO: u1,
                ///  SMBus Alert status
                SMBALT: u1,
                padding: u16,
            }),
            ///  Transfer status register 1
            STAT1: mmio.Mmio(packed struct(u32) {
                ///  A flag indicating whether I2C block is in master or slave mode
                MASTER: u1,
                ///  Busy flag
                I2CBSY: u1,
                ///  Whether the I2C is a transmitter or a receiver
                TRS: u1,
                reserved4: u1,
                ///  General call address (00h) received
                RXGC: u1,
                ///  Default address of SMBusDevice
                DEFSMB: u1,
                ///  SMBus Host Header detected in slave mode
                HSTSMB: u1,
                ///  Dual Flag in slave mode
                DUMODF: u1,
                ///  Packet Error Checking Value that calculated by hardware when PEC is enabled
                ECV: u8,
                padding: u16,
            }),
            ///  Clock configure register
            CKCFG: mmio.Mmio(packed struct(u32) {
                ///  I2C Clock control in master mode
                CLKC: u12,
                reserved14: u2,
                ///  Duty cycle in fast mode
                DTCY: u1,
                ///  I2C speed selection in master mode
                FAST: u1,
                padding: u16,
            }),
            ///  Rise time register
            RT: mmio.Mmio(packed struct(u32) {
                ///  Maximum rise time in master mode
                RISETIME: u6,
                padding: u26,
            }),
            ///  Filter control register
            FCTL: mmio.Mmio(packed struct(u32) {
                ///  Digital noise filter
                DF: u4,
                ///  Analog noise filter disable
                AFD: u1,
                padding: u27,
            }),
            reserved128: [88]u8,
            ///  SAM control and status register
            SAMCS: mmio.Mmio(packed struct(u32) {
                ///  SAM_V interface enable
                SAMEN: u1,
                ///  SAM_V interface timeout detect enable
                STOEN: u1,
                reserved4: u2,
                ///  Txframe fall interrupt enable
                TFFIE: u1,
                ///  Txframe rise interrupt enable
                TFRIE: u1,
                ///  Rxframe fall interrupt enable
                RFFIE: u1,
                ///  Rxframe rise interrupt enable
                RFRIE: u1,
                ///  Level of Txframe signal
                TXF: u1,
                ///  Level of Rxframe signal
                RXF: u1,
                reserved12: u2,
                ///  Txframe fall flag
                TFF: u1,
                ///  Txframe rise flag
                TFR: u1,
                ///  Rxframe fall flag
                RFF: u1,
                ///  Rxframe rise flag
                RFR: u1,
                padding: u16,
            }),
        };

        ///  General-purpose-timers
        pub const TIMER1 = extern struct {
            ///  control register 0
            CTL0: mmio.Mmio(packed struct(u32) {
                ///  Counter enable
                CEN: u1,
                ///  Update disable
                UPDIS: u1,
                ///  Update source
                UPS: u1,
                ///  Single pulse mode
                SPM: u1,
                ///  Direction
                DIR: u1,
                ///  Counter aligns mode selection
                CAM: u2,
                ///  Auto-reload shadow enable
                ARSE: u1,
                ///  Clock division
                CKDIV: u2,
                padding: u22,
            }),
            ///  control register 1
            CTL1: mmio.Mmio(packed struct(u32) {
                reserved3: u3,
                ///  DMA request source selection
                DMAS: u1,
                ///  Master mode control
                MMC: u3,
                ///  Channel 0 trigger input selection
                TI0S: u1,
                padding: u24,
            }),
            ///  slave mode control register
            SMCFG: mmio.Mmio(packed struct(u32) {
                ///  Slave mode control
                SMC: u3,
                reserved4: u1,
                ///  Trigger selection
                TRGS: u3,
                ///  Master-slave mode
                MSM: u1,
                ///  External trigger filter control
                ETFC: u4,
                ///  External trigger prescaler
                ETPSC: u2,
                ///  Part of SMC for enable External clock mode1
                SMC1: u1,
                ///  External trigger polarity
                ETP: u1,
                padding: u16,
            }),
            ///  DMA/Interrupt enable register
            DMAINTEN: mmio.Mmio(packed struct(u32) {
                ///  Update interrupt enable
                UPIE: u1,
                ///  Channel 0 capture/compare interrupt enable
                CH0IE: u1,
                ///  Channel 1 capture/compare interrupt enable
                CH1IE: u1,
                ///  Channel 2 capture/compare interrupt enable
                CH2IE: u1,
                ///  Channel 3 capture/compare interrupt enable
                CH3IE: u1,
                reserved6: u1,
                ///  Trigger interrupt enable
                TRGIE: u1,
                reserved8: u1,
                ///  Update DMA request enable
                UPDEN: u1,
                ///  Channel 0 capture/compare DMA request enable
                CH0DEN: u1,
                ///  Channel 1 capture/compare DMA request enable
                CH1DEN: u1,
                ///  Channel 2 capture/compare DMA request enable
                CH2DEN: u1,
                ///  Channel 3 capture/compare DMA request enable
                CH3DEN: u1,
                reserved14: u1,
                ///  Trigger DMA request enable
                TRGDEN: u1,
                padding: u17,
            }),
            ///  interrupt flag register
            INTF: mmio.Mmio(packed struct(u32) {
                ///  Update interrupt flag
                UPIF: u1,
                ///  Channel 0 capture/compare interrupt flag
                CH0IF: u1,
                ///  Channel 1 capture/compare interrupt flag
                CH1IF: u1,
                ///  Channel 2 capture/compare interrupt enable
                CH2IF: u1,
                ///  Channel 3 capture/compare interrupt enable
                CH3IF: u1,
                reserved6: u1,
                ///  Trigger interrupt flag
                TRGIF: u1,
                reserved9: u2,
                ///  Channel 0 over capture flag
                CH0OF: u1,
                ///  Channel 1 over capture flag
                CH1OF: u1,
                ///  Channel 2 over capture flag
                CH2OF: u1,
                ///  Channel 3 over capture flag
                CH3OF: u1,
                padding: u19,
            }),
            ///  event generation register
            SWEVG: mmio.Mmio(packed struct(u32) {
                ///  Update generation
                UPG: u1,
                ///  Channel 0 capture or compare event generation
                CH0G: u1,
                ///  Channel 1 capture or compare event generation
                CH1G: u1,
                ///  Channel 2 capture or compare event generation
                CH2G: u1,
                ///  Channel 3 capture or compare event generation
                CH3G: u1,
                reserved6: u1,
                ///  Trigger event generation
                TRGG: u1,
                padding: u25,
            }),
            ///  Channel control register 0 (output mode)
            CHCTL0_Output: mmio.Mmio(packed struct(u32) {
                ///  Channel 0 I/O mode selection
                CH0MS: u2,
                ///  Channel 0 output compare fast enable
                CH0COMFEN: u1,
                ///  Channel 0 compare output shadow enable
                CH0COMSEN: u1,
                ///  Channel 0 compare output control
                CH0COMCTL: u3,
                ///  Channel 0 output compare clear enable
                CH0COMCEN: u1,
                ///  Channel 1 mode selection
                CH1MS: u2,
                ///  Channel 1 output compare fast enable
                CH1COMFEN: u1,
                ///  Channel 1 output compare shadow enable
                CH1COMSEN: u1,
                ///  Channel 1 compare output control
                CH1COMCTL: u3,
                ///  Channel 1 output compare clear enable
                CH1COMCEN: u1,
                padding: u16,
            }),
            ///  Channel control register 1 (output mode)
            CHCTL1_Output: mmio.Mmio(packed struct(u32) {
                ///  Channel 2 I/O mode selection
                CH2MS: u2,
                ///  Channel 2 output compare fast enable
                CH2COMFEN: u1,
                ///  Channel 2 compare output shadow enable
                CH2COMSEN: u1,
                ///  Channel 2 compare output control
                CH2COMCTL: u3,
                ///  Channel 2 output compare clear enable
                CH2COMCEN: u1,
                ///  Channel 3 mode selection
                CH3MS: u2,
                ///  Channel 3 output compare fast enable
                CH3COMFEN: u1,
                ///  Channel 3 output compare shadow enable
                CH3COMSEN: u1,
                ///  Channel 3 compare output control
                CH3COMCTL: u3,
                ///  Channel 3 output compare clear enable
                CH3COMCEN: u1,
                padding: u16,
            }),
            ///  Channel control register 2
            CHCTL2: mmio.Mmio(packed struct(u32) {
                ///  Channel 0 capture/compare function enable
                CH0EN: u1,
                ///  Channel 0 capture/compare function polarity
                CH0P: u1,
                reserved3: u1,
                ///  Channel 0 complementary output polarity
                CH0NP: u1,
                ///  Channel 1 capture/compare function enable
                CH1EN: u1,
                ///  Channel 1 capture/compare function polarity
                CH1P: u1,
                reserved7: u1,
                ///  Channel 1 complementary output polarity
                CH1NP: u1,
                ///  Channel 2 capture/compare function enable
                CH2EN: u1,
                ///  Channel 2 capture/compare function polarity
                CH2P: u1,
                reserved11: u1,
                ///  Channel 2 complementary output polarity
                CH2NP: u1,
                ///  Channel 3 capture/compare function enable
                CH3EN: u1,
                ///  Channel 3 capture/compare function polarity
                CH3P: u1,
                padding: u18,
            }),
            ///  Counter register
            CNT: mmio.Mmio(packed struct(u32) {
                ///  counter value
                CNT: u32,
            }),
            ///  Prescaler register
            PSC: mmio.Mmio(packed struct(u32) {
                ///  Prescaler value of the counter clock
                PSC: u16,
                padding: u16,
            }),
            ///  Counter auto reload register
            CAR: mmio.Mmio(packed struct(u32) {
                ///  Counter auto reload value
                CARL: u32,
            }),
            reserved52: [4]u8,
            ///  Channel 0 capture/compare value register
            CH0CV: mmio.Mmio(packed struct(u32) {
                ///  Capture or compare value of channel 0
                CH0VAL: u32,
            }),
            ///  Channel 1 capture/compare value register
            CH1CV: mmio.Mmio(packed struct(u32) {
                ///  Capture or compare value of channel1
                CH1VAL: u32,
            }),
            ///  Channel 2 capture/compare value register
            CH2CV: mmio.Mmio(packed struct(u32) {
                ///  Capture or compare value of channel 2
                CH2VAL: u32,
            }),
            ///  Channel 3 capture/compare value register
            CH3CV: mmio.Mmio(packed struct(u32) {
                ///  Capture or compare value of channel 3
                CH3VAL: u32,
            }),
            reserved72: [4]u8,
            ///  DMA configuration register
            DMACFG: mmio.Mmio(packed struct(u32) {
                ///  DMA transfer access start address
                DMATA: u5,
                reserved8: u3,
                ///  DMA transfer count
                DMATC: u5,
                padding: u19,
            }),
            ///  DMA transfer buffer register
            DMATB: mmio.Mmio(packed struct(u32) {
                ///  DMA transfer buffer
                DMATB: u16,
                padding: u16,
            }),
            ///  Input remap register
            IRMP: mmio.Mmio(packed struct(u32) {
                reserved6: u6,
                ///  Channel 3 input remap
                CI3_RMP: u2,
                reserved10: u2,
                ///  Internal trigger input1 remap
                ITI1_RMP: u2,
                padding: u20,
            }),
            reserved252: [168]u8,
            ///  Configuration
            CFG: mmio.Mmio(packed struct(u32) {
                reserved1: u1,
                ///  Write CHxVAL register selection
                CHVSEL: u1,
                padding: u30,
            }),
        };

        ///  TFT-LCD interface
        pub const TLI = extern struct {
            reserved8: [8]u8,
            ///  Synchronous pulse size register
            SPSZ: mmio.Mmio(packed struct(u32) {
                ///  size of vertical synchronous pluse
                VPSZ: u12,
                reserved16: u4,
                ///  size of horizontal synchronous pluse
                HPSZ: u12,
                padding: u4,
            }),
            ///  Back-porch size register
            BPSZ: mmio.Mmio(packed struct(u32) {
                ///  Size of the vertical back porch plus synchronous pulse
                VBPSZ: u12,
                reserved16: u4,
                ///  Size of the horizontal back porch plus synchronous pulse
                HBPSZ: u12,
                padding: u4,
            }),
            ///  Active size register
            ASZ: mmio.Mmio(packed struct(u32) {
                ///  Size of the vertical active area width plus back porch and synchronous pulse
                VASZ: u12,
                reserved16: u4,
                ///  Size of the horizontal active area width plus back porch and synchronous pulse
                HASZ: u12,
                padding: u4,
            }),
            ///  Total size register
            TSZ: mmio.Mmio(packed struct(u32) {
                ///  Vertical total size of the display
                VTSZ: u12,
                reserved16: u4,
                ///  Horizontal total size of the display
                HTSZ: u12,
                padding: u4,
            }),
            ///  Control register
            CTL: mmio.Mmio(packed struct(u32) {
                ///  TLI enable bit
                TLIEN: u1,
                reserved4: u3,
                ///  Blue channel Dither Bits Number
                BDB: u3,
                reserved8: u1,
                ///  Green channel Dither Bits Number
                GDB: u3,
                reserved12: u1,
                ///  Red channel Dither Bits Number
                RDB: u3,
                reserved16: u1,
                ///  Dither Function Enable
                DFEN: u1,
                reserved28: u11,
                ///  Pixel Clock Polarity Selection
                CLKPS: u1,
                ///  Data Enable Polarity Selection
                DEPS: u1,
                ///  Vertical Pulse Polarity Selection
                VPPS: u1,
                ///  Horizontal Pulse Polarity Selection
                HPPS: u1,
            }),
            reserved36: [8]u8,
            ///  Reload layer register
            RL: mmio.Mmio(packed struct(u32) {
                ///  Request Reload
                RQR: u1,
                ///  Frame Blank Reload
                FBR: u1,
                padding: u30,
            }),
            reserved44: [4]u8,
            ///  Background color register
            BGC: mmio.Mmio(packed struct(u32) {
                ///  Background value blue
                BVB: u8,
                ///  Background value green
                BVG: u8,
                ///  Background value red
                BVR: u8,
                padding: u8,
            }),
            reserved52: [4]u8,
            ///  Interrupt enable register
            INTEN: mmio.Mmio(packed struct(u32) {
                ///  Line Mark Interrupt Enable
                LMIE: u1,
                ///  FIFO Error Interrupt Enable
                FEIE: u1,
                ///  Transaction Error Interrupt Enable
                TEIE: u1,
                ///  Layer Configuration Reloaded Interrupt Enable
                LCRIE: u1,
                padding: u28,
            }),
            ///  Interrupt flag register
            INTF: mmio.Mmio(packed struct(u32) {
                ///  Line Mark Flag
                LMF: u1,
                ///  FIFO Error Flag
                FEF: u1,
                ///  Transaction Error Flag
                TEF: u1,
                ///  Layer Configuration Reloaded Flag
                LCRF: u1,
                padding: u28,
            }),
            ///  Interrupt flag clear register
            INTC: mmio.Mmio(packed struct(u32) {
                ///  Line Mark Flag Clear
                LMC: u1,
                ///  FIFO Error Flag Clear
                FEC: u1,
                ///  Transaction Error Flag Clear
                TEC: u1,
                ///  Layer Configuration Reloaded Flag Clear
                LCRC: u1,
                padding: u28,
            }),
            ///  Line mark register
            LM: mmio.Mmio(packed struct(u32) {
                ///  Line Mark value
                LM: u11,
                padding: u21,
            }),
            reserved72: [4]u8,
            ///  Status register
            STAT: mmio.Mmio(packed struct(u32) {
                ///  Current VDE status
                VDE: u1,
                ///  Current HDE status
                HDE: u1,
                ///  Current VS staus of the TLI
                VS: u1,
                ///  Current HS staus of the TLI
                HS: u1,
                padding: u28,
            }),
            reserved132: [56]u8,
            ///  Layer 0 control register
            L0CTL: mmio.Mmio(packed struct(u32) {
                ///  Layer enable
                LEN: u1,
                ///  Color keying enable
                CKEYEN: u1,
                reserved4: u2,
                ///  LUT enable
                LUTEN: u1,
                padding: u27,
            }),
            ///  Layer 0 horizontal position parameters register
            L0HPOS: mmio.Mmio(packed struct(u32) {
                ///  Window left position
                WLP: u12,
                reserved16: u4,
                ///  Window right position
                WRP: u12,
                padding: u4,
            }),
            ///  Layer 0 vertical position parameters register
            L0VPOS: mmio.Mmio(packed struct(u32) {
                ///  Window top position
                WTP: u12,
                reserved16: u4,
                ///  Window bottom position
                WBP: u12,
                padding: u4,
            }),
            ///  Layer 0 color key register
            L0CKEY: mmio.Mmio(packed struct(u32) {
                ///  Color Key Blue
                CKEYB: u8,
                ///  Color Key Green
                CKEYG: u8,
                ///  Color Key Red
                CKEYR: u8,
                padding: u8,
            }),
            ///  Layer 0 packeted pixel format register
            L0PPF: mmio.Mmio(packed struct(u32) {
                ///  Packeted Pixel Format
                PPF: u3,
                padding: u29,
            }),
            ///  Layer 0 specified alpha register
            L0SA: mmio.Mmio(packed struct(u32) {
                ///  Specified alpha
                SA: u8,
                padding: u24,
            }),
            ///  Layer 0 default color register
            L0DC: mmio.Mmio(packed struct(u32) {
                ///  The default color blue
                DCB: u8,
                ///  The default color green
                DCG: u8,
                ///  The default color red
                DCR: u8,
                ///  The default color ALPHA
                DCA: u8,
            }),
            ///  Layer 0 blending register
            L0BLEND: mmio.Mmio(packed struct(u32) {
                ///  Alpha Calculation Factor 2 of Blending Method
                ACF2: u3,
                reserved8: u5,
                ///  Alpha Calculation Factor 1 of Blending Method
                ACF1: u3,
                padding: u21,
            }),
            reserved172: [8]u8,
            ///  Layer 0 frame base address register
            L0FBADDR: mmio.Mmio(packed struct(u32) {
                ///  Frame Buffer base Address
                FBADD: u32,
            }),
            ///  Layer 0 frame line length register
            L0FLLEN: mmio.Mmio(packed struct(u32) {
                ///  Frame Line Length
                FLL: u14,
                reserved16: u2,
                ///  Frame Buffer Stride Offset
                STDOFF: u14,
                padding: u2,
            }),
            ///  Layer 0 frame total line number register
            L0FTLN: mmio.Mmio(packed struct(u32) {
                ///  Frame Total Line Number
                FTLN: u11,
                padding: u21,
            }),
            reserved196: [12]u8,
            ///  Layer 0 look up table register
            L0LUT: mmio.Mmio(packed struct(u32) {
                ///  Blue channel of a LUT entry
                TB: u8,
                ///  Green channel of a LUT entry
                TG: u8,
                ///  Red Channel of a LUT entry
                TR: u8,
                ///  Look Up Table Write Address
                TADD: u8,
            }),
            reserved260: [60]u8,
            ///  Layer 1 control register
            L1CTL: mmio.Mmio(packed struct(u32) {
                ///  Layer enable
                LEN: u1,
                ///  Color keying enable
                CKEYEN: u1,
                reserved4: u2,
                ///  LUT enable
                LUTEN: u1,
                padding: u27,
            }),
            ///  Layer 1 horizontal position parameters register
            L1HPOS: mmio.Mmio(packed struct(u32) {
                ///  Window left position
                WLP: u12,
                reserved16: u4,
                ///  Window right position
                WRP: u12,
                padding: u4,
            }),
            ///  Layer 1 vertical position parameters register
            L1VPOS: mmio.Mmio(packed struct(u32) {
                ///  Window top position
                WTP: u12,
                reserved16: u4,
                ///  Window bottom position
                WBP: u12,
                padding: u4,
            }),
            ///  Layer 1 color key register
            L1CKEY: mmio.Mmio(packed struct(u32) {
                ///  Color Key Blue
                CKEYB: u8,
                ///  Color Key Green
                CKEYG: u8,
                ///  Color Key Red
                CKEYR: u8,
                padding: u8,
            }),
            ///  Layer 1 packeted pixel format register
            L1PPF: mmio.Mmio(packed struct(u32) {
                ///  Packeted Pixel Format
                PPF: u3,
                padding: u29,
            }),
            ///  Layer 1 specified alpha register
            L1SA: mmio.Mmio(packed struct(u32) {
                ///  Specified alpha
                SA: u8,
                padding: u24,
            }),
            ///  Layer 1 default color register
            L1DC: mmio.Mmio(packed struct(u32) {
                ///  The default color blue
                DCB: u8,
                ///  The default color green
                DCG: u8,
                ///  The default color red
                DCR: u8,
                ///  The default color ALPHA
                DCA: u8,
            }),
            ///  Layer 1 blending register
            L1BLEND: mmio.Mmio(packed struct(u32) {
                ///  Alpha Calculation Factor 2 of Blending Method
                ACF2: u3,
                reserved8: u5,
                ///  Alpha Calculation Factor 1 of Blending Method
                ACF1: u3,
                padding: u21,
            }),
            reserved300: [8]u8,
            ///  Layer 1 frame base address register
            L1FBADDR: mmio.Mmio(packed struct(u32) {
                ///  Frame Buffer base Address
                FBADD: u32,
            }),
            ///  Layer 1 frame line length register
            L1FLLEN: mmio.Mmio(packed struct(u32) {
                ///  Frame Line Length
                FLL: u14,
                reserved16: u2,
                ///  Frame Buffer Stride Offset
                STDOFF: u14,
                padding: u2,
            }),
            ///  Layer 1 frame total line number register
            L1FTLN: mmio.Mmio(packed struct(u32) {
                ///  Frame Total Line Number
                FTLN: u11,
                padding: u21,
            }),
            reserved324: [12]u8,
            ///  Layer 1 look up table register
            L1LUT: mmio.Mmio(packed struct(u32) {
                ///  Blue channel of a LUT entry
                TB: u8,
                ///  Green channel of a LUT entry
                TG: u8,
                ///  Red channel of a LUT entry
                TR: u8,
                ///  Look Up Table Write Address
                TADD: u8,
            }),
        };

        ///  Image processing accelerator
        pub const IPA = extern struct {
            ///  Control register
            IPA_CTL: mmio.Mmio(packed struct(u32) {
                ///  Transfer enable
                TEN: u1,
                ///  Transfer hang up
                THU: u1,
                ///  Transfer stop
                TST: u1,
                reserved8: u5,
                ///  Enable bit for transfer access error interrupt
                TAEIE: u1,
                ///  Enable bit for full transfer finish interrupt
                FTFIE: u1,
                ///  Enable bit for transfer line mark interrupt
                TLMIE: u1,
                ///  Enable bit for LUT access conflict interrupt
                LACIE: u1,
                ///  Enable bit for LUT loading finish interrupt
                LLFIE: u1,
                ///  Enable bit for wrong configuration interrupt
                WCFIE: u1,
                reserved16: u2,
                ///  Pixel format convert mode
                PFCM: u2,
                padding: u14,
            }),
            ///  Interrupt flag register
            IPA_INTF: mmio.Mmio(packed struct(u32) {
                ///  Transfer access error interrupt flag
                TAEIF: u1,
                ///  Full transfer finish interrupt flag
                FTFIF: u1,
                ///  Transfer line mark interrupt flag
                TLMIF: u1,
                ///  LUT access conflict interrupt flag
                LACIF: u1,
                ///  LUT loading finish interrupt flag
                LLFIF: u1,
                ///  Wrong configuration interrupt flag
                WCFIF: u1,
                padding: u26,
            }),
            ///  Interrupt flag clear register
            IPA_INTC: mmio.Mmio(packed struct(u32) {
                ///  Clear bit for transfer access error interrupt flag
                TAEIFC: u1,
                ///  Clear bit for full transfer finish interrupt flag
                TFIFC: u1,
                ///  Clear bit for transfer line mark interrupt flag
                TLMIF: u1,
                ///  Clear bit for LUT access conflict interrupt flag
                LACIFC: u1,
                ///  Clear bit for LUT loading finish interrupt flag
                LLFIFC: u1,
                ///  Clear bit for wrong configuration interrupt flag
                CWCFIF: u1,
                padding: u26,
            }),
            ///  Foreground memory base address register
            IPA_FMADDR: mmio.Mmio(packed struct(u32) {
                ///  Foreground memory base address
                FMADDR: u32,
            }),
            ///  Foreground line offset register
            IPA_FLOFF: mmio.Mmio(packed struct(u32) {
                ///  Foreground line offset
                FLOFF: u14,
                padding: u18,
            }),
            ///  Background memory base address register
            IPA_BMADDR: mmio.Mmio(packed struct(u32) {
                ///  Background memory base address
                BMADDR: u32,
            }),
            ///  Background line offset register
            IPA_BLOFF: mmio.Mmio(packed struct(u32) {
                ///  Background line offset
                BLOFF: u14,
                padding: u18,
            }),
            ///  Foreground pixel control register
            IPA_FPCTL: mmio.Mmio(packed struct(u32) {
                ///  Foreground pixel format
                FPF: u4,
                ///  Foreground LUT pixel format
                FLPF: u1,
                ///  Foreground LUT loading enable
                FLLEN: u1,
                reserved8: u2,
                ///  Foreground LUT number of pixel
                FCNP: u8,
                ///  Foreground alpha value calculation algorithm
                FAVCA: u2,
                reserved24: u6,
                ///  Foreground pre- defined alpha value
                FPDAV: u8,
            }),
            ///  Foreground pixel value register
            IPA_FPV: mmio.Mmio(packed struct(u32) {
                ///  Foreground pre-defined blue value
                FPDBV: u8,
                ///  Foreground pre-defined green value
                FPDGV: u8,
                ///  Foreground pre-defined red value
                FPDRV: u8,
                padding: u8,
            }),
            ///  Background pixel control register
            IPA_BPCTL: mmio.Mmio(packed struct(u32) {
                ///  Background pixel format
                BPF: u4,
                ///  Background LUT pixel format
                BLPF: u1,
                ///  Background LUT loading enable
                BLLEN: u1,
                reserved8: u2,
                ///  Background LUT number of pixel
                BCNP: u8,
                ///  Background alpha value calculation algorithm
                BAVCA: u2,
                reserved24: u6,
                ///  Background pre- defined alpha value
                BPDAV: u8,
            }),
            ///  Background pixel value register
            IPA_BPV: mmio.Mmio(packed struct(u32) {
                ///  Background pre-defined blue value
                BPDBV: u8,
                ///  Background pre-defined green value
                BPDGV: u8,
                ///  Background pre-defined red value
                BPDRV: u8,
                padding: u8,
            }),
            ///  Foreground LUT memory base address register
            IPA_FLMADDR: mmio.Mmio(packed struct(u32) {
                ///  Foreground LUT memory base address
                FLMBADDR: u32,
            }),
            ///  Background LUT memory base address register
            IPA_BLMADDR: mmio.Mmio(packed struct(u32) {
                ///  Background LUT memory base address
                BLMADDR: u32,
            }),
            ///  Destination pixel control register
            IPA_DPCTL: mmio.Mmio(packed struct(u32) {
                ///  Destination pixel format
                DPF: u3,
                padding: u29,
            }),
            ///  Destination pixel value register(When the destination pixel format is ARGB8888)
            IPA_DPV_ARGB8888: mmio.Mmio(packed struct(u32) {
                ///  Destination pre-defined blue value
                DPDBV: u8,
                ///  Destination pre-defined green value
                DPDGV: u8,
                ///  Destination pre-defined red value
                DPDRV: u8,
                ///  Destination pre-defined alpha value
                DPDAV: u8,
            }),
            ///  Destination memory base address register
            IPA_DMADDR: mmio.Mmio(packed struct(u32) {
                ///  Destination memory base address
                DMADDR: u32,
            }),
            ///  Destination line offset register
            IPA_DLOFF: mmio.Mmio(packed struct(u32) {
                ///  Destination line offset
                DLOFF: u14,
                padding: u18,
            }),
            ///  Image size register
            IPA_IMS: mmio.Mmio(packed struct(u32) {
                ///  Height of the image to be processed
                HEIGHT: u16,
                ///  Width of the image to be processed
                WIDTH: u14,
                padding: u2,
            }),
            ///  Line mark register
            IPA_LM: mmio.Mmio(packed struct(u32) {
                ///  line mark
                LM: u16,
                padding: u16,
            }),
            ///  Inter-timer control register
            IPA_ITCTL: mmio.Mmio(packed struct(u32) {
                ///  Inter-timer enable
                ITEN: u1,
                reserved8: u7,
                ///  Number of clock cycles interval
                NCCI: u8,
                padding: u16,
            }),
        };

        ///  Programmable current reference
        pub const IREF = extern struct {
            reserved768: [768]u8,
            ///  control register
            CTL: mmio.Mmio(packed struct(u32) {
                ///  Current step data
                CSDT: u6,
                reserved7: u1,
                ///  Sink current mode
                SCMOD: u1,
                ///  Current precision trim
                CPT: u5,
                reserved14: u1,
                ///  Step selection
                SSEL: u1,
                ///  Current reference enable
                CREN: u1,
                padding: u16,
            }),
        };

        ///  Nested Vectored Interrupt Controller
        pub const NVIC = extern struct {
            ///  Interrupt Set Enable Register
            ISER: mmio.Mmio(packed struct(u32) {
                ///  SETENA
                SETENA: u32,
            }),
            reserved128: [124]u8,
            ///  Interrupt Clear Enable Register
            ICER: mmio.Mmio(packed struct(u32) {
                ///  CLRENA
                CLRENA: u32,
            }),
            reserved256: [124]u8,
            ///  Interrupt Set-Pending Register
            ISPR: mmio.Mmio(packed struct(u32) {
                ///  SETPEND
                SETPEND: u32,
            }),
            reserved384: [124]u8,
            ///  Interrupt Clear-Pending Register
            ICPR: mmio.Mmio(packed struct(u32) {
                ///  CLRPEND
                CLRPEND: u32,
            }),
            reserved512: [124]u8,
            ///  Interrupt Active bit Register
            IABR: mmio.Mmio(packed struct(u32) {
                ///  IABR
                IABR: u32,
            }),
            reserved768: [252]u8,
            ///  Interrupt Priority Register 0
            IPR0: mmio.Mmio(packed struct(u8) {
                ///  PRI_00
                PRI_00: u8,
            }),
            ///  Interrupt Priority Register 1
            IPR1: mmio.Mmio(packed struct(u8) {
                ///  PRI_01
                PRI_01: u8,
            }),
            ///  Interrupt Priority Register 2
            IPR2: mmio.Mmio(packed struct(u8) {
                ///  PRI_02
                PRI_02: u8,
            }),
            ///  Interrupt Priority Register 3
            IPR3: mmio.Mmio(packed struct(u8) {
                ///  PRI_03
                PRI_03: u8,
            }),
            ///  Interrupt Priority Register 4
            IPR4: mmio.Mmio(packed struct(u8) {
                ///  PRI_04
                PRI_04: u8,
            }),
            ///  Interrupt Priority Register 5
            IPR5: mmio.Mmio(packed struct(u8) {
                ///  PRI_05
                PRI_05: u8,
            }),
            ///  Interrupt Priority Register 6
            IPR6: mmio.Mmio(packed struct(u8) {
                ///  PRI_06
                PRI_06: u8,
            }),
            ///  Interrupt Priority Register 7
            IPR7: mmio.Mmio(packed struct(u8) {
                ///  PRI_07
                PRI_07: u8,
            }),
            ///  Interrupt Priority Register 8
            IPR8: mmio.Mmio(packed struct(u8) {
                ///  PRI_08
                PRI_08: u8,
            }),
            ///  Interrupt Priority Register 9
            IPR9: mmio.Mmio(packed struct(u8) {
                ///  PRI_09
                PRI_09: u8,
            }),
            ///  Interrupt Priority Register 10
            IPR10: mmio.Mmio(packed struct(u8) {
                ///  PRI_10
                PRI_10: u8,
            }),
            ///  Interrupt Priority Register 11
            IPR11: mmio.Mmio(packed struct(u8) {
                ///  PRI_11
                PRI_11: u8,
            }),
            ///  Interrupt Priority Register 12
            IPR12: mmio.Mmio(packed struct(u8) {
                ///  PRI_12
                PRI_12: u8,
            }),
            ///  Interrupt Priority Register 13
            IPR13: mmio.Mmio(packed struct(u8) {
                ///  PRI_13
                PRI_13: u8,
            }),
            ///  Interrupt Priority Register 14
            IPR14: mmio.Mmio(packed struct(u8) {
                ///  PRI_14
                PRI_14: u8,
            }),
            ///  Interrupt Priority Register 15
            IPR15: mmio.Mmio(packed struct(u8) {
                ///  PRI_15
                PRI_15: u8,
            }),
            ///  Interrupt Priority Register 16
            IPR16: mmio.Mmio(packed struct(u8) {
                ///  PRI_16
                PRI_16: u8,
            }),
            ///  Interrupt Priority Register 17
            IPR17: mmio.Mmio(packed struct(u8) {
                ///  PRI_17
                PRI_17: u8,
            }),
            ///  Interrupt Priority Register 18
            IPR18: mmio.Mmio(packed struct(u8) {
                ///  PRI_18
                PRI_18: u8,
            }),
            ///  Interrupt Priority Register 19
            IPR19: mmio.Mmio(packed struct(u8) {
                ///  PRI_19
                PRI_19: u8,
            }),
            ///  Interrupt Priority Register 20
            IPR20: mmio.Mmio(packed struct(u8) {
                ///  PRI_20
                PRI_20: u8,
            }),
            ///  Interrupt Priority Register 21
            IPR21: mmio.Mmio(packed struct(u8) {
                ///  PRI_21
                PRI_21: u8,
            }),
            ///  Interrupt Priority Register 22
            IPR22: mmio.Mmio(packed struct(u8) {
                ///  PRI_22
                PRI_22: u8,
            }),
            ///  Interrupt Priority Register 23
            IPR23: mmio.Mmio(packed struct(u8) {
                ///  PRI_23
                PRI_23: u8,
            }),
            ///  Interrupt Priority Register 24
            IPR24: mmio.Mmio(packed struct(u8) {
                ///  PRI_24
                PRI_24: u8,
            }),
            ///  Interrupt Priority Register 25
            IPR25: mmio.Mmio(packed struct(u8) {
                ///  PRI_25
                PRI_25: u8,
            }),
            ///  Interrupt Priority Register 26
            IPR26: mmio.Mmio(packed struct(u8) {
                ///  PRI_26
                PRI_26: u8,
            }),
            ///  Interrupt Priority Register 27
            IPR27: mmio.Mmio(packed struct(u8) {
                ///  PRI_27
                PRI_27: u8,
            }),
            ///  Interrupt Priority Register 28
            IPR28: mmio.Mmio(packed struct(u8) {
                ///  PRI_28
                PRI_28: u8,
            }),
            ///  Interrupt Priority Register 29
            IPR29: mmio.Mmio(packed struct(u8) {
                ///  PRI_29
                PRI_29: u8,
            }),
            ///  Interrupt Priority Register 30
            IPR30: mmio.Mmio(packed struct(u8) {
                ///  PRI_30
                PRI_30: u8,
            }),
            ///  Interrupt Priority Register 31
            IPR31: mmio.Mmio(packed struct(u8) {
                ///  PRI_31
                PRI_31: u8,
            }),
            ///  Interrupt Priority Register 32
            IPR32: mmio.Mmio(packed struct(u8) {
                ///  PRI_32
                PRI_32: u8,
            }),
            ///  Interrupt Priority Register 33
            IPR33: mmio.Mmio(packed struct(u8) {
                ///  PRI_33
                PRI_33: u8,
            }),
            ///  Interrupt Priority Register 34
            IPR34: mmio.Mmio(packed struct(u8) {
                ///  PRI_34
                PRI_34: u8,
            }),
            ///  Interrupt Priority Register 35
            IPR35: mmio.Mmio(packed struct(u8) {
                ///  PRI_35
                PRI_35: u8,
            }),
            ///  Interrupt Priority Register 36
            IPR36: mmio.Mmio(packed struct(u8) {
                ///  PRI_36
                PRI_36: u8,
            }),
            ///  Interrupt Priority Register 37
            IPR37: mmio.Mmio(packed struct(u8) {
                ///  PRI_37
                PRI_37: u8,
            }),
            ///  Interrupt Priority Register 38
            IPR38: mmio.Mmio(packed struct(u8) {
                ///  PRI_38
                PRI_38: u8,
            }),
            ///  Interrupt Priority Register 39
            IPR39: mmio.Mmio(packed struct(u8) {
                ///  PRI_39
                PRI_39: u8,
            }),
            ///  Interrupt Priority Register 40
            IPR40: mmio.Mmio(packed struct(u8) {
                ///  PRI_40
                PRI_40: u8,
            }),
            ///  Interrupt Priority Register 41
            IPR41: mmio.Mmio(packed struct(u8) {
                ///  PRI_41
                PRI_41: u8,
            }),
            ///  Interrupt Priority Register 42
            IPR42: mmio.Mmio(packed struct(u8) {
                ///  PRI_42
                PRI_42: u8,
            }),
            ///  Interrupt Priority Register 43
            IPR43: mmio.Mmio(packed struct(u8) {
                ///  PRI_43
                PRI_43: u8,
            }),
            ///  Interrupt Priority Register 44
            IPR44: mmio.Mmio(packed struct(u8) {
                ///  PRI_44
                PRI_44: u8,
            }),
            ///  Interrupt Priority Register 45
            IPR45: mmio.Mmio(packed struct(u8) {
                ///  PRI_45
                PRI_45: u8,
            }),
            ///  Interrupt Priority Register 46
            IPR46: mmio.Mmio(packed struct(u8) {
                ///  PRI_46
                PRI_46: u8,
            }),
            ///  Interrupt Priority Register 47
            IPR47: mmio.Mmio(packed struct(u8) {
                ///  PRI_47
                PRI_47: u8,
            }),
            ///  Interrupt Priority Register 48
            IPR48: mmio.Mmio(packed struct(u8) {
                ///  PRI_48
                PRI_48: u8,
            }),
            ///  Interrupt Priority Register 49
            IPR49: mmio.Mmio(packed struct(u8) {
                ///  PRI_49
                PRI_49: u8,
            }),
            ///  Interrupt Priority Register 50
            IPR50: mmio.Mmio(packed struct(u8) {
                ///  PRI_50
                PRI_50: u8,
            }),
            ///  Interrupt Priority Register 51
            IPR51: mmio.Mmio(packed struct(u8) {
                ///  PRI_51
                PRI_51: u8,
            }),
            ///  Interrupt Priority Register 52
            IPR52: mmio.Mmio(packed struct(u8) {
                ///  PRI_52
                PRI_52: u8,
            }),
            ///  Interrupt Priority Register 53
            IPR53: mmio.Mmio(packed struct(u8) {
                ///  PRI_53
                PRI_53: u8,
            }),
            ///  Interrupt Priority Register 54
            IPR54: mmio.Mmio(packed struct(u8) {
                ///  PRI_54
                PRI_54: u8,
            }),
            ///  Interrupt Priority Register 55
            IPR55: mmio.Mmio(packed struct(u8) {
                ///  PRI_55
                PRI_55: u8,
            }),
            ///  Interrupt Priority Register 56
            IPR56: mmio.Mmio(packed struct(u8) {
                ///  PRI_56
                PRI_56: u8,
            }),
            ///  Interrupt Priority Register 57
            IPR57: mmio.Mmio(packed struct(u8) {
                ///  PRI_57
                PRI_57: u8,
            }),
            ///  Interrupt Priority Register 58
            IPR58: mmio.Mmio(packed struct(u8) {
                ///  PRI_58
                PRI_58: u8,
            }),
            ///  Interrupt Priority Register 59
            IPR59: mmio.Mmio(packed struct(u8) {
                ///  PRI_59
                PRI_59: u8,
            }),
            ///  Interrupt Priority Register 60
            IPR60: mmio.Mmio(packed struct(u8) {
                ///  PRI_60
                PRI_60: u8,
            }),
            ///  Interrupt Priority Register 61
            IPR61: mmio.Mmio(packed struct(u8) {
                ///  PRI_61
                PRI_61: u8,
            }),
            ///  Interrupt Priority Register 62
            IPR62: mmio.Mmio(packed struct(u8) {
                ///  PRI_62
                PRI_62: u8,
            }),
            ///  Interrupt Priority Register 63
            IPR63: mmio.Mmio(packed struct(u8) {
                ///  PRI_63
                PRI_63: u8,
            }),
            ///  Interrupt Priority Register 64
            IPR64: mmio.Mmio(packed struct(u8) {
                ///  PRI_64
                PRI_64: u8,
            }),
            ///  Interrupt Priority Register 65
            IPR65: mmio.Mmio(packed struct(u8) {
                ///  PRI_65
                PRI_65: u8,
            }),
            ///  Interrupt Priority Register 66
            IPR66: mmio.Mmio(packed struct(u8) {
                ///  PRI_66
                PRI_66: u8,
            }),
            ///  Interrupt Priority Register 67
            IPR67: mmio.Mmio(packed struct(u8) {
                ///  PRI_67
                PRI_67: u8,
            }),
            ///  Interrupt Priority Register 68
            IPR68: mmio.Mmio(packed struct(u8) {
                ///  PRI_68
                PRI_68: u8,
            }),
            ///  Interrupt Priority Register 69
            IPR69: mmio.Mmio(packed struct(u8) {
                ///  PRI_69
                PRI_69: u8,
            }),
            ///  Interrupt Priority Register 70
            IPR70: mmio.Mmio(packed struct(u8) {
                ///  PRI_70
                PRI_70: u8,
            }),
            ///  Interrupt Priority Register 71
            IPR71: mmio.Mmio(packed struct(u8) {
                ///  PRI_71
                PRI_71: u8,
            }),
            ///  Interrupt Priority Register 72
            IPR72: mmio.Mmio(packed struct(u8) {
                ///  PRI_72
                PRI_72: u8,
            }),
            ///  Interrupt Priority Register 73
            IPR73: mmio.Mmio(packed struct(u8) {
                ///  PRI_73
                PRI_73: u8,
            }),
            reserved3584: [2742]u8,
            ///  Software Trigger Interrupt Register
            STIR: mmio.Mmio(packed struct(u32) {
                ///  STIR
                STIR: u32,
            }),
        };

        ///  Power management unit
        pub const PMU = extern struct {
            ///  power control register
            CTL: mmio.Mmio(packed struct(u32) {
                ///  LDO Low Power Mode
                LDOLP: u1,
                ///  Standby Mode
                STBMOD: u1,
                ///  Wakeup Flag Reset
                WURST: u1,
                ///  Standby Flag Reset
                STBRST: u1,
                ///  Low Voltage Detector Enable
                LVDEN: u1,
                ///  Low Voltage Detector Threshold
                LVDT: u3,
                ///  Backup Domain Write Enable
                BKPWEN: u1,
                reserved10: u1,
                ///  Low-driver mode when use low power LDO.
                LDLP: u1,
                ///  Low-driver mode when use normal power LDO
                LDNP: u1,
                reserved14: u2,
                ///  LDO output voltage select
                LDOVS: u2,
                ///  High-driver mode enable
                HDEN: u1,
                ///  High-driver mode switch
                HDS: u1,
                ///  Low-driver mode enable in Deep-sleep mode
                LDEN: u2,
                padding: u12,
            }),
            ///  power control/status register
            CS: mmio.Mmio(packed struct(u32) {
                ///  Wakeup flag
                WUF: u1,
                ///  Standby flag
                STBF: u1,
                ///  Low Voltage Detector Status Flag
                LVDF: u1,
                ///  Backup SRAM LDO ready flag
                BLDORF: u1,
                reserved8: u4,
                ///  Enable WKUP pin
                WUPEN: u1,
                ///  Backup SRAM LDO on
                BLDOON: u1,
                reserved14: u4,
                ///  LDO voltage select ready flag
                LDOVSRF: u1,
                reserved16: u1,
                ///  High-driver ready flag
                HDRF: u1,
                ///  High-driver switch ready flag
                HDSRF: u1,
                ///  Low-driver mode ready flag
                LDRF: u2,
                padding: u12,
            }),
        };

        ///  Reset and clock unit
        pub const RCU = extern struct {
            ///  Control register
            CTL: mmio.Mmio(packed struct(u32) {
                ///  Internal 16MHz RC oscillator Enable
                IRC16MEN: u1,
                ///  IRC16M Internal 16MHz RC Oscillator stabilization Flag
                IRC16MSTB: u1,
                reserved3: u1,
                ///  Internal 16MHz RC Oscillator clock trim adjust value
                IRC16MADJ: u5,
                ///  Internal 16MHz RC Oscillator calibration value register
                IRC16MCALIB: u8,
                ///  External High Speed oscillator Enable
                HXTALEN: u1,
                ///  External crystal oscillator (HXTAL) clock stabilization flag
                HXTALSTB: u1,
                ///  External crystal oscillator (HXTAL) clock bypass mode enable
                HXTALBPS: u1,
                ///  HXTAL Clock Monitor Enable
                CKMEN: u1,
                reserved24: u4,
                ///  PLL enable
                PLLEN: u1,
                ///  PLL Clock Stabilization Flag
                PLLSTB: u1,
                ///  PLLI2S enable
                PLLI2SEN: u1,
                ///  PLLI2S Clock Stabilization Flag
                PLLI2SSTB: u1,
                ///  PLLSAI enable
                PLLSAIEN: u1,
                ///  PLLSAI Clock Stabilization Flag
                PLLSAISTB: u1,
                padding: u2,
            }),
            ///  PLL register (RCU_PLL)
            PLL: mmio.Mmio(packed struct(u32) {
                ///  The PLL VCO source clock prescaler
                PLLPSC: u6,
                ///  The PLL VCO clock multi factor
                PLLN: u9,
                reserved16: u1,
                ///  The PLLP output frequency division factor from PLL VCO clock
                PLLP: u2,
                reserved22: u4,
                ///  PLL Clock Source Selection
                PLLSEL: u1,
                reserved24: u1,
                ///  The PLL Q output frequency division factor from PLL VCO clock
                PLLQ: u4,
                padding: u4,
            }),
            ///  Clock configuration register 0 (RCU_CFG0)
            CFG0: mmio.Mmio(packed struct(u32) {
                ///  System clock switch
                SCS: u2,
                ///  System clock switch status
                SCSS: u2,
                ///  AHB prescaler selection
                AHBPSC: u4,
                reserved10: u2,
                ///  APB1 prescaler selection
                APB1PSC: u3,
                ///  APB2 prescaler selection
                APB2PSC: u3,
                ///  RTC clock divider factor
                RTCDIV: u5,
                ///  CKOUT0 Clock Source Selection
                CKOUT0SEL: u2,
                ///  I2S Clock Source Selection
                I2SSEL: u1,
                ///  The CK_OUT0 divider which the CK_OUT0 frequency can be reduced
                CKOUT0DIV: u3,
                ///  The CK_OUT1 divider which the CK_OUT1 frequency can be reduced
                CKOUT1DIV: u3,
                ///  CKOUT1 Clock Source Selection
                CKOUT1SEL: u2,
            }),
            ///  Clock interrupt register (RCU_INT)
            INT: mmio.Mmio(packed struct(u32) {
                ///  IRC32K stabilization interrupt flag
                IRC32KSTBIF: u1,
                ///  LXTAL stabilization interrupt flag
                LXTALSTBIF: u1,
                ///  IRC16M stabilization interrupt flag
                IRC16MSTBIF: u1,
                ///  HXTAL stabilization interrupt flag
                HXTALSTBIF: u1,
                ///  PLL stabilization interrupt flag
                PLLSTBIF: u1,
                ///  PLLI2S stabilization interrupt flag
                PLLI2SSTBIF: u1,
                ///  PLLSAI stabilization interrupt flag
                PLLSAISTBIF: u1,
                ///  HXTAL Clock Stuck Interrupt Flag
                CKMIF: u1,
                ///  IRC32K Stabilization interrupt enable
                IRC32KSTBIE: u1,
                ///  LXTAL Stabilization Interrupt Enable
                LXTALSTBIE: u1,
                ///  IRC16M Stabilization Interrupt Enable
                IRC16MSTBIE: u1,
                ///  HXTAL Stabilization Interrupt Enable
                HXTALSTBIE: u1,
                ///  PLL Stabilization Interrupt Enable
                PLLSTBIE: u1,
                ///  PLLI2S Stabilization Interrupt Enable
                PLLI2SSTBIE: u1,
                ///  PLLSAI Stabilization Interrupt Enable
                PLLSAISTBIE: u1,
                reserved16: u1,
                ///  IRC32K Stabilization Interrupt Clear
                IRC32KSTBIC: u1,
                ///  LXTAL Stabilization Interrupt Clear
                LXTALSTBIC: u1,
                ///  IRC16M Stabilization Interrupt Clear
                IRC16MSTBIC: u1,
                ///  HXTAL Stabilization Interrupt Clear
                HXTALSTBIC: u1,
                ///  PLL stabilization Interrupt Clear
                PLLSTBIC: u1,
                ///  PLLI2S stabilization Interrupt Clear
                PLLI2SSTBIC: u1,
                ///  PLLSAI stabilization Interrupt Clear
                PLLSAISTBIC: u1,
                ///  HXTAL Clock Stuck Interrupt Clear
                CKMIC: u1,
                padding: u8,
            }),
            ///  AHB1 reset register
            AHB1RST: mmio.Mmio(packed struct(u32) {
                ///  GPIO port A reset
                PARST: u1,
                ///  GPIO port B reset
                PBRST: u1,
                ///  GPIO port C reset
                PCRST: u1,
                ///  GPIO port D reset
                PDRST: u1,
                ///  GPIO port E reset
                PERST: u1,
                ///  GPIO port F reset
                PFRST: u1,
                ///  GPIO port G reset
                PGRST: u1,
                ///  GPIO port H reset
                PHRST: u1,
                ///  GPIO port I reset
                PIRST: u1,
                reserved12: u3,
                ///  CRC reset
                CRCRST: u1,
                reserved21: u8,
                ///  DMA0 reset
                DMA0RST: u1,
                ///  DMA1 reset
                DMA1RST: u1,
                ///  IPA reset
                IPARST: u1,
                reserved25: u1,
                ///  Ethernet reset
                ENETRST: u1,
                reserved29: u3,
                ///  USBHS reset
                USBHSRST: u1,
                padding: u2,
            }),
            ///  AHB2 reset register
            AHB2RST: mmio.Mmio(packed struct(u32) {
                ///  DCI reset
                DCIRST: u1,
                reserved6: u5,
                ///  TRNG reset
                TRNGRST: u1,
                ///  USBFS reset
                USBFSRST: u1,
                padding: u24,
            }),
            ///  AHB3 reset register
            AHB3RST: mmio.Mmio(packed struct(u32) {
                ///  EXMC reset
                EXMCRST: u1,
                padding: u31,
            }),
            reserved32: [4]u8,
            ///  APB1 reset register (RCU_APB1RST)
            APB1RST: mmio.Mmio(packed struct(u32) {
                ///  TIMER1 timer reset
                TIMER1RST: u1,
                ///  TIMER2 timer reset
                TIMER2RST: u1,
                ///  TIMER3 timer reset
                TIMER3RST: u1,
                ///  TIMER4 timer reset
                TIMER4RST: u1,
                ///  TIMER5 timer reset
                TIMER5RST: u1,
                ///  TIMER6 timer reset
                TIMER6RST: u1,
                ///  TIMER11 timer reset
                TIMER11RST: u1,
                ///  TIMER12 timer reset
                TIMER12RST: u1,
                ///  TIMER13 timer reset
                TIMER13RST: u1,
                reserved11: u2,
                ///  Window watchdog timer reset
                WWDGTRST: u1,
                reserved14: u2,
                ///  SPI1 reset
                SPI1RST: u1,
                ///  SPI2 reset
                SPI2RST: u1,
                reserved17: u1,
                ///  USART1 reset
                USART1RST: u1,
                ///  USART2 reset
                USART2RST: u1,
                ///  UART3 reset
                UART3RST: u1,
                ///  UART4 reset
                UART4RST: u1,
                ///  I2C0 reset
                I2C0RST: u1,
                ///  I2C1 reset
                I2C1RST: u1,
                ///  I2C2 reset
                I2C2RST: u1,
                reserved25: u1,
                ///  CAN0 reset
                CAN0RST: u1,
                ///  CAN1 reset
                CAN1RST: u1,
                reserved28: u1,
                ///  Power control reset
                PMURST: u1,
                ///  DAC reset
                DACRST: u1,
                ///  UART6 reset
                UART6RST: u1,
                ///  UART7 reset
                UART7RST: u1,
            }),
            ///  APB2 reset register (RCU_APB2RST)
            APB2RST: mmio.Mmio(packed struct(u32) {
                ///  TIMER0 reset
                TIMER0RST: u1,
                ///  TIMER7 reset
                TIMER7RST: u1,
                reserved4: u2,
                ///  USART0 reset
                USART0RST: u1,
                ///  USART5 reset
                USART5RST: u1,
                reserved8: u2,
                ///  ADC reset
                ADCRST: u1,
                reserved11: u2,
                ///  SDIO reset
                SDIORST: u1,
                ///  SPI0 Reset
                SPI0RST: u1,
                ///  SPI3 Reset
                SPI3RST: u1,
                ///  SYSCFG Reset
                SYSCFGRST: u1,
                reserved16: u1,
                ///  TIMER8 reset
                TIMER8RST: u1,
                ///  TIMER9 reset
                TIMER9RST: u1,
                ///  TIMER10 reset
                TIMER10RST: u1,
                reserved20: u1,
                ///  SPI4 Reset
                SPI4RST: u1,
                ///  SPI5 Reset
                SPI5RST: u1,
                reserved26: u4,
                ///  TLI Reset
                TLIRST: u1,
                padding: u5,
            }),
            reserved48: [8]u8,
            ///  AHB1 enable register
            AHB1EN: mmio.Mmio(packed struct(u32) {
                ///  GPIO port A clock enable
                PAEN: u1,
                ///  GPIO port B clock enable
                PBEN: u1,
                ///  GPIO port C clock enable
                PCEN: u1,
                ///  GPIO port D clock enable
                PDEN: u1,
                ///  GPIO port E clock enable
                PEEN: u1,
                ///  GPIO port F clock enable
                PFEN: u1,
                ///  GPIO port G clock enable
                PGEN: u1,
                ///  GPIO port H clock enable
                PHEN: u1,
                ///  GPIO port I clock enable
                PIEN: u1,
                reserved12: u3,
                ///  CRC clock enable
                CRCEN: u1,
                reserved18: u5,
                ///  BKPSRAM clock enable
                BKPSRAMEN: u1,
                reserved20: u1,
                ///  TCMSRAM clock enable
                TCMSRAMEN: u1,
                ///  DMA0 clock enable
                DMA0EN: u1,
                ///  DMA1 clock enable
                DMA1EN: u1,
                ///  IPA clock enable
                IPAEN: u1,
                reserved25: u1,
                ///  Ethernet clock enable
                ENETEN: u1,
                ///  Ethernet TX clock enable
                ENETTXEN: u1,
                ///  Ethernet RX clock enable
                ENETRXEN: u1,
                ///  Ethernet PTP clock enable
                ENETPTPEN: u1,
                ///  USBHS clock enable
                USBHSEN: u1,
                ///  USBHS ULPI clock enable
                USBHSULPIEN: u1,
                padding: u1,
            }),
            ///  AHB2 enable register
            AHB2EN: mmio.Mmio(packed struct(u32) {
                ///  DCI clock enable
                DCIEN: u1,
                reserved6: u5,
                ///  TRNG clock enable
                TRNGEN: u1,
                ///  USBFS clock enable
                USBFSEN: u1,
                padding: u24,
            }),
            ///  AHB3 clock enable register
            AHB3EN: mmio.Mmio(packed struct(u32) {
                ///  EXMC clock enable
                EXMCEN: u1,
                padding: u31,
            }),
            reserved64: [4]u8,
            ///  APB1 clock enable register (RCU_APB1EN)
            ///  TIMER1 timer clock enable
            APB1EN: mmio.Mmio(packed struct(u32) {
                TIMER1EN: u1,
                ///  TIMER2 timer clock enable
                TIMER2EN: u1,
                ///  TIMER3 timer clock enable
                TIMER3EN: u1,
                ///  TIMER4 timer clock enable
                TIMER4EN: u1,
                ///  TIMER5 timer clock enable
                TIMER5EN: u1,
                ///  TIMER6 timer clock enable
                TIMER6EN: u1,
                ///  TIMER11 timer clock enable
                TIMER11EN: u1,
                ///  TIMER12 timer clock enable
                TIMER12EN: u1,
                ///  TIMER13 timer clock enable
                TIMER13EN: u1,
                reserved11: u2,
                ///  Window watchdog timer clock enable
                WWDGTEN: u1,
                reserved14: u2,
                ///  SPI1 clock enable
                SPI1EN: u1,
                ///  SPI2 clock enable
                SPI2EN: u1,
                reserved17: u1,
                ///  USART1 clock enable
                USART1EN: u1,
                ///  USART2 clock enable
                USART2EN: u1,
                ///  UART3 clock enable
                UART3EN: u1,
                ///  UART4 clock enable
                UART4EN: u1,
                ///  I2C0 clock enable
                I2C0EN: u1,
                ///  I2C1 clock enable
                I2C1EN: u1,
                ///  I2C2 clock enable
                I2C2EN: u1,
                reserved25: u1,
                ///  CAN0 clock enable
                CAN0EN: u1,
                ///  CAN1 clock enable
                CAN1EN: u1,
                reserved28: u1,
                ///  Power control clock enable
                PMUEN: u1,
                ///  DAC clock enable
                DACEN: u1,
                ///  UART6 clock enable
                UART6EN: u1,
                ///  UART7 clock enable
                UART7EN: u1,
            }),
            ///  APB2 clock enable register (RCU_APB2EN)
            APB2EN: mmio.Mmio(packed struct(u32) {
                ///  TIMER0 clock enable
                TIMER0EN: u1,
                ///  TIMER7 clock enable
                TIMER7EN: u1,
                reserved4: u2,
                ///  USART0 clock enable
                USART0EN: u1,
                ///  USART5 clock enable
                USART5EN: u1,
                reserved8: u2,
                ///  ADC0 clock enable
                ADC0EN: u1,
                ///  ADC1 clock enable
                ADC1EN: u1,
                ///  ADC2 clock enable
                ADC2EN: u1,
                ///  SDIO clock enable
                SDIOEN: u1,
                ///  SPI0 clock enable
                SPI0EN: u1,
                ///  SPI3 clock enable
                SPI3EN: u1,
                ///  SYSCFG clock enable
                SYSCFGEN: u1,
                reserved16: u1,
                ///  TIMER8 clock enable
                TIMER8EN: u1,
                ///  TIMER9 clock enable
                TIMER9EN: u1,
                ///  TIMER10 clock enable
                TIMER10EN: u1,
                reserved20: u1,
                ///  SPI4 clock enable
                SPI4EN: u1,
                ///  SPI5 clock enable
                SPI5EN: u1,
                reserved26: u4,
                ///  TLI clock enable
                TLIEN: u1,
                padding: u5,
            }),
            reserved80: [8]u8,
            ///  AHB1 sleep mode enable register
            AHB1SPEN: mmio.Mmio(packed struct(u32) {
                ///  GPIO port A clock enable when sleep mode
                PASPEN: u1,
                ///  GPIO port B clock enable when sleep mode
                PBSPEN: u1,
                ///  GPIO port C clock enable when sleep mode
                PCSPEN: u1,
                ///  GPIO port D clock enable when sleep mode
                PDSPEN: u1,
                ///  GPIO port E clock enable when sleep mode
                PESPEN: u1,
                ///  GPIO port F clock enable when sleep mode
                PFSPEN: u1,
                ///  GPIO port G clock enable when sleep mode
                PGSPEN: u1,
                ///  GPIO port H clock enable when sleep mode
                PHSPEN: u1,
                ///  GPIO port I clock enable when sleep mode
                PISPEN: u1,
                reserved12: u3,
                ///  CRC clock enable when sleep mode
                CRCSPEN: u1,
                reserved15: u2,
                ///  FMC clock enable when sleep mode
                FMCSPEN: u1,
                ///  SRAM0 clock enable when sleep mode
                SRAM0SPEN: u1,
                ///  SRAM1 clock enable when sleep mode
                SRAM1SPEN: u1,
                ///  BKPSRAM clock enable when sleep mode
                BKPSRAMSPEN: u1,
                ///  SRAM2 clock enable when sleep mode
                SRAM2SPEN: u1,
                reserved21: u1,
                ///  DMA0 clock enable when sleep mode
                DMA0SPEN: u1,
                ///  DMA1 clock enable when sleep mode
                DMA1SPEN: u1,
                ///  IPA clock enable when sleep mode
                IPASPEN: u1,
                reserved25: u1,
                ///  Ethernet clock enable when sleep mode
                ENETSPEN: u1,
                ///  Ethernet TX clock enable when sleep mode
                ENETTXSPEN: u1,
                ///  Ethernet RX clock enable when sleep mode
                ENETRXSPEN: u1,
                ///  Ethernet PTP clock enable when sleep mode
                ENETPTPSPEN: u1,
                ///  USBHS clock enable when sleep mode
                USBHSSPEN: u1,
                ///  USBHS ULPI clock enable when sleep mode
                USBHSULPISPEN: u1,
                padding: u1,
            }),
            ///  AHB2 sleep mode enable register
            AHB2SPEN: mmio.Mmio(packed struct(u32) {
                ///  DCI clock enable when sleep mode
                DCISPEN: u1,
                reserved6: u5,
                ///  TRNG clock enable when sleep mode
                TRNGSPEN: u1,
                ///  USBFS clock enable when sleep mode
                USBFSSPEN: u1,
                padding: u24,
            }),
            ///  AHB3 Sleep mode enable register
            AHB3SPEN: mmio.Mmio(packed struct(u32) {
                ///  EXMC clock enable when sleep mode
                EXMCSPEN: u1,
                padding: u31,
            }),
            reserved96: [4]u8,
            ///  APB1 sleep mode clock enable register (RCU_APB1EN)
            APB1SPEN: mmio.Mmio(packed struct(u32) {
                ///  TIMER1 timer clock enable when sleep mode
                TIMER1SPEN: u1,
                ///  TIMER2 timer clock enable when sleep mode
                TIMER2SPEN: u1,
                ///  TIMER3 timer clock enable when sleep mode
                TIMER3SPEN: u1,
                ///  TIMER4 timer clock enable when sleep mode
                TIMER4SPEN: u1,
                ///  TIMER5 timer clock enable when sleep mode
                TIMER5SPEN: u1,
                ///  TIMER6 timer clock enable when sleep mode
                TIMER6SPEN: u1,
                ///  TIMER11 timer clock enable when sleep mode
                TIMER11SPEN: u1,
                ///  TIMER12 timer clock enable when sleep mode
                TIMER12SPEN: u1,
                ///  TIMER13 timer clock enable when sleep mode
                TIMER13SPEN: u1,
                reserved11: u2,
                ///  Window watchdog timer clock enable when sleep mode
                WWDGTSPEN: u1,
                reserved14: u2,
                ///  SPI1 clock enable when sleep mode
                SPI1SPEN: u1,
                ///  SPI2 clock enable when sleep mode
                SPI2SPEN: u1,
                reserved17: u1,
                ///  USART1 clock enable when sleep mode
                USART1SPEN: u1,
                ///  USART2 clock enable when sleep mode
                USART2SPEN: u1,
                ///  UART3 clock enable when sleep mode
                UART3SPEN: u1,
                ///  UART4 clock enable when sleep mode
                UART4SPEN: u1,
                ///  I2C0 clock enable when sleep mode
                I2C0SPEN: u1,
                ///  I2C1 clock enable when sleep mode
                I2C1SPEN: u1,
                ///  I2C2 clock enable when sleep mode
                I2C2SPEN: u1,
                reserved25: u1,
                ///  CAN0 clock enable when sleep mode
                CAN0SPEN: u1,
                ///  CAN1 clock enable when sleep mode
                CAN1SPEN: u1,
                reserved28: u1,
                ///  Power control clock enable when sleep mode
                PMUSPEN: u1,
                ///  DAC clock enable when sleep mode
                DACSPEN: u1,
                ///  UART6 clock enable when sleep mode
                UART6SPEN: u1,
                ///  UART7 clock enable when sleep mode
                UART7SPEN: u1,
            }),
            ///  APB2 sleep mode enable register (RCU_APB2SPEN)
            APB2SPEN: mmio.Mmio(packed struct(u32) {
                ///  TIMER0 clock enable when sleep mode
                TIMER0SPEN: u1,
                ///  TIMER7 clock enable when sleep mode
                TIMER7SPEN: u1,
                reserved4: u2,
                ///  USART0 clock enable when sleep mode
                USART0SPEN: u1,
                ///  USART5 clock enable when sleep mode
                USART5SPEN: u1,
                reserved8: u2,
                ///  ADC0 clock enable when sleep mode
                ADC0SPEN: u1,
                ///  ADC1 clock enable when sleep mode
                ADC1SPEN: u1,
                ///  ADC2 clock enable when sleep mode
                ADC2SPEN: u1,
                ///  SDIO clock enable when sleep mode
                SDIOSPEN: u1,
                ///  SPI0 clock enable when sleep mode
                SPI0SPEN: u1,
                ///  SPI3 clock enable when sleep mode
                SPI3SPEN: u1,
                ///  SYSCFG clock enable when sleep mode
                SYSCFGSPEN: u1,
                reserved16: u1,
                ///  TIMER8 clock enable when sleep mode
                TIMER8SPEN: u1,
                ///  TIMER9 clock enable when sleep mode
                TIMER9SPEN: u1,
                ///  TIMER10 clock enable when sleep mode
                TIMER10SPEN: u1,
                reserved20: u1,
                ///  SPI4 clock enable when sleep mode
                SPI4SPEN: u1,
                ///  SPI5 clock enable when sleep mode
                SPI5SPEN: u1,
                reserved26: u4,
                ///  TLI clock enable when sleep mode
                TLISPEN: u1,
                padding: u5,
            }),
            reserved112: [8]u8,
            ///  Backup domain control register (RCU_BDCTL)
            BDCTL: mmio.Mmio(packed struct(u32) {
                ///  LXTAL enable
                LXTALEN: u1,
                ///  External low-speed oscillator stabilization
                LXTALSTB: u1,
                ///  LXTAL bypass mode enable
                LXTALBPS: u1,
                ///  LXTAL drive capability
                LXTALDRI: u2,
                reserved8: u3,
                ///  RTC clock entry selection
                RTCSRC: u2,
                reserved15: u5,
                ///  RTC clock enable
                RTCEN: u1,
                ///  Backup domain reset
                BKPRST: u1,
                padding: u15,
            }),
            ///  Reset source /clock register (RCU_RSTSCK)
            RSTSCK: mmio.Mmio(packed struct(u32) {
                ///  IRC32K enable
                IRC32KEN: u1,
                ///  IRC32K stabilization
                IRC32KSTB: u1,
                reserved24: u22,
                ///  Reset flag clear
                RSTFC: u1,
                ///  BOR reset flag
                BORRSTF: u1,
                ///  External PIN reset flag
                EPRSTF: u1,
                ///  Power reset flag
                PORRSTF: u1,
                ///  Software reset flag
                SWRSTF: u1,
                ///  Free Watchdog timer reset flag
                FWDGTRSTF: u1,
                ///  Window watchdog timer reset flag
                WWDGTRSTF: u1,
                ///  Low-power reset flag
                LPRSTF: u1,
            }),
            reserved128: [8]u8,
            ///  PLL clock spread spectrum control register (RCU_PLLSSCTL)
            PLLSSCTL: mmio.Mmio(packed struct(u32) {
                ///  configure PLL spread spectrum modulation profile amplitude and frequency
                MODCNT: u13,
                ///  configure PLL spread spectrum modulation profile amplitude and frequency
                MODSTEP: u15,
                reserved30: u2,
                ///  PLL spread spectrum modulation type select
                SS_TYPE: u1,
                ///  PLL spread spectrum modulation enable
                SSCGON: u1,
            }),
            ///  PLLI2S register (RCU_PLLI2S)
            PLLI2S: mmio.Mmio(packed struct(u32) {
                ///  The PLLI2S VCO source clock prescaler
                PLLI2SPSC: u6,
                ///  The PLLI2S VCO clock multi factor
                PLLI2SN: u9,
                reserved24: u9,
                ///  The PLLI2S Q output frequency division factor from PLLI2S VCO clock
                PLLI2SQ: u4,
                ///  The PLLI2S R output frequency division factor from PLLI2S VCO clock
                PLLI2SR: u3,
                padding: u1,
            }),
            ///  PLLSAI register (RCU_PLLSAI)
            PLLSAI: mmio.Mmio(packed struct(u32) {
                reserved6: u6,
                ///  The PLLSAI VCO clock multi factor
                PLLSAIN: u9,
                reserved16: u1,
                ///  The PLLSAI P output frequency division factor from PLLSAI VCO clock
                PLLSAIP: u2,
                reserved24: u6,
                ///  The PLLI2S Q output frequency division factor from PLLI2S VCO clock
                PLLSAIQ: u4,
                ///  The PLLSAI R output frequency division factor from PLLSAI VCO clock
                PLLSAIR: u3,
                padding: u1,
            }),
            ///  Clock Configuration register 1
            CFG1: mmio.Mmio(packed struct(u32) {
                reserved16: u16,
                ///  The divider factor from PLLSAIR clock
                PLLSAIRDIV: u2,
                reserved24: u6,
                ///  TIMER clock selection
                TIMERSEL: u1,
                padding: u7,
            }),
            reserved192: [48]u8,
            ///  Additional clock control register
            ADDCTL: mmio.Mmio(packed struct(u32) {
                ///  48MHz clock selection
                CK48MSEL: u1,
                ///  PLL48M clock selection
                PLL48MSEL: u1,
                reserved16: u14,
                ///  Internal 48MHz RC oscillator enable
                IRC48MEN: u1,
                ///  Internal 48MHz RC oscillator clock stabilization Flag
                IRC48MSTB: u1,
                reserved24: u6,
                ///  Internal 48MHz RC oscillator calibration value register
                IRC48MCAL: u8,
            }),
            reserved204: [8]u8,
            ///  Additional clock interrupt register
            ADDINT: mmio.Mmio(packed struct(u32) {
                reserved6: u6,
                ///  IRC48M stabilization interrupt flag
                IRC48MSTBIF: u1,
                reserved14: u7,
                ///  Internal 48 MHz RC oscillator Stabilization Interrupt Enable
                IRC48MSTBIE: u1,
                padding: u17,
            }),
            reserved224: [16]u8,
            ///  APB1 additional reset register
            ADDAPB1RST: mmio.Mmio(packed struct(u32) {
                reserved27: u27,
                ///  CTC reset
                CTCRST: u1,
                reserved31: u3,
                ///  IREF reset
                IREFRST: u1,
            }),
            ///  APB1 additional enable register
            ADDAPB1EN: mmio.Mmio(packed struct(u32) {
                reserved27: u27,
                ///  CTC clock enable
                CTCEN: u1,
                reserved31: u3,
                ///  IREF interface clock enable
                IREFEN: u1,
            }),
            ///  APB1 additional sleep mode enable register
            ADDAPB1SPEN: mmio.Mmio(packed struct(u32) {
                reserved27: u27,
                ///  CTC enable when sleep mode
                CTCSPEN: u1,
                reserved31: u3,
                ///  IREF enable when sleep mode
                IREFSPEN: u1,
            }),
            reserved256: [20]u8,
            ///  Voltage key register
            VKEY: mmio.Mmio(packed struct(u32) {
                padding: u32,
            }),
            reserved308: [48]u8,
            ///  Deep sleep mode Voltage register
            DSV: mmio.Mmio(packed struct(u32) {
                ///  Deep-sleep mode voltage select
                DSLPVS: u3,
                padding: u29,
            }),
        };

        ///  Real-time clock
        pub const RTC = extern struct {
            ///  time register
            TIME: mmio.Mmio(packed struct(u32) {
                ///  Second units in BCD format
                SCU: u4,
                ///  Second tens in BCD format
                SCT: u3,
                reserved8: u1,
                ///  Minute units in BCD format
                MNU: u4,
                ///  Minute tens in BCD format
                MNT: u3,
                reserved16: u1,
                ///  Hour units in BCD format
                HRU: u4,
                ///  Hour tens in BCD format
                HRT: u2,
                ///  AM/PM notation
                PM: u1,
                padding: u9,
            }),
            ///  date register
            DATE: mmio.Mmio(packed struct(u32) {
                ///  Date units in BCD code
                DAYU: u4,
                ///  Date tens in BCD code
                DAYT: u2,
                reserved8: u2,
                ///  Month units in BCD code
                MONU: u4,
                ///  Month tens in BCD code
                MONT: u1,
                ///  Days of the week
                DOW: u3,
                ///  Year units in BCD code
                YRU: u4,
                ///  Year tens in BCD code
                YRT: u4,
                padding: u8,
            }),
            ///  control register
            CTL: mmio.Mmio(packed struct(u32) {
                ///  Auto-wakeup timer clock selection
                WTCS: u3,
                ///  Valid event edge of time-stamp
                TSEG: u1,
                ///  Reference clock detection function enable enable (50 or 60 Hz)
                REFEN: u1,
                ///  Shadow registers bypass control
                BPSHAD: u1,
                ///  Clock System
                CS: u1,
                ///  Coarse calibration function enable
                CCEN: u1,
                ///  Alarm-0 function enable
                ALRM0EN: u1,
                ///  Alarm-1 function enable
                ALRM1EN: u1,
                ///  Auto-wakeup timer function enable
                WTEN: u1,
                ///  Time-stamp function enable
                TSEN: u1,
                ///  RTC alarm-0 interrupt enable
                ALRM0IE: u1,
                ///  RTC alarm-1 interrupt enable
                ALRM1IE: u1,
                ///  Auto-wakeup timer interrupt enable
                WTIE: u1,
                ///  Time-stamp interrupt enable
                TSIE: u1,
                ///  Add 1 hour (summer time change)
                A1H: u1,
                ///  Subtract 1 hour (winter time change)
                S1H: u1,
                ///  Daylight saving mark
                DSM: u1,
                ///  Calibration output selection
                COS: u1,
                ///  Output polarity
                OPOL: u1,
                ///  Output selection
                OS: u2,
                ///  Calibration output enable
                COEN: u1,
                padding: u8,
            }),
            ///  status register
            STAT: mmio.Mmio(packed struct(u32) {
                ///  Alarm 0 configuration can be write flag
                ALRM0WF: u1,
                ///  Alarm 1 configuration can be write flag
                ALRM1WF: u1,
                ///  Wakeup timer write enable flag
                WTWF: u1,
                ///  Shift function operation pending flag
                SOPF: u1,
                ///  Year configuration mark
                YCM: u1,
                ///  Register synchronization flag
                RSYNF: u1,
                ///  Initialization state flag
                INITF: u1,
                ///  Enter initialization mode
                INITM: u1,
                ///  Alarm-0 occurs flag
                ALRM0F: u1,
                ///  Alarm-1 occurs flag
                ALRM1F: u1,
                ///  Wakeup timer flag
                WTF: u1,
                ///  Time-stamp flag
                TSF: u1,
                ///  Time-stamp overflow flag
                TSOVRF: u1,
                ///  RTC_TAMP0 detected flag
                TP0F: u1,
                ///  RTC_TAMP1 detected flag
                TP1F: u1,
                reserved16: u1,
                ///  Smooth calibration pending flag
                SCPF: u1,
                padding: u15,
            }),
            ///  prescaler register
            PSC: mmio.Mmio(packed struct(u32) {
                ///  Synchronous prescaler factor
                FACTOR_S: u15,
                reserved16: u1,
                ///  Asynchronous prescaler factor
                FACTOR_A: u7,
                padding: u9,
            }),
            ///  Wakeup timer register
            WUT: mmio.Mmio(packed struct(u32) {
                ///  Auto-wakeup timer reloads value
                WTRV: u16,
                padding: u16,
            }),
            ///  Coarse calibration register
            COSC: mmio.Mmio(packed struct(u32) {
                ///  Coarse Calibration step
                COSS: u5,
                reserved7: u2,
                ///  Coarse Calibration direction
                COSD: u1,
                padding: u24,
            }),
            ///  Alarm 0 time and date register
            ALRM0TD: mmio.Mmio(packed struct(u32) {
                ///  Second units in BCD code.
                SCU: u4,
                ///  Second tens in BCD code.
                SCT: u3,
                ///  Alarm seconds mask bit
                MSKS: u1,
                ///  Minute units in BCD code.
                MNU: u4,
                ///  Minute tens in BCD code.
                MNT: u3,
                ///  Alarm minutes mask bit
                MSKM: u1,
                ///  Hour units in BCD code.
                HRU: u4,
                ///  Hour tens in BCD code.
                HRT: u2,
                ///  AM/PM flag
                PM: u1,
                ///  Alarm hours mask bit
                MSKH: u1,
                ///  Date units or week day in BCD code.
                DAYU: u4,
                ///  Date tens in BCD code.
                DAYT: u2,
                ///  Day of the week selected
                DOWS: u1,
                ///  Alarm date mask bit
                MSKD: u1,
            }),
            ///  Alarm 1 time and date register
            ALRM1TD: mmio.Mmio(packed struct(u32) {
                ///  Second units in BCD code.
                SCU: u4,
                ///  Second tens in BCD code.
                SCT: u3,
                ///  Alarm seconds mask bit
                MSKS: u1,
                ///  Minute units in BCD code.
                MNU: u4,
                ///  Minute tens in BCD code.
                MNT: u3,
                ///  Alarm minutes mask bit
                MSKM: u1,
                ///  Hour units in BCD code.
                HRU: u4,
                ///  Hour tens in BCD code.
                HRT: u2,
                ///  AM/PM flag
                PM: u1,
                ///  Alarm hours mask bit
                MSKH: u1,
                ///  Date units or week day in BCD code.
                DAYU: u4,
                ///  Date tens in BCD code.
                DAYT: u2,
                ///  Day of the week selected
                DOWS: u1,
                ///  Alarm date mask bit
                MSKD: u1,
            }),
            ///  write protection register
            WPK: mmio.Mmio(packed struct(u32) {
                ///  Write protection key
                WPK: u8,
                padding: u24,
            }),
            ///  sub second register
            SS: mmio.Mmio(packed struct(u32) {
                ///  Sub second value
                SSC: u16,
                padding: u16,
            }),
            ///  shift function control register
            SHIFTCTL: mmio.Mmio(packed struct(u32) {
                ///  Subtract a fraction of a second
                SFS: u15,
                reserved31: u16,
                ///  One second add
                A1S: u1,
            }),
            ///  Time of time stamp register
            TTS: mmio.Mmio(packed struct(u32) {
                ///  Second units in BCD code.
                SCU: u4,
                ///  Second tens in BCD code.
                SCT: u3,
                reserved8: u1,
                ///  Minute units in BCD code.
                MNU: u4,
                ///  Minute tens in BCD code.
                MNT: u3,
                reserved16: u1,
                ///  Hour units in BCD code.
                HRU: u4,
                ///  Hour tens in BCD code.
                HRT: u2,
                ///  AM/PM mark
                PM: u1,
                padding: u9,
            }),
            ///  Date of time stamp register
            DTS: mmio.Mmio(packed struct(u32) {
                ///  Date units in BCD format
                DAYU: u4,
                ///  Date tens in BCD format
                DAYT: u2,
                reserved8: u2,
                ///  Month units in BCD format
                MONU: u4,
                ///  Month tens in BCD format
                MONT: u1,
                ///  Week day units
                DOW: u3,
                padding: u16,
            }),
            ///  Sub second of time stamp register
            SSTS: mmio.Mmio(packed struct(u32) {
                ///  Sub second value
                SSC: u16,
                padding: u16,
            }),
            ///  calibration register
            HRFC: mmio.Mmio(packed struct(u32) {
                ///  Calibration mask number
                CMSK: u9,
                reserved13: u4,
                ///  Frequency compensation window 16 second selected
                CWND16: u1,
                ///  Frequency compensation window 8 second selected
                CWND8: u1,
                ///  Increase RTC frequency by 488.5PPM
                FREQI: u1,
                padding: u16,
            }),
            ///  tamper and alternate function configuration register
            TAMP: mmio.Mmio(packed struct(u32) {
                ///  Tamper 0 detection enable
                TP0EN: u1,
                ///  Tamper 0 event trigger edge
                TP0EG: u1,
                ///  Tamper detection interrupt enable
                TPIE: u1,
                ///  Tamper 1 detection enable
                TP1EN: u1,
                ///  Tamper 1 event trigger edge
                TP1EG: u1,
                reserved7: u2,
                ///  Make tamper function used for timestamp function
                TPTS: u1,
                ///  Sampling frequency of tamper event detection
                FREQ: u3,
                ///  RTC_TAMPx filter count setting
                FLT: u2,
                ///  Pre-charge duration time of RTC_TAMPx
                PRCH: u2,
                ///  RTC_TAMPx pull-up disable
                DISPU: u1,
                ///  Tamper 0 function input mapping selection
                TP0SEL: u1,
                ///  Timestamp input mapping selection
                TSSEL: u1,
                ///  RTC_ALARM Output Type
                AOT: u1,
                padding: u13,
            }),
            ///  alarm A sub second register
            ALRM0SS: mmio.Mmio(packed struct(u32) {
                ///  Alarm sub second value
                SSC: u15,
                reserved24: u9,
                ///  Mask control bit of SSC
                MSKSSC: u4,
                padding: u4,
            }),
            ///  Alarm 1 sub second register
            ALRM1SS: mmio.Mmio(packed struct(u32) {
                ///  Alarm sub second value
                SSC: u15,
                reserved24: u9,
                ///  Mask control bit of SSC
                MSKSSC: u4,
                padding: u4,
            }),
            reserved80: [4]u8,
            ///  backup register
            BKP0: mmio.Mmio(packed struct(u32) {
                ///  BKP
                DATA: u32,
            }),
            ///  backup register
            BKP1: mmio.Mmio(packed struct(u32) {
                ///  Data
                DATA: u32,
            }),
            ///  backup register
            BKP2: mmio.Mmio(packed struct(u32) {
                ///  Data
                DATA: u32,
            }),
            ///  backup register
            BKP3: mmio.Mmio(packed struct(u32) {
                ///  Data
                DATA: u32,
            }),
            ///  backup register
            BKP4: mmio.Mmio(packed struct(u32) {
                ///  Data
                DATA: u32,
            }),
            ///  backup register
            BKP5: mmio.Mmio(packed struct(u32) {
                ///  Data
                DATA: u32,
            }),
            ///  backup register
            BKP6: mmio.Mmio(packed struct(u32) {
                ///  Data
                DATA: u32,
            }),
            ///  backup register
            BKP7: mmio.Mmio(packed struct(u32) {
                ///  Data
                DATA: u32,
            }),
            ///  backup register
            BKP8: mmio.Mmio(packed struct(u32) {
                ///  Data
                DATA: u32,
            }),
            ///  backup register
            BKP9: mmio.Mmio(packed struct(u32) {
                ///  Data
                DATA: u32,
            }),
            ///  backup register
            BKP10: mmio.Mmio(packed struct(u32) {
                ///  Data
                DATA: u32,
            }),
            ///  backup register
            BKP11: mmio.Mmio(packed struct(u32) {
                ///  Data
                DATA: u32,
            }),
            ///  backup register
            BKP12: mmio.Mmio(packed struct(u32) {
                ///  Data
                DATA: u32,
            }),
            ///  backup register
            BKP13: mmio.Mmio(packed struct(u32) {
                ///  Data
                DATA: u32,
            }),
            ///  backup register
            BKP14: mmio.Mmio(packed struct(u32) {
                ///  Data
                DATA: u32,
            }),
            ///  backup register
            BKP15: mmio.Mmio(packed struct(u32) {
                ///  Data
                DATA: u32,
            }),
            ///  backup register
            BKP16: mmio.Mmio(packed struct(u32) {
                ///  Data
                DATA: u32,
            }),
            ///  backup register
            BKP17: mmio.Mmio(packed struct(u32) {
                ///  Data
                DATA: u32,
            }),
            ///  backup register
            BKP18: mmio.Mmio(packed struct(u32) {
                ///  Data
                DATA: u32,
            }),
            ///  backup register
            BKP19: mmio.Mmio(packed struct(u32) {
                ///  Data
                DATA: u32,
            }),
        };

        ///  Secure digital input/output interface
        pub const SDIO = extern struct {
            ///  Power control register
            PWRCTL: mmio.Mmio(packed struct(u32) {
                ///  SDIO power control bits
                PWRCTL: u2,
                padding: u30,
            }),
            ///  Clock control register
            CLKCTL: mmio.Mmio(packed struct(u32) {
                ///  Clock division
                DIV_0_7: u8,
                ///  SDIO_CLK clock output enable bit
                CLKEN: u1,
                ///  SDIO_CLK clock dynamic switch on/off for power saving
                CLKPWRSAV: u1,
                ///  Clock bypass enable bit
                CLKBYP: u1,
                ///  SDIO card bus mode control bit
                BUSMODE: u2,
                ///  SDIO_CLK clock edge selection bit
                CLKEDGE: u1,
                ///  Hardware Clock Control enable bit
                HWCLKEN: u1,
                reserved31: u16,
                ///  MSB of Clock division
                DIV_8: u1,
            }),
            ///  Command argument register
            CMDAGMT: mmio.Mmio(packed struct(u32) {
                ///  SDIO card command argument
                CMDAGMT: u32,
            }),
            ///  Command control register
            CMDCTL: mmio.Mmio(packed struct(u32) {
                ///  Command index
                CMDIDX: u6,
                ///  Command response type bits
                CMDRESP: u2,
                ///  Interrupt wait instead of timeout
                INTWAIT: u1,
                ///  Waits for ends of data transfer
                WAITDEND: u1,
                ///  Command state machine (CSM) enable bit
                CSMEN: u1,
                ///  SD I/O suspend command(SD I/O only)
                SUSPEND: u1,
                ///  CMD completion signal enabled (CE-ATA only)
                ENCMDC: u1,
                ///  No CE-ATA Interrupt (CE-ATA only)
                NINTEN: u1,
                ///  CE-ATA command enable(CE-ATA only)
                ATAEN: u1,
                padding: u17,
            }),
            ///  Command index response register
            RSPCMDIDX: mmio.Mmio(packed struct(u32) {
                ///  Last response command index
                RSPCMDIDX: u6,
                padding: u26,
            }),
            ///  Response register 0
            RESP0: mmio.Mmio(packed struct(u32) {
                ///  Card state
                RESP0: u32,
            }),
            ///  Response register 1
            RESP1: mmio.Mmio(packed struct(u32) {
                ///  Card state
                RESP1: u32,
            }),
            ///  Response register 2
            RESP2: mmio.Mmio(packed struct(u32) {
                ///  Card state
                RESP2: u32,
            }),
            ///  Response register 3
            RESP3: mmio.Mmio(packed struct(u32) {
                ///  Response register 3
                RESP3: u32,
            }),
            ///  Data timeout register
            DATATO: mmio.Mmio(packed struct(u32) {
                ///  Data timeout period
                DATATO: u32,
            }),
            ///  Data length register
            DATALEN: mmio.Mmio(packed struct(u32) {
                ///  Data transfer length
                DATALEN: u25,
                padding: u7,
            }),
            ///  Data control register
            DATACTL: mmio.Mmio(packed struct(u32) {
                ///  Data transfer enabled bit
                DATAEN: u1,
                ///  Data transfer direction
                DATADIR: u1,
                ///  Data transfer mode
                TRANSMOD: u1,
                ///  DMA enable bit
                DMAEN: u1,
                ///  Data block size
                BLKSZ: u4,
                ///  Read wait mode enabled
                RWEN: u1,
                ///  Read wait stop
                RWSTOP: u1,
                ///  Read wait type
                RWTYPE: u1,
                ///  SD I/O specific function enable
                IOEN: u1,
                padding: u20,
            }),
            ///  Data counter register
            DATACNT: mmio.Mmio(packed struct(u32) {
                ///  Data count value
                DATACNT: u25,
                padding: u7,
            }),
            ///  Status register
            STAT: mmio.Mmio(packed struct(u32) {
                ///  Command response received
                CCRCERR: u1,
                ///  Data block sent/received
                DTCRCERR: u1,
                ///  Command response timeout
                CMDTMOUT: u1,
                ///  Data timeout
                DTTMOUT: u1,
                ///  Transmit FIFO underrun error occurs
                TXURE: u1,
                ///  Received FIFO overrun error occurs
                RXORE: u1,
                ///  Command response received
                CMDRECV: u1,
                ///  Command sent
                CMDSEND: u1,
                ///  Data end
                DTEND: u1,
                ///  Start bit error in the bus
                STBITE: u1,
                ///  Data block sent/received
                DTBLKEND: u1,
                ///  Command transmission in progress
                CMDRUN: u1,
                ///  Data transmission in progress
                TXRUN: u1,
                ///  Data reception in progress
                RXRUN: u1,
                ///  Transmit FIFO is half empty
                TFH: u1,
                ///  Receive FIFO is half full
                RFH: u1,
                ///  Transmit FIFO is full
                TFF: u1,
                ///  Receive FIFO is full
                RFF: u1,
                ///  Transmit FIFO is empty
                TFE: u1,
                ///  Receive FIFO is empty
                RFE: u1,
                ///  Data is valid in transmit FIFO
                TXDTVAL: u1,
                ///  Data is valid in receive FIFO
                RXDTVAL: u1,
                ///  SD I/O interrupt received
                SDIOINT: u1,
                ///  CE-ATA command completion signal received
                ATAEND: u1,
                padding: u8,
            }),
            ///  Interrupt clear register
            INTC: mmio.Mmio(packed struct(u32) {
                ///  CCRCERR flag clear bit
                CCRCERRC: u1,
                ///  DTCRCERR flag clear bit
                DTCRCERRC: u1,
                ///  CMDTMOUT flag clear bit
                CMDTMOUTC: u1,
                ///  DTTMOUT flag clear bit
                DTTMOUTC: u1,
                ///  TXURE flag clear bit
                TXUREC: u1,
                ///  RXORE flag clear bit
                RXOREC: u1,
                ///  CMDRECV flag clear bit
                CMDRECVC: u1,
                ///  CMDSEND flag clear bit
                CMDSENDC: u1,
                ///  DTEND flag clear bit
                DTENDC: u1,
                ///  STBITE flag clear bit
                STBITEC: u1,
                ///  DTBLKEND flag clear bit
                DTBLKENDC: u1,
                reserved22: u11,
                ///  SDIOINT flag clear bit
                SDIOINTC: u1,
                ///  ATAEND flag clear bit
                ATAENDC: u1,
                padding: u8,
            }),
            ///  Interrupt enable register
            INTEN: mmio.Mmio(packed struct(u32) {
                ///  Command response CRC fail interrupt enable
                CCRCERRIE: u1,
                ///  Data CRC fail interrupt enable
                DTCRCERRIE: u1,
                ///  Command response timeout interrupt enable
                CMDTMOUTIE: u1,
                ///  Data timeout interrupt enable
                DTTMOUTIE: u1,
                ///  Transmit FIFO underrun error interrupt enable
                TXUREIE: u1,
                ///  Received FIFO overrun error interrupt enable
                RXOREIE: u1,
                ///  Command response received interrupt enable
                CMDRECVIE: u1,
                ///  Command sent interrupt enable
                CMDSENDIE: u1,
                ///  Data end interrupt enable
                DTENDIE: u1,
                ///  Start bit error interrupt enable
                STBITEIE: u1,
                ///  Data block end interrupt enable
                DTBLKENDIE: u1,
                ///  Command transmission interrupt enable
                CMDRUNIE: u1,
                ///  Data transmission interrupt enable
                TXRUNIE: u1,
                ///  Data reception interrupt enable
                RXRUNIE: u1,
                ///  Transmit FIFO half empty interrupt enable
                TFHIE: u1,
                ///  Receive FIFO half full interrupt enable
                RFHIE: u1,
                ///  Transmit FIFO full interrupt enable
                TFFIE: u1,
                ///  Receive FIFO full interrupt enable
                RFFIE: u1,
                ///  Transmit FIFO empty interrupt enable
                TFEIE: u1,
                ///  Receive FIFO empty interrupt enable
                RFEIE: u1,
                ///  Data valid in transmit FIFO interrupt enable
                TXDTVALIE: u1,
                ///  Data valid in receive FIFO interrupt enable
                RXDTVALIE: u1,
                ///  SD I/O interrupt received interrupt enable
                SDIOINTIE: u1,
                ///  CE-ATA command completion signal received interrupt enable
                ATAENDIE: u1,
                padding: u8,
            }),
            reserved72: [8]u8,
            ///  FIFO counter register
            FIFOCNT: mmio.Mmio(packed struct(u32) {
                ///  FIFO counter
                FIFOCNT: u24,
                padding: u8,
            }),
            reserved128: [52]u8,
            ///  FIFO data register
            FIFO: mmio.Mmio(packed struct(u32) {
                ///  Receive FIFO data or transmit FIFO data
                FIFODT: u32,
            }),
        };

        ///  Serial peripheral interface
        pub const SPI0 = extern struct {
            ///  control register 0
            CTL0: mmio.Mmio(packed struct(u32) {
                ///  Clock Phase Selection
                CKPH: u1,
                ///  Clock polarity Selection
                CKPL: u1,
                ///  Master Mode Enable
                MSTMOD: u1,
                ///  Master Clock Prescaler Selection
                PSC: u3,
                ///  SPI enable
                SPIEN: u1,
                ///  LSB First Mode
                LF: u1,
                ///  NSS Pin Selection In NSS Software Mode
                SWNSS: u1,
                ///  NSS Software Mode Selection
                SWNSSEN: u1,
                ///  Receive only
                RO: u1,
                ///  Data frame format
                FF16: u1,
                ///  CRC Next Transfer
                CRCNT: u1,
                ///  CRC Calculation Enable
                CRCEN: u1,
                ///  Bidirectional Transmit output enable
                BDOEN: u1,
                ///  Bidirectional enable
                BDEN: u1,
                padding: u16,
            }),
            ///  control register 1
            CTL1: mmio.Mmio(packed struct(u32) {
                ///  Rx buffer DMA enable
                DMAREN: u1,
                ///  Transmit Buffer DMA Enable
                DMATEN: u1,
                ///  Drive NSS Output
                NSSDRV: u1,
                reserved4: u1,
                ///  SPI TI Mode Enable
                TMOD: u1,
                ///  Error interrupt enable
                ERRIE: u1,
                ///  RX buffer not empty interrupt enable
                RBNEIE: u1,
                ///  Tx buffer empty interrupt enable
                TBEIE: u1,
                padding: u24,
            }),
            ///  status register
            STAT: mmio.Mmio(packed struct(u32) {
                ///  Receive Buffer Not Empty
                RBNE: u1,
                ///  Transmit Buffer Empty
                TBE: u1,
                ///  I2S channel side
                I2SCH: u1,
                ///  Transmission underrun error bit
                TXURERR: u1,
                ///  SPI CRC Error Bit
                CRCERR: u1,
                ///  SPI Configuration error
                CONFERR: u1,
                ///  Reception Overrun Error Bit
                RXORERR: u1,
                ///  Transmitting On-going Bit
                TRANS: u1,
                ///  Format Error
                FERR: u1,
                padding: u23,
            }),
            ///  data register
            DATA: mmio.Mmio(packed struct(u32) {
                ///  Data transfer register
                SPI_DATA: u16,
                padding: u16,
            }),
            ///  CRC polynomial register
            CPCPOLY: mmio.Mmio(packed struct(u32) {
                ///  CRC polynomial register
                CPR: u16,
                padding: u16,
            }),
            ///  RX CRC register
            RCRC: mmio.Mmio(packed struct(u32) {
                ///  RX CRC register
                RCR: u16,
                padding: u16,
            }),
            ///  TX CRC register
            TCRC: mmio.Mmio(packed struct(u32) {
                ///  Tx CRC register
                TCR: u16,
                padding: u16,
            }),
            ///  I2S control register
            I2SCTL: mmio.Mmio(packed struct(u32) {
                ///  Channel length (number of bits per audio channel)
                CHLEN: u1,
                ///  Data length
                DTLEN: u2,
                ///  Idle state clock polarity
                CKPL: u1,
                ///  I2S standard selection
                I2SSTD: u2,
                reserved7: u1,
                ///  PCM frame synchronization mode
                PCMSMOD: u1,
                ///  I2S operation mode
                I2SOPMOD: u2,
                ///  I2S Enable
                I2SEN: u1,
                ///  I2S mode selection
                I2SSEL: u1,
                padding: u20,
            }),
            ///  I2S prescaler register
            I2SPSC: mmio.Mmio(packed struct(u32) {
                ///  Dividing factor for the prescaler
                DIV: u8,
                ///  Odd factor for the prescaler
                OF: u1,
                ///  I2S_MCK output enable
                MCKOEN: u1,
                padding: u22,
            }),
        };

        ///  Universal asynchronous receiver transmitter
        pub const UART3 = extern struct {
            ///  Status register 0
            STAT0: mmio.Mmio(packed struct(u32) {
                ///  Parity error flag
                PERR: u1,
                ///  Frame error flag
                FERR: u1,
                ///  Noise error flag
                NERR: u1,
                ///  Overrun error
                ORERR: u1,
                ///  IDLE frame detected flag
                IDLEF: u1,
                ///  Read data buffer not empty
                RBNE: u1,
                ///  Transmission complete
                TC: u1,
                ///  Transmit data buffer empty
                TBE: u1,
                ///  LIN break detection flag
                LBDF: u1,
                ///  CTS change flag
                CTSF: u1,
                padding: u22,
            }),
            ///  Data register
            DATA: mmio.Mmio(packed struct(u32) {
                ///  Transmit or read data value
                DATA: u9,
                padding: u23,
            }),
            ///  Baud rate register
            BAUD: mmio.Mmio(packed struct(u32) {
                ///  Fraction part of baud-rate divider
                FRADIV: u4,
                ///  Integer part of baud-rate divider
                INTDIV: u12,
                padding: u16,
            }),
            ///  Control register 0
            CTL0: mmio.Mmio(packed struct(u32) {
                ///  Send break command
                SBKCMD: u1,
                ///  Receiver wakeup from mute mode
                RWU: u1,
                ///  Receiver enable
                REN: u1,
                ///  Transmitter enable
                TEN: u1,
                ///  IDLE line detected interrupt enable
                IDLEIE: u1,
                ///  Read data buffer not empty interrupt and overrun error interrupt enable
                RBNEIE: u1,
                ///  Transmission complete interrupt enable
                TCIE: u1,
                ///  Transmitter buffer empty interrupt enable
                TBEIE: u1,
                ///  Parity error interrupt enable
                PERRIE: u1,
                ///  Parity mode
                PM: u1,
                ///  Parity check function enable
                PCEN: u1,
                ///  Wakeup method in mute mode
                WM: u1,
                ///  Word length
                WL: u1,
                ///  USART enable
                UEN: u1,
                reserved15: u1,
                ///  Oversampling mode
                OVSMOD: u1,
                padding: u16,
            }),
            ///  Control register 1
            CTL1: mmio.Mmio(packed struct(u32) {
                ///  Address of the USART
                ADDR: u4,
                reserved5: u1,
                ///  LIN break frame length
                LBLEN: u1,
                ///  LIN break detection interrupt enable
                LBDIE: u1,
                reserved8: u1,
                ///  CK Length
                CLEN: u1,
                ///  Clock phase
                CPH: u1,
                ///  Clock polarity
                CPL: u1,
                ///  CK pin enable
                CKEN: u1,
                ///  STOP bits length
                STB: u2,
                ///  LIN mode enable
                LMEN: u1,
                padding: u17,
            }),
            ///  Control register 2
            CTL2: mmio.Mmio(packed struct(u32) {
                ///  Error interrupt enable
                ERRIE: u1,
                ///  IrDA mode enable
                IREN: u1,
                ///  IrDA low-power
                IRLP: u1,
                ///  Half-duplex selection
                HDEN: u1,
                ///  Smartcard NACK enable
                NKEN: u1,
                ///  Smartcard mode enable
                SCEN: u1,
                ///  DMA request enable for reception
                DENR: u1,
                ///  DMA request enable for transmission
                DENT: u1,
                ///  RTS enable
                RTSEN: u1,
                ///  CTS enable
                CTSEN: u1,
                ///  CTS interrupt enable
                CTSIE: u1,
                ///  One sample bit method enable
                OSB: u1,
                padding: u20,
            }),
            reserved28: [4]u8,
            ///  Guard time and prescaler register
            GP: mmio.Mmio(packed struct(u32) {
                ///  Prescaler value
                PSC: u8,
                ///  Guard time value in Smartcard mode
                GUAT: u8,
                padding: u16,
            }),
            reserved192: [160]u8,
            ///  Coherence control register
            CHC: mmio.Mmio(packed struct(u32) {
                ///  Hardware flow control coherence mode
                HCM: u1,
                ///  Parity check coherence mode
                PCM: u1,
                ///  Break frame coherence mode
                BCM: u1,
                reserved8: u5,
                ///  Early parity error flag
                EPERR: u1,
                padding: u23,
            }),
        };

        ///  General-purpose-timers
        pub const TIMER8 = extern struct {
            ///  control register 0
            CTL0: mmio.Mmio(packed struct(u32) {
                ///  Counter enable
                CEN: u1,
                ///  Update disable
                UPDIS: u1,
                ///  Update source
                UPS: u1,
                ///  Single pulse mode
                SPM: u1,
                reserved7: u3,
                ///  Auto-reload shadow enable
                ARSE: u1,
                ///  Clock division
                CKDIV: u2,
                padding: u22,
            }),
            reserved8: [4]u8,
            ///  slave mode configuration register
            SMCFG: mmio.Mmio(packed struct(u32) {
                ///  Slave mode control
                SMC: u3,
                reserved4: u1,
                ///  Trigger selection
                TRGS: u3,
                ///  Master-slave mode
                MSM: u1,
                padding: u24,
            }),
            ///  DMA and interrupt enable register
            DMAINTEN: mmio.Mmio(packed struct(u32) {
                ///  Update interrupt enable
                UPIE: u1,
                ///  Channel 0 capture/compare interrupt enable
                CH0IE: u1,
                ///  Channel 1 capture/compare interrupt enable
                CH1IE: u1,
                reserved6: u3,
                ///  Trigger interrupt enable
                TRGIE: u1,
                padding: u25,
            }),
            ///  interrupt flag register
            INTF: mmio.Mmio(packed struct(u32) {
                ///  Update interrupt flag
                UPIF: u1,
                ///  Channel 0 capture/compare interrupt flag
                CH0IF: u1,
                ///  Channel 1 capture/compare interrupt flag
                CH1IF: u1,
                reserved6: u3,
                ///  Trigger interrupt flag
                TRGIF: u1,
                reserved9: u2,
                ///  Channel 0 over capture flag
                CH0OF: u1,
                ///  Channel 1 over capture flag
                CH1OF: u1,
                padding: u21,
            }),
            ///  event generation register
            SWEVG: mmio.Mmio(packed struct(u32) {
                ///  Update generation
                UPG: u1,
                ///  Channel 0 capture or compare event generation
                CH0G: u1,
                ///  Channel 1 capture or compare event generation
                CH1G: u1,
                reserved6: u3,
                ///  Trigger event generation
                TRGG: u1,
                padding: u25,
            }),
            ///  Channel control register 0 (output mode)
            CHCTL0_Output: mmio.Mmio(packed struct(u32) {
                ///  Channel 0 I/O mode selection
                CH0MS: u2,
                ///  Channel 0 output compare fast enable
                CH0COMFEN: u1,
                ///  Channel 0 compare output shadow enable
                CH0COMSEN: u1,
                ///  Channel 0 compare output control
                CH0COMCTL: u3,
                reserved8: u1,
                ///  Channel 1 mode selection
                CH1MS: u2,
                ///  Channel 1 output compare fast enable
                CH1COMFEN: u1,
                ///  Channel 1 output compare shadow enable
                CH1COMSEN: u1,
                ///  Channel 1 compare output control
                CH1COMCTL: u3,
                padding: u17,
            }),
            reserved32: [4]u8,
            ///  Channel control register 2
            CHCTL2: mmio.Mmio(packed struct(u32) {
                ///  Channel 0 capture/compare function enable
                CH0EN: u1,
                ///  Channel 0 capture/compare function polarity
                CH0P: u1,
                reserved3: u1,
                ///  Channel 0 complementary output polarity
                CH0NP: u1,
                ///  Channel 1 capture/compare function enable
                CH1EN: u1,
                ///  Channel 1 capture/compare function polarity
                CH1P: u1,
                reserved7: u1,
                ///  Channel 1 complementary output polarity
                CH1NP: u1,
                padding: u24,
            }),
            ///  Counter register
            CNT: mmio.Mmio(packed struct(u32) {
                ///  current counter value
                CNT: u16,
                padding: u16,
            }),
            ///  Prescaler register
            PSC: mmio.Mmio(packed struct(u32) {
                ///  Prescaler value of the counter clock
                PSC: u16,
                padding: u16,
            }),
            ///  Counter auto reload register
            CAR: mmio.Mmio(packed struct(u32) {
                ///  Counter auto reload value
                CARL: u16,
                padding: u16,
            }),
            reserved52: [4]u8,
            ///  Channel 0 capture/compare value register
            CH0CV: mmio.Mmio(packed struct(u32) {
                ///  Capture or compare value of channel0
                CH0VAL: u16,
                padding: u16,
            }),
            ///  Channel 1 capture/compare value register
            CH1CV: mmio.Mmio(packed struct(u32) {
                ///  Capture or compare value of channel1
                CH1VAL: u16,
                padding: u16,
            }),
            reserved252: [192]u8,
            ///  configuration register
            CFG: mmio.Mmio(packed struct(u32) {
                reserved1: u1,
                ///  Write CHxVAL register selection
                CHVSEL: u1,
                padding: u30,
            }),
        };

        ///  General-purpose-timers
        pub const TIMER9 = extern struct {
            ///  control register 0
            CTL0: mmio.Mmio(packed struct(u32) {
                ///  Counter enable
                CEN: u1,
                ///  Update disable
                UPDIS: u1,
                ///  Update source
                UPS: u1,
                reserved7: u4,
                ///  Auto-reload shadow enable
                ARSE: u1,
                ///  Clock division
                CKDIV: u2,
                padding: u22,
            }),
            ///  control register 1
            CTL1: mmio.Mmio(packed struct(u32) {
                reserved4: u4,
                ///  Master mode control
                MMC: u3,
                padding: u25,
            }),
            reserved12: [4]u8,
            ///  DMA/Interrupt enable register
            DMAINTEN: mmio.Mmio(packed struct(u32) {
                ///  Update interrupt enable
                UPIE: u1,
                ///  Channel 0 capture/compare interrupt enable
                CH0IE: u1,
                padding: u30,
            }),
            ///  interrupt flag register
            INTF: mmio.Mmio(packed struct(u32) {
                ///  Update interrupt flag
                UPIF: u1,
                ///  Channel 0 capture/compare interrupt flag
                CH0IF: u1,
                reserved9: u7,
                ///  Channel 0 over capture flag
                CH0OF: u1,
                padding: u22,
            }),
            ///  event generation register
            SWEVG: mmio.Mmio(packed struct(u32) {
                ///  Update generation
                UPG: u1,
                ///  Channel 0 capture or compare event generation
                CH0G: u1,
                padding: u30,
            }),
            ///  Channel control register 0 (output mode)
            CHCTL0_Output: mmio.Mmio(packed struct(u32) {
                ///  Channel 0 I/O mode selection
                CH0MS: u2,
                ///  Channel 0 output compare fast enable
                CH0COMFEN: u1,
                ///  Channel 0 compare output shadow enable
                CH0COMSEN: u1,
                ///  Channel 0 compare output control
                CH0COMCTL: u3,
                padding: u25,
            }),
            reserved32: [4]u8,
            ///  Channel control register 2
            CHCTL2: mmio.Mmio(packed struct(u32) {
                ///  Channel 0 capture/compare function enable
                CH0EN: u1,
                ///  Channel 0 capture/compare polarity
                CH0P: u1,
                reserved3: u1,
                ///  Channel 0 complementary output polarity
                CH0NP: u1,
                padding: u28,
            }),
            ///  Counter register
            CNT: mmio.Mmio(packed struct(u32) {
                ///  current counter value
                CNT: u16,
                padding: u16,
            }),
            ///  Prescaler register
            PSC: mmio.Mmio(packed struct(u32) {
                ///  Prescaler value of the counter clock
                PSC: u16,
                padding: u16,
            }),
            ///  Counter auto reload register
            CAR: mmio.Mmio(packed struct(u32) {
                ///  Counter auto reload value
                CARL: u16,
                padding: u16,
            }),
            reserved52: [4]u8,
            ///  Channel 0 capture/compare value register
            CH0CV: mmio.Mmio(packed struct(u32) {
                ///  Capture or compare value of channel 0
                CH0VAL: u16,
                padding: u16,
            }),
            reserved80: [24]u8,
            ///  channel input remap register
            IRMP: mmio.Mmio(packed struct(u32) {
                reserved10: u10,
                ///  Internal trigger input1 remap
                ITI1_RMP: u2,
                padding: u20,
            }),
            reserved252: [168]u8,
            ///  configuration register
            CFG: mmio.Mmio(packed struct(u32) {
                reserved1: u1,
                ///  Write CHxVAL register selection
                CHVSEL: u1,
                padding: u30,
            }),
        };

        ///  Basic-timers
        pub const TIMER5 = extern struct {
            ///  control register 0
            CTL0: mmio.Mmio(packed struct(u32) {
                ///  Counter enable
                CEN: u1,
                ///  Update disable
                UPDIS: u1,
                ///  Update source
                UPS: u1,
                ///  Single pulse mode
                SPM: u1,
                reserved7: u3,
                ///  Auto-reload shadow enable
                ARSE: u1,
                padding: u24,
            }),
            ///  control register 1
            CTL1: mmio.Mmio(packed struct(u32) {
                reserved4: u4,
                ///  Master mode control
                MMC: u3,
                padding: u25,
            }),
            reserved12: [4]u8,
            ///  DMA/Interrupt enable register
            DMAINTEN: mmio.Mmio(packed struct(u32) {
                ///  Update interrupt enable
                UPIE: u1,
                reserved8: u7,
                ///  Update DMA request enable
                UPDEN: u1,
                padding: u23,
            }),
            ///  Interrupt flag register
            INTF: mmio.Mmio(packed struct(u32) {
                ///  Update interrupt flag
                UPIF: u1,
                padding: u31,
            }),
            ///  event generation register
            SWEVG: mmio.Mmio(packed struct(u32) {
                ///  Update generation
                UPG: u1,
                padding: u31,
            }),
            reserved36: [12]u8,
            ///  Counter register
            CNT: mmio.Mmio(packed struct(u32) {
                ///  Low counter value
                CNT: u16,
                padding: u16,
            }),
            ///  Prescaler register
            PSC: mmio.Mmio(packed struct(u32) {
                ///  Prescaler value of the counter clock
                PSC: u16,
                padding: u16,
            }),
            ///  Counter auto reload register
            CAR: mmio.Mmio(packed struct(u32) {
                ///  Counter auto reload value
                CAR: u16,
                padding: u16,
            }),
        };

        ///  Serial peripheral interface
        pub const SPI5 = extern struct {
            ///  control register 0
            CTL0: mmio.Mmio(packed struct(u32) {
                ///  Clock Phase Selection
                CKPH: u1,
                ///  Clock polarity Selection
                CKPL: u1,
                ///  Master Mode Enable
                MSTMOD: u1,
                ///  Master Clock Prescaler Selection
                PSC: u3,
                ///  SPI enable
                SPIEN: u1,
                ///  LSB First Mode
                LF: u1,
                ///  NSS Pin Selection In NSS Software Mode
                SWNSS: u1,
                ///  NSS Software Mode Selection
                SWNSSEN: u1,
                ///  Receive only
                RO: u1,
                ///  Data frame format
                FF16: u1,
                ///  CRC Next Transfer
                CRCNT: u1,
                ///  CRC Calculation Enable
                CRCEN: u1,
                ///  Bidirectional Transmit output enable
                BDOEN: u1,
                ///  Bidirectional enable
                BDEN: u1,
                padding: u16,
            }),
            ///  control register 1
            CTL1: mmio.Mmio(packed struct(u32) {
                ///  Rx buffer DMA enable
                DMAREN: u1,
                ///  Transmit Buffer DMA Enable
                DMATEN: u1,
                ///  Drive NSS Output
                NSSDRV: u1,
                reserved4: u1,
                ///  SPI TI Mode Enable
                TMOD: u1,
                ///  Error interrupt enable
                ERRIE: u1,
                ///  RX buffer not empty interrupt enable
                RBNEIE: u1,
                ///  Tx buffer empty interrupt enable
                TBEIE: u1,
                padding: u24,
            }),
            ///  status register
            STAT: mmio.Mmio(packed struct(u32) {
                ///  Receive Buffer Not Empty
                RBNE: u1,
                ///  Transmit Buffer Empty
                TBE: u1,
                ///  I2S channel side
                I2SCH: u1,
                ///  Transmission underrun error bit
                TXURERR: u1,
                ///  SPI CRC Error Bit
                CRCERR: u1,
                ///  SPI Configuration error
                CONFERR: u1,
                ///  Reception Overrun Error Bit
                RXORERR: u1,
                ///  Transmitting On-going Bit
                TRANS: u1,
                ///  Format Error
                FERR: u1,
                padding: u23,
            }),
            ///  data register
            DATA: mmio.Mmio(packed struct(u32) {
                ///  Data transfer register
                SPI_DATA: u16,
                padding: u16,
            }),
            ///  CRC polynomial register
            CPCPOLY: mmio.Mmio(packed struct(u32) {
                ///  CRC polynomial register
                CPR: u16,
                padding: u16,
            }),
            ///  RX CRC register
            RCRC: mmio.Mmio(packed struct(u32) {
                ///  RX CRC register
                RCR: u16,
                padding: u16,
            }),
            ///  TX CRC register
            TCRC: mmio.Mmio(packed struct(u32) {
                ///  Tx CRC register
                TCR: u16,
                padding: u16,
            }),
            ///  I2S control register
            I2SCTL: mmio.Mmio(packed struct(u32) {
                ///  Channel length (number of bits per audio channel)
                CHLEN: u1,
                ///  Data length to be transferred
                DTLEN: u2,
                ///  Idle state clock polarity
                CKPL: u1,
                ///  I2S standard selection
                I2SSTD: u2,
                reserved7: u1,
                ///  PCM frame synchronization mode
                PCMSMOD: u1,
                ///  I2S operation mode
                I2SOPMOD: u2,
                ///  I2S Enable
                I2SEN: u1,
                ///  I2S mode selection
                I2SSEL: u1,
                padding: u20,
            }),
            ///  I2S prescaler register
            I2SPSC: mmio.Mmio(packed struct(u32) {
                ///  Dividing factor for the prescaler
                DIV: u8,
                ///  Odd factor for the prescaler
                OF: u1,
                ///  I2S_MCK output enable
                MCKOEN: u1,
                padding: u22,
            }),
            reserved128: [92]u8,
            ///  Quad-SPI mode control register
            QCTL: mmio.Mmio(packed struct(u32) {
                ///  Quad-SPI mode enable
                QMOD: u1,
                ///  Quad-SPI mode read select
                QRD: u1,
                ///  Drive IO2 and IO3 enable
                IO23_DRV: u1,
                padding: u29,
            }),
        };

        ///  Universal synchronous asynchronous receiver transmitter
        pub const USART0 = extern struct {
            ///  Status register 0
            STAT0: mmio.Mmio(packed struct(u32) {
                ///  Parity error flag
                PERR: u1,
                ///  Frame error flag
                FERR: u1,
                ///  Noise error flag
                NERR: u1,
                ///  Overrun error
                ORERR: u1,
                ///  IDLE frame detected flag
                IDLEF: u1,
                ///  Read data buffer not empty
                RBNE: u1,
                ///  Transmission complete
                TC: u1,
                ///  Transmit data buffer empty
                TBE: u1,
                ///  LIN break detection flag
                LBDF: u1,
                ///  CTS change flag
                CTSF: u1,
                padding: u22,
            }),
            ///  Data register
            DATA: mmio.Mmio(packed struct(u32) {
                ///  Transmit or read data value
                DATA: u9,
                padding: u23,
            }),
            ///  Baud rate register
            BAUD: mmio.Mmio(packed struct(u32) {
                ///  Fraction part of baud-rate divider
                FRADIV: u4,
                ///  Integer part of baud-rate divider
                INTDIV: u12,
                padding: u16,
            }),
            ///  Control register 0
            CTL0: mmio.Mmio(packed struct(u32) {
                ///  Send break command
                SBKCMD: u1,
                ///  Receiver wakeup from mute mode
                RWU: u1,
                ///  Receiver enable
                REN: u1,
                ///  Transmitter enable
                TEN: u1,
                ///  IDLE line detected interrupt enable
                IDLEIE: u1,
                ///  Read data buffer not empty interrupt and overrun error interrupt enable
                RBNEIE: u1,
                ///  Transmission complete interrupt enable
                TCIE: u1,
                ///  Transmitter buffer empty interrupt enable
                TBEIE: u1,
                ///  Parity error interrupt enable
                PERRIE: u1,
                ///  Parity mode
                PM: u1,
                ///  Parity check function enable
                PCEN: u1,
                ///  Wakeup method in mute mode
                WM: u1,
                ///  Word length
                WL: u1,
                ///  USART enable
                UEN: u1,
                reserved15: u1,
                ///  Oversampling mode
                OVSMOD: u1,
                padding: u16,
            }),
            ///  Control register 1
            CTL1: mmio.Mmio(packed struct(u32) {
                ///  Address of the USART
                ADDR: u4,
                reserved5: u1,
                ///  LIN break frame length
                LBLEN: u1,
                ///  LIN break detection interrupt enable
                LBDIE: u1,
                reserved8: u1,
                ///  CK Length
                CLEN: u1,
                ///  Clock phase
                CPH: u1,
                ///  Clock polarity
                CPL: u1,
                ///  CK pin enable
                CKEN: u1,
                ///  STOP bits length
                STB: u2,
                ///  LIN mode enable
                LMEN: u1,
                padding: u17,
            }),
            ///  Control register 2
            CTL2: mmio.Mmio(packed struct(u32) {
                ///  Error interrupt enable
                ERRIE: u1,
                ///  IrDA mode enable
                IREN: u1,
                ///  IrDA low-power
                IRLP: u1,
                ///  Half-duplex selection
                HDEN: u1,
                ///  Smartcard NACK enable
                NKEN: u1,
                ///  Smartcard mode enable
                SCEN: u1,
                ///  DMA request enable for reception
                DENR: u1,
                ///  DMA request enable for transmission
                DENT: u1,
                ///  RTS enable
                RTSEN: u1,
                ///  CTS enable
                CTSEN: u1,
                ///  CTS interrupt enable
                CTSIE: u1,
                ///  One sample bit method enable
                OSB: u1,
                padding: u20,
            }),
            reserved28: [4]u8,
            ///  Guard time and prescaler register
            GP: mmio.Mmio(packed struct(u32) {
                ///  Prescaler value
                PSC: u8,
                ///  Guard time value in Smartcard mode
                GUAT: u8,
                padding: u16,
            }),
            reserved128: [96]u8,
            ///  Control register 3
            CTL3: mmio.Mmio(packed struct(u32) {
                ///  Receiver timeout enable
                RTEN: u1,
                ///  Smartcard auto-retry number
                SCRTNUM: u3,
                ///  Interrupt enable bit of receive timeout event
                RTIE: u1,
                ///  Interrupt enable bit of end of block event
                EBIE: u1,
                reserved8: u2,
                ///  RX pin level inversion
                RINV: u1,
                ///  TX pin level inversion
                TINV: u1,
                ///  Data bit level inversion
                DINV: u1,
                ///  Most significant bit first
                MSBF: u1,
                padding: u20,
            }),
            ///  Receiver timeout register
            RT: mmio.Mmio(packed struct(u32) {
                ///  Receiver timeout threshold
                RT: u24,
                ///  Block Length
                BL: u8,
            }),
            ///  Status register 1
            STAT1: mmio.Mmio(packed struct(u32) {
                reserved16: u16,
                ///  Busy flag
                BSY: u1,
                padding: u15,
            }),
            reserved192: [52]u8,
            ///  Coherence control register
            CHC: mmio.Mmio(packed struct(u32) {
                ///  Hardware flow control coherence mode
                HCM: u1,
                ///  Parity check coherence mode
                PCM: u1,
                ///  Break frame coherence mode
                BCM: u1,
                reserved8: u5,
                ///  Early parity error flag
                EPERR: u1,
                padding: u23,
            }),
        };

        ///  Ture random number generator
        pub const TRNG = extern struct {
            ///  Control register
            CTL: mmio.Mmio(packed struct(u32) {
                reserved2: u2,
                ///  TRNG enable bit
                TRNGEN: u1,
                ///  Interrupt bit
                IE: u1,
                padding: u28,
            }),
            ///  Status register
            STAT: mmio.Mmio(packed struct(u32) {
                ///  Random data ready status bit
                DRDY: u1,
                ///  Clock error current status
                CECS: u1,
                ///  Seed error current status
                SECS: u1,
                reserved5: u2,
                ///  Clock error interrupt flag
                CEIF: u1,
                ///  Seed error interrupt flag
                SEIF: u1,
                padding: u25,
            }),
            ///  data register
            DATA: mmio.Mmio(packed struct(u32) {
                ///  32-bit random data
                TRNDATA: u32,
            }),
        };

        ///  System configuration controller
        pub const SYSCFG = extern struct {
            ///  Configuration register 0
            CFG0: mmio.Mmio(packed struct(u32) {
                ///  Boot mode
                BOOT_MODE: u3,
                reserved8: u5,
                ///  FMC memory mapping swap
                FMC_SWP: u1,
                reserved10: u1,
                ///  EXMC memory mapping swap
                EXMC_SWP: u2,
                padding: u20,
            }),
            ///  Configuration register 1
            CFG1: mmio.Mmio(packed struct(u32) {
                reserved23: u23,
                ///  Ethernet PHY selection
                ENET_PHY_SEL: u1,
                padding: u8,
            }),
            ///  EXTI sources selection register 0
            EXTISS0: mmio.Mmio(packed struct(u32) {
                ///  EXTI 0 sources selection
                EXTI0_SS: u4,
                ///  EXTI 1 sources selection
                EXTI1_SS: u4,
                ///  EXTI 2 sources selection
                EXTI2_SS: u4,
                ///  EXTI 3 sources selection
                EXTI3_SS: u4,
                padding: u16,
            }),
            ///  EXTI sources selection register 1
            EXTISS1: mmio.Mmio(packed struct(u32) {
                ///  EXTI 4 sources selection
                EXTI4_SS: u4,
                ///  EXTI 5 sources selection
                EXTI5_SS: u4,
                ///  EXTI 6 sources selection
                EXTI6_SS: u4,
                ///  EXTI 7 sources selection
                EXTI7_SS: u4,
                padding: u16,
            }),
            ///  EXTI sources selection register 2
            EXTISS2: mmio.Mmio(packed struct(u32) {
                ///  EXTI 8 sources selection
                EXTI8_SS: u4,
                ///  EXTI 9 sources selection
                EXTI9_SS: u4,
                ///  EXTI 10 sources selection
                EXTI10_SS: u4,
                ///  EXTI 11 sources selection
                EXTI11_SS: u4,
                padding: u16,
            }),
            ///  EXTI sources selection register 3
            EXTISS3: mmio.Mmio(packed struct(u32) {
                ///  EXTI 12 sources selection
                EXTI12_SS: u4,
                ///  EXTI 13 sources selection
                EXTI13_SS: u4,
                ///  EXTI 14 sources selection
                EXTI14_SS: u4,
                ///  EXTI 15 sources selection
                EXTI15_SS: u4,
                padding: u16,
            }),
            reserved32: [8]u8,
            ///  I/O compensation control register
            CPSCTL: mmio.Mmio(packed struct(u32) {
                ///  I/O compensation cell enable
                CPS_EN: u1,
                reserved8: u7,
                ///  I/O compensation cell is ready or not
                CPS_RDY: u1,
                padding: u23,
            }),
        };
    };
};
