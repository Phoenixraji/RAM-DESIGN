# RAM-DESIGN

*COMPANY*: CODTECH IT SOLUTIONS

*NAME*: RAJALAKSHMI C  

*INTERN ID: CT4MVRK

*DOMAIN*: VLSI

*DURATION*: 4 MONTHS

*MENTOR*: NEELA SANTHOSH

**DESCRIPTION**
Description of Synchronous RAM Design and Simulation
As part of the VLSI internship at CodTech, this task involved designing a simple synchronous RAM module using Verilog. The goal was to implement memory with read and write operations that function on the rising edge of a clock signal, and to demonstrate its functionality through simulation.

🔧 RAM Design Overview
The RAM module has the following characteristics:

Inputs:
clk: Clock signal
we: Write Enable (1 for write, 0 for read)
addr: 4-bit address input (supports 16 memory locations)
din: 8-bit data input (for writing data)

Output:
dout: 8-bit data output (for reading data)

Memory Array:
A 16x8-bit memory array is declared using:
reg [7:0] mem [15:0];

Behavior:
On every positive clock edge:
If we = 1, it writes din to mem[addr]
If we = 0, it reads from mem[addr] into dout
This makes it a synchronous RAM, meaning all operations are driven by the clock signal.

🧪 Testbench Overview
The testbench simulates the RAM to verify both write and read operations:
A clock signal toggles every 5ns using always #5 clk = ~clk;
Two write operations are performed:
0xAA is written to address 3
0x55 is written to address 5
Then, two read operations are tested:
Reading from address 3 (expected output: 0xAA)
Reading from address 5 (expected output: 0x55)
The $display statements print results in the simulation console.
To visualize waveforms, $dumpfile("dump.vcd") and $dumpvars(0, RAM_tb) generate a VCD file that can be viewed in EPWave on EDA Playground or GTKWave locally.

🛠️ Tools Used: EDA Playground (Icarus Verilog)
The entire design and simulation were tested using EDA Playground, a cloud-based HDL simulator that supports:

Verilog and SystemVerilog
Multiple simulators (Icarus Verilog, ModelSim, etc.)

EPWave for waveform viewing
For this project, Icarus Verilog was used due to its compatibility with the Verilog-2005 standard and ability to generate waveform files easily. The simulation output matched expectations, confirming correct read/write behavior of the RAM.

✅ Conclusion
This task successfully demonstrates the creation of a synchronous RAM module and verifies its functionality through simulation. It enhanced understanding of memory design and clocked behavior in digital systems using Verilog. The use of EDA Playground allowed efficient simulation and waveform analysis, helping bridge the gap between theoretical learning and practical digital design skills.

**OUTPUT**
![Image](https://github.com/user-attachments/assets/fe32d985-de3d-4407-b17e-8b5384cf665e)[](url)
