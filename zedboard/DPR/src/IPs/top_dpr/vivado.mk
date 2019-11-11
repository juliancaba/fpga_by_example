PRJ=top_dpr_v1

create:
	vivado -mode batch -source create.tcl

all: create
	$(RM) -rf tmp

test: create
	vivado tmp/tmp.xpr

clean:
	$(RM) -rf *~ tmp $(PRJ) *.log *.jou