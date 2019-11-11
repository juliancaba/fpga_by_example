PRJ = prj.hlsObj

.PHONY: all clean export


all: clean export


export:
	vivado_hls script.tcl


clean:
	$(RM) -rf *~ *.log $(PRJ)
