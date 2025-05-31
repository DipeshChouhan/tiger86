const InstructionType = enum(u8) {
    ADD_00 = 0x00,
    ADD_01 = 0x01,
    ADD_02 = 0x02,
    ADD_03 = 0x03,
    ADD_04 = 0x04,
    ADD_05 = 0x05,

    PUSH_06 = 0x06,
    POP_07 = 0x07,
};

pub const Instruction = struct {
    instType: InstructionType,
};
