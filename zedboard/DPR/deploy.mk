PARTIAL_BITSTREAMS=reference_pblock_rm_leds_partial cfg0_pblock_rm_leds_partial
BITSTREAMS_DIR=Bitstreams

WRITE_TOOL_DIR=../../write_factory_bitstreams
WRITE_TOOL=$(WRITE_TOOL_DIR)/write_factory_bitstreams

VERSION=2017_4

all: build-partial-bitstreams program deploy

$(WRITE_TOOL):
	@cd $(WRITE_TOOL_DIR) ;\
	make; cd -

build-partial-bitstreams: $(WRITE_TOOL)
	@for i in $(PARTIAL_BITSTREAMS) ; do \
	  $(WRITE_TOOL) -z $(BITSTREAMS_DIR)/$$i.bit $(BITSTREAMS_DIR)/factory_$$i.bit ;\
	done

program: program.tcl
	vivado -mode batch -source $^

ifeq ($(VERSION), 2015_4)
deploy: xmd.tcl
	xmd -tcl $^
else
deploy: xsdb.tcl
	xsdb $^
endif

clean:
	$(RM) -rf $(BITSTREAMS_DIR)/factory_*

cleanall: clean
	@cd $(WRITE_TOOL_DIR) ;\
	make clean; cd -
