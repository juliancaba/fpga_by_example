PRJ=axi_zipFactory_v1 fifo_zipFactory_v1
VERSION= 2017_4

SRC_DIR = src
FACTORY_VHD_SRC=../src/vhd
FACTORY_HLS_SRC=../src/hls
FACTORY_SIM_SRC=../src/testbench

.PHONY: genHLS cpySRC



all: create-axi create-fifo
	$(RM) -rf tmp

genHLS:
	@cd $(FACTORY_HLS_SRC) ;\
	make clean all; cd -

cpySRC: genHLS
	mkdir -p $(SRC_DIR) 
	cp $(FACTORY_VHD_SRC)/* $(SRC_DIR) 
	cp $(FACTORY_SIM_SRC)/* $(SRC_DIR) 
	cp $(FACTORY_HLS_SRC)/prj.hlsObj/solution/syn/vhdl/* $(SRC_DIR)

create-axi: create_axi.tcl
	make -f vivado.mk cpySRC
	vivado -mode batch -source $^ -tclargs $(VERSION)
	cp vcomponents/component_axi_$(VERSION).xml axi_zipFactory_v1/component.xml

create-fifo: create_fifo.tcl
	make -f vivado.mk cpySRC
	vivado -mode batch -source $^ -tclargs $(VERSION)
	cp vcomponents/component_fifo_$(VERSION).xml fifo_zipFactory_v1/component.xml


test-axi: create-axi
	vivado tmp/tmp.xpr

test-fifo: create-fifo
	vivado tmp/tmp.xpr


clean:
	$(RM) -rf *~ tmp $(PRJ) *.log *.jou src
