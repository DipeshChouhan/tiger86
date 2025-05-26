// A IBM PC emulator

const std = @import("std");

pub fn main() !void {
    const stdout = std.io.getStdOut().writer();
    try stdout.print("Tiger86 is an IBM PC emulator.\n", .{});
}
