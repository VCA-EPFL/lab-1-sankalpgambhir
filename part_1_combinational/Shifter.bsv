import Vector::*;

typedef Bit#(16) Word;

function Vector#(16, Word) naiveShfl(Vector#(16, Word) in, Bit#(4) shftAmnt);
    Vector#(16, Word) resultVector = in; 
    for (Integer i = 0; i < 16; i = i + 1) begin
        Bit#(4) idx = fromInteger(i);
        resultVector[i] = in[shftAmnt+idx];
    end
    return resultVector;
endfunction


function Vector#(16, Word) barrelLeft(Vector#(16, Word) in, Bit#(4) shftAmnt);
    Vector#(16, Word) res = in;

    if (shftAmnt[3] == 1) begin
        res = naiveShfl(res, 8);
    end
    if (shftAmnt[2] == 1) begin
        res = naiveShfl(res, 4);
    end
    if (shftAmnt[1] == 1) begin
        res = naiveShfl(res, 2);
    end
    if (shftAmnt[0] == 1) begin
        res = naiveShfl(res, 1);
    end

    return res;
endfunction
