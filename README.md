FPGA-based examples for Xilinx devices
===

You must clone the _xilinx-tcl_ repo from juliancaba account of GitHub to automatically synthesize each project, you can also do it by hand.

(All examples have been developed under GNU/Linux and automated with Make and TCL scripts)


Zedboard
=======
 * helloWorld-tcl: Hello World (only vhdl sources)
 * helloWorld_xilinx-tcl: Hello World (only vhdl sources) with xilinx-tcl tool
 * dma: Transfer data from memory (_addr1_) to an FIFO and from the FIFO to the memory (_addr2_). Then it checks the transferred data
 * DPR: Example of Dynamic Partial Reconfiguration (led shift: right or left)
 * sd: Transfer data from SD to a DMA (_addr1_), DMA to FIFO and FIFO to DMA (_addr2_)
 

ZCU104
=======
 * blink_intr: LED shifter that is interrupted when the top left button is pressed (all LEDs blinks)

