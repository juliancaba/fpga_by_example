PRJ = blink_intr
BOARD = zcu104
SRC_FILES =

TCL_FILE = system.tcl

VIVADO = vivado -mode batch -source

TMP_FILES += *~ *.log *.jou
PRJ_FILES += *.cache *.hw *.ip_user_files *.srcs *.runs *.sdk *.sim *.xpr    

all: $(PRJ).xpr $(PRJ).sdk/app/Debug/app.elf run


$(PRJ).xpr: $(SRC_FILES) clean-all
	$(VIVADO) $(TCL_FILE) -tclargs $(PRJ)

$(PRJ).sdk/app/Debug/app.elf:
	xsct sw.tcl $(BOARD) $(PRJ)

run:
	xsct run.tcl $(BOARD) $(PRJ)


clean:clean-all

clean-all:
	rm -rf $(TMP_FILES) $(PRJ_FILES)
