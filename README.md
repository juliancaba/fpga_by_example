FPGA-based examples for Xilinx devices
=====

You must clone the _xilinx-tcl_ repo from juliancaba account of GitHub to automatically synthesize each project, you can also do it by hand.

(All examples have been developed under GNU/Linux and automated with Make and TCL scripts)


Zedboard
=======
 * helloWorld: Hello World (only vhdl sources)
 * dma: Transfer data from memory (addr1) to an FIFO and from the FIFO to the memory (addr2). Then it checks the transferred data
 * DPR: Example of Dynamic Partial Reconfiguration (led shift: right or left)
 

ZCU104
=======
 * blink_intr: LED shifter that is interrupted when the top left button is pressed (all LEDs blinks)

