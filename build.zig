const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});

    const optimize = b.standardOptimizeOption(.{});

    const exe_mod = b.createModule(.{
        .root_source_file = b.path("src/main.zig"),
        .target = target,
        .optimize = optimize,
    });

    const exe = b.addExecutable(.{
        .name = "tiger86",
        .root_module = exe_mod,
    });

    b.installArtifact(exe);

    const run_exe = b.addRunArtifact(exe);

    const run_step = b.step("run", "Run the app");
    run_step.dependOn(&run_exe.step);

    const processor_utils_tests = b.addTest(.{
        .root_source_file = b.path("src/processor/utils.zig"),
        .target = target,
    });

    const run_processor_utils_tests = b.addRunArtifact(processor_utils_tests);

    const test_step = b.step("test", "Run unit tests");
    test_step.dependOn(&run_processor_utils_tests.step);
}
