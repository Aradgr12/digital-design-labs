#4bit alu 
## description: 
A combinational 4-bit Arithmetic Logic Unit written in Verilog.

##interface

###inputs

-`A[3:0]` - first unsigned operand
-`B[3:0]` - second unsigned operand
-`operation[1:0]` - select the alu operation

### outputs

-`result[3:0]` - operation reslt
-`carry` - carry out from addition
- `borrow` — indicates unsigned subtraction underflow
- `zero` — asserted when the result equals zero


## Operations

| operation | Function |
|---|---|
| `00` | ADD |
| `01` | OR  |
| `10` | AND |
| `11` | SUB | 
