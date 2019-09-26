PRJ = blink_intr

VERSION=2018.3



.PHONY: clean


all: create_project launch_gui


create_project: create.tcl
	vivado -mode batch -source $^ -tclargs $(VERSION)

launch_gui:
	vivado tmp/tmp.xpr

clean:
	$(RM) -rf *~ $(PRJ) vivado* *.html *.xml
	$(RM) -rf *.log *.jou tmp

