// Execution unit of 8086 processor
pub const Eu = struct {
    // general registers
    ax: u16,
    bx: u16,
    cx: u16,
    dx: u16,
    sp: u16,
    bp: u16,
    si: u16,
    di: u16,
    flags: u16,
};
