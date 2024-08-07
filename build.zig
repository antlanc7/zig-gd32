const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = std.zig.CrossTarget{
        .cpu_arch = .thumb,
        .cpu_model = .{ .explicit = &std.Target.arm.cpu.cortex_m4 },
        .os_tag = .freestanding,
        .abi = .none,
    };

    const elf = b.addExecutable(.{
        .name = "main",
        .root_source_file = b.path("src/startup.zig"),
        .target = b.resolveTargetQuery(target),
        .optimize = b.standardOptimizeOption(.{ .preferred_optimize_mode = .ReleaseSmall }),
    });
    elf.setLinkerScript(b.path("linker.ld"));
    const install_elf_step = b.addInstallBinFile(elf.getEmittedBin(), "main.elf");

    // add a CLI option to enable asm output: -Dasm
    const asm_emit = b.option(bool, "asm", "enable asm output") orelse false;
    const install_asm_step = b.addInstallBinFile(elf.getEmittedAsm(), "main.s");
    install_asm_step.step.dependOn(&install_elf_step.step);

    const bin_step = elf.addObjCopy(.{ .format = .bin });
    if (asm_emit) {
        bin_step.step.dependOn(&install_asm_step.step);
    } else {
        bin_step.step.dependOn(&install_elf_step.step);
    }
    const install_bin_step = b.addInstallBinFile(bin_step.getOutputSource(), "main.bin");
    install_bin_step.step.dependOn(&bin_step.step);
    b.default_step.dependOn(&install_bin_step.step);

    const flash_cmd = b.addSystemCommand(&.{
        "st-flash",
        "write",
        b.getInstallPath(install_bin_step.dir, install_bin_step.dest_rel_path),
        "0x8000000",
    });
    flash_cmd.step.dependOn(&install_bin_step.step);
    b.step("flash", "Flash and run the app on your GD32F4xx using st-flash utility").dependOn(&flash_cmd.step);
}
