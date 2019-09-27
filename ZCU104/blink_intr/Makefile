VERSION=2018.3



.PHONY: clean


all: create_synth_project exportSDK launch_xsdk_gui 
project: create_project launch_vivado_gui

build.tcl:
	cp -r ../../common/TCL_nodpr_v1/* .

create_project: build.tcl create.tcl
	vivado -mode batch -source $^ -tclargs $(VERSION) "nosynth"

create_synth_project: build.tcl create.tcl
	vivado -mode batch -source $^ -tclargs $(VERSION) "synth"

exportSDK: sdk.tcl
	$(RM) -rf sdk
	vivado -mode batch -source TCL/sdk_export.tcl -tclargs $(VERSION)
	xsdk -batch -source $^

launch_vivado_gui:
	vivado tmp/tmp.xpr

launch_xsdk_gui:
	xsdk -workspace tmp/sdk

clean:
	$(RM) -rf *~ $(PRJ) vivado* *.html *.xml
	$(RM) -rf *.log *.jou tmp build.tcl TCL sdk

