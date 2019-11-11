PRJ=axi_memory_read_driver_v1
VERSION=2017_4

SRC_DIR = src
VHD_SRC = ../src/vhd


.PHONY: cpySRC



all: create
	$(RM) -rf tmp

cpySRC: 
	mkdir -p $(SRC_DIR) 
	cp $(VHD_SRC)/* $(SRC_DIR) 


create: create_$(VERSION).tcl
	make -f vivado.mk VERSION=$(VERSION) cpySRC
	vivado -mode batch -source $^
	cp component_$(VERSION).xml $(PRJ)/component.xml


test: create
	vivado tmp/tmp.xpr


clean:
	$(RM) -rf *~ tmp $(PRJ) *.log *.jou src
