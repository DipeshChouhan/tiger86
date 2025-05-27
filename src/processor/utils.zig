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
