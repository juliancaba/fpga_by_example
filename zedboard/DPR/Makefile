PRJ = tmp
GEN_FOLDERS = Bitstreams Checkpoints Implementations Reports Synth sdk hd_visual

VERSION=2017_4

IP_DIR=ip_repo
IP_SRC_DIR=src/IPs



.PHONY: clean ip-repo


all: ip-repo build buildSDK

ip-repo:
	@mkdir -p $(IP_DIR) ;\
	make fifo-zipFactory VERSION=$(VERSION);\
# make axi2fifo VERSION=$(VERSION);
	make amrd VERSION=$(VERSION);\
	make top-dpr;\
	make factory-client 

amrd: 
	@cd $(IP_SRC_DIR)/axi_memory_read_driver/ip ;\
	make -f vivado.mk VERSION=$(VERSION) clean all; cd -;\
	cp -r $(IP_SRC_DIR)/axi_memory_read_driver/ip/axi_memory* $(IP_DIR)
	cp -r src/interfaces/mdrv* $(IP_DIR)

top-dpr:
	@cd $(IP_SRC_DIR)/top_dpr/ ;\
	make -f vivado.mk clean all; cd -;\
	cp -r $(IP_SRC_DIR)/top_dpr/top_dpr* $(IP_DIR)

fifo-zipFactory:
	@cd $(IP_SRC_DIR)/zipFactory/ip ;\
	make -f vivado.mk clean create-fifo VERSION=$(VERSION); cd -;\
	cp -r $(IP_SRC_DIR)/zipFactory/ip/fifo_zipFactory* $(IP_DIR)

factory-client:
	@cd $(IP_SRC_DIR)/factory_client/ ;\
	make -f vivado.mk clean all; cd -;\
	cp -r $(IP_SRC_DIR)/factory_client/factory* $(IP_DIR)

design.tcl:
	ln -sf versions/design_$(VERSION).tcl $@

sdk.tcl:
	cp versions/sdk_$(VERSION).tcl $@

build: build.tcl design.tcl
	vivado -mode batch -source $^

buildSDK: sdk.tcl
	vivado -mode batch -source TCL/sdk_export.tcl
	xsdk -batch -source $^

exportSDK: design.tcl 
	vivado -mode batch -source TCL/sdk_export.tcl
	vivado -mode batch -source TCL/sdk_launch.tcl


program: program.tcl
	vivado -mode batch -source $^


clean:
	$(RM) -rf *~ $(PRJ) $(GEN_FOLDERS) vivado* *.html *.xml
	$(RM) -rf *.log *.jou design.tcl sdk.tcl

cleanall: clean
	$(RM) -rf $(IP_DIR)
