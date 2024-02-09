## PIPELINED MIPS 32-BIT PROCESSOR USING VERILOG
Description:
This project is the implementation of a 32-bit MIPS processor, employing the Verilog (hardware description language), while adhering to the pipelined architecture with five distinct stages:
	•	Instruction Fetch (IF): In this stage, the processor retrieves the next instruction from memory using the program counter (PC). The fetched instruction is stored in the instruction register (IR).
	•	Instruction Decode (ID): Here, the instruction in the IR is decoded, and the necessary control signals are generated. The opcode is identified, and the source and destination registers are determined based on the instruction type.
	•	Execution (EX): This stage involves performing the operation specified by the instruction. The ALU executes arithmetic and logical operations on the operands obtained from the register file (RF) or immediate values. Branch addresses are calculated, and memory addresses are computed.
	•	Memory Access (MEM): If the instruction involves memory access (load or store), this stage handles the interaction with data memory. The required data is either read from memory (load) or written to memory (store).
	•	Write Back (WB): The results of the operation are written back to the RF. If the instruction modifies a register, the value is written to the destination register. If the instruction involves a branch, the PC is updated with the calculated branch address.
Processor Specifications:
	•	Instruction Set Architecture (ISA): MIPS32
	•	Word Size: 32 bits
	•	Data Memory Size: 
	•	Pipeline Stages: 5 (IF, ID, EX, MEM, WB)
	•	Instruction Types Supported: R-type, I-type, J-type (details in the next section)
Instruction Types and Details:
R-type Instructions:
	•	Three operands: two source registers and one destination register.
	•	Used for arithmetic, logical, and shift operations.
	•	Examples: add, sub, and, or, eor
	•	
I-type Instructions:
	•	Two operands: one source register and one immediate operand (embedded in the instruction).
	•	Used for loading, storing, branching, and immediate arithmetic/logical operations.
	•	Examples: lw, sw,
J-type Instructions:
	•	One operand: a jump address.
	•	Used for unconditional jumps and subroutine calls.
	•	Examples: j
Comprehensive List of Instructions:
For a complete listing of MIPS32 instructions and their details, refer to the MIPS32 Instruction Set Architecture (ISA) documentation
Pipeline Stages:
	1	IF:
	◦	Fetch the instruction from memory using the PC.
	◦	Increment the PC for the next instruction.
	2	ID:
	◦	Decode the instruction in the IR.
	◦	Determine the opcode, operands, and control signals.
	◦	Read operands from the RF.
	3	EX:
	◦	Perform the operation specified by the instruction in the ALU.
	◦	Calculate memory addresses or branch addresses.
	4	MEM:
	◦	Access data memory if the instruction involves a load or store.
	◦	Read data from memory (load) or write data to memory (store).
	5	WB:
	◦	Write the result of the operation back to the RF.
	◦	Update the PC with the branch address if the instruction is a branch.
Verilog Implementation:
The Verilog implementation of the pipelined MIPS processor would involve modules for each stage, along with interconnections and control logic. Each module would be responsible for its specific functionality within the pipeline.