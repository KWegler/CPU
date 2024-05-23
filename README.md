# CPU
ELEC 5200 - Computer Architecture and Design
/*-----------------------------------------*/
So I made a mistake when creating my files originally, and that was choosing to create my files as a .sv (System Verilog) instead of .v (Verilog).
This resulted in test benches being significantly more challenging down the line and forced me to go into the file properties and restructure my code so it would function as verilog code rather than system verilog.
So although the files are listed as ".sv", they will perform as ".v" if used directly in Xilinx, and the code is written in the form of ".v" if copied directly.
/*-----------------------------------------*/
This course focused on the creation of a Computer Processing Unit (CPU) from the ground up. I created all of the code and assigned each of the 4-bit opcode values myself. There was no basis when developing my code, but there are similarities to RISC-V as it is the language covered in this class as an example. I also took a little bit of a strange route in the implementation of a "bookmark" (BM) function, which is utilized when doing branch checks or freely jumping from one location in the code to another. I'm very happy with how this project turned out as it truly felt like a "capstone" project built around the knowledge acquired over the past years.
My code is functional, it has been extensively tested, and the results prove my understanding of Verilog and coding structures. There were several problems I was met with which I successfully pushed through and even later helped my peers overcome regarding this project.
