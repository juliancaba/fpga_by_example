OUTPUT_DIR=output_test
VIVADO_FLAGS=-mode batch


all: synthesis program

synthesis: run.tcl
	vivado $(VIVADO_FLAGS) -source $^

program: program.tcl
	vivado $(VIVADO_FLAGS) -source $^


clean:
	$(RM) -rf vivado* *~ $(OUTPUT_DIR) *.html *.xml