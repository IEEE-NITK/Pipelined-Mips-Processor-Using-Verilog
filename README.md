## PIPELINED MIPS 32-BIT PROCESSOR USING VERILOG

**Description:**
This project implements a 32-bit MIPS processor using Verilog, following a pipelined architecture with five stages:

1. **Instruction Fetch (IF):**
   - Retrieves the next instruction from memory using the program counter (PC).
   - Stores the fetched instruction in the instruction register (IR).

2. **Instruction Decode (ID):**
   - Decodes the instruction in the IR.
   - Generates necessary control signals.
   - Identifies the opcode and determines source/destination registers.

3. **Execution (EX):**
   - Performs the operation specified by the instruction.
   - ALU executes arithmetic and logical operations.
   - Calculates branch addresses and memory addresses.

4. **Memory Access (MEM):**
   - Handles memory access if the instruction involves it (load or store).
   - Reads from or writes to data memory.

5. **Write Back (WB):**
   - Writes the operation results back to the register file (RF).
   - Updates the PC with the branch address if applicable.

**Processor Specifications:**
- **Instruction Set Architecture (ISA):** MIPS32
- **Word Size:** 32 bits
- **Pipeline Stages:** 5 (IF, ID, EX, MEM, WB)
- **Instruction Types Supported:** R-type, I-type, J-type

**Instruction Types and Details:**

**R-type Instructions:**
- Three operands: two source registers and one destination register.
- Used for arithmetic, logical, and shift operations.
- Examples: add, sub, and, or, eor

**I-type Instructions:**
- Two operands: one source register and one immediate operand.
- Used for loading, storing, branching, and immediate arithmetic/logical operations.
- Examples: lw, sw

**J-type Instructions:**
- One operand: a jump address.
- Used for unconditional jumps and subroutine calls.
- Examples: j

**Comprehensive List of Instructions:**
For a complete listing of MIPS32 instructions and their details, refer to the MIPS32 Instruction Set Architecture (ISA) documentation.

**Pipeline Stages:**

1. **IF:**
   - Fetch the instruction from memory using the PC.
   - Increment the PC for the next instruction.

2. **ID:**
   - Decode the instruction in the IR.
   - Determine the opcode, operands, and control signals.
   - Read operands from the RF.

3. **EX:**
   - Perform the operation specified by the instruction in the ALU.
   - Calculate memory addresses or branch addresses.

4. **MEM:**
   - Access data memory if the instruction involves a load or store.
   - Read data from memory (load) or write data to memory (store).

5. **WB:**
   - Write the result of the operation back to the RF.
   - Update the PC with the branch address if the instruction is a branch.

**Verilog Implementation:**
The Verilog implementation of the pipelined MIPS processor would involve modules for each stage, along with interconnections and control logic. Each module would be responsible for its specific functionality within the pipeline.
