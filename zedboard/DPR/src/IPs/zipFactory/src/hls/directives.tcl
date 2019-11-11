## wrapperAdmin directives
set_directive_interface -mode ap_ctrl_none "wrapperAdmin" 
set_directive_interface -mode ap_fifo "wrapperAdmin" din
set_directive_interface -mode ap_fifo "wrapperAdmin" dout
set_directive_interface -mode ap_fifo "wrapperAdmin" pr
set_directive_interface -mode ap_fifo "wrapperAdmin" prDone
set_directive_dataflow "wrapperAdmin"
config_dataflow -default_channel fifo -fifo_depth 16
set_directive_inline "buildResponseHead"
set_directive_inline "buildResponse"


## Functions directives
## Directives of admin function
set_directive_inline -off "forward"
set_directive_inline "newObject"
set_directive_inline "wrapper_newObject"
set_directive_inline "readParameters_newObject"
#set_directive_inline "writeReturn_newObject"

set_directive_inline "wrapper_status"