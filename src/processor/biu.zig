// Bus interface unit (BIU) of 8086 processor

pub var Biu = struct {

    // segment registers
    cs: u16,
    ds: u16,
    ss: u16,
    es: u16,

    // instruction pointer
    ip: u16,

    // 20bit address bus
    add_bus: u32,

    // 6 byte instruction queue
    inst_queue: [6]u8,
    inst_queue_len: i32,
};
