// The InstructionName_hex is used so that it can be reference in 8086 family user manual Table 4-13 Machine Instruction Decoding Guide
const Biu = @import("biu.zig").Biu;
const Instruction = @import("instruction.zig").Instruction;
const InstType = enum(u8) {
    ADD_00 = 0x00,
    ADD_01 = 0x01,
    ADD_02 = 0x02,
    ADD_03 = 0x03,
    ADD_04 = 0x04,
    ADD_05 = 0x05,

    PUSH_06 = 0x06,
    POP_07 = 0x07,
};

const Decoder = struct {
    biu: *Biu, // a pointer to bus interface unit

    fn decode(self: *Decoder, inst: *Instruction) void {}
};
