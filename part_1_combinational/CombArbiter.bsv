import Vector::*;

typedef struct {
 Bool valid;
 Bit#(31) data;
 Bit#(4) index;
} ResultArbiter deriving (Eq, FShow);

function ResultArbiter arbitrate(Vector#(16, Bit#(1)) ready, Vector#(16, Bit#(31)) data);
	ResultArbiter res =  ResultArbiter{valid: False, data : ?, index: ?};

	for(Integer i = 0; i < 16; i = i + 1) begin
		if (ready[i] == 1) begin
			res = ResultArbiter{valid: True, data: data[i], index: fromInteger(i)};
		end
	end

	return res;

endfunction

