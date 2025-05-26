// A IBM PS/2 Model 30 emulator

const std = @import("std");

pub fn main() !void {
    const stdout = std.io.getStdOut().writer();
    try stdout.print("Tiger86 is an IBM PS/2 Model 30 emulator.\n", .{});
}
