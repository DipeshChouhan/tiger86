// The InstructionName_hex is used so that it can be reference in 8086 family user manual Table 4-13 Machine Instruction Decoding Guide
const Biu = @import("biu.zig").Biu;
const insts = @import("instruction.zig");
const Instruction = insts.Instruction;

const Decoder = struct {
    biu: *Biu, // a pointer to bus interface unit

    // decode the instruction
    // param inst: a pointer to empty Instruction struct which get's filled by the decoder
    fn decode(self: *Decoder, inst: *Instruction) void {
        const opcode = self.*.biu.fetch();

        switch (opcode) {
            .ADD_00 => {},
        }
    }
};
