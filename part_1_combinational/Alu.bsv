typedef enum {
	Add,
	ShiftL,
	And,
	Not
} InstructionType deriving (Eq, FShow, Bits);

function Bit#(32) alu (InstructionType ins, Bit#(32) v1, Bit#(32) v2);
	Bit#(32) res = ?;
    case (ins) matches
        Add:   res = v1 + v2;
        ShiftL: res = v1 << v2;
        And:   res = v1 & v2;
        Not:   res = ~v1;
    endcase

	return res;
endfunction

