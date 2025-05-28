// A IBM PS/2 Model 30 emulator

const std = @import("std");
const utils = @import("processor/utils.zig");

pub fn main() !void {
    const stdout = std.io.getStdOut().writer();
    try stdout.print("Tiger86 is an IBM PS/2 Model 30 emulator.\n", .{});

    var flags: u16 = 1;

    utils.flagsClearAll(&flags);
    try stdout.print("Flags: {d}\n", .{flags});
}
