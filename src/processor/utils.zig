// TODO: Test the functions for correctness
const mask: u16 = 1;
const FlagsType = enum {
    CF,
    PF,
    AF,
    ZF,
    SF,
    TF,
    IF,
    DF,
    OF,
};

pub inline fn flagsClearAll(flags: *u16) void {
    flags.* = 0;
}

pub inline fn flagsClear(comptime flag: FlagsType, flags: *u16) void {
    switch (flag) {
        .CF => flags.* &= ~mask,
        .PF => flags.* &= ~(mask << 2),
        .AF => flags.* &= ~(mask << 4),
        .ZF => flags.* &= ~(mask << 6),
        .SF => flags.* &= ~(mask << 7),
        .TF => flags.* &= ~(mask << 8),
        .IF => flags.* &= ~(mask << 9),
        .DF => flags.* &= ~(mask << 10),
        .OF => flags.* &= ~(mask << 11),
    }
}

pub inline fn flagsSet(comptime flag: FlagsType, flags: *u16) void {
    switch (flag) {
        .CF => flags.* |= mask,
        .PF => flags.* |= mask << 2,
        .AF => flags.* |= mask << 4,
        .ZF => flags.* |= mask << 6,
        .SF => flags.* |= mask << 7,
        .TF => flags.* |= mask << 8,
        .IF => flags.* |= mask << 9,
        .DF => flags.* |= mask << 10,
        .OF => flags.* |= mask << 11,
    }
}

const std = @import("std");

// write a test for flagsClear function
test "flagsClear" {
    var flags: u16 = 0b1111_1111_1111_1111;
    flagsClear(.CF, &flags);
    try std.testing.expectEqual(flags, 0b1111_1111_1111_1110);

    flagsClear(.PF, &flags);
    try std.testing.expectEqual(flags, 0b1111_1111_1111_1010);

    flagsClear(.AF, &flags);
    try std.testing.expectEqual(flags, 0b1111_1111_1110_1010);

    flagsClear(.OF, &flags);
    try std.testing.expectEqual(flags, 0b1111_0111_1110_1010);
}

// write a test for flagsSet function

test "flagsSet" {
    var flags: u16 = 0b0000_0000_0000_0000;
    flagsSet(.CF, &flags);
    try std.testing.expectEqual(flags, 0b0000_0000_0000_0001);

    flagsSet(.PF, &flags);
    try std.testing.expectEqual(flags, 0b0000_0000_0000_0101);

    flagsSet(.AF, &flags);
    try std.testing.expectEqual(flags, 0b0000_0000_0001_0101);

    flagsSet(.OF, &flags);
    try std.testing.expectEqual(flags, 0b0000_1000_0001_0101);

    flagsSet(.ZF, &flags);
    try std.testing.expectEqual(flags, 0b0000_1000_0101_0101);
}
