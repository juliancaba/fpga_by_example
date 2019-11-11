#include <stdio.h>
//#include "platform.h"
#include "xdevcfg.h"
#include "xparameters.h"
#include "xil_io.h"

#define CLIENT_HW_ADDR XPAR_AXI2FIFO_0_BASEADDR


int main()
{
	int Status;
	static XDcfg_Config *XDcfg_0;
	XDcfg DcfgInstance;
	XDcfg *DcfgInstPtr;


	//init_platform();
    xil_printf("Start PR Test\n\r");
    //init_platform();
    DcfgInstPtr = &DcfgInstance;
	XDcfg_0 = XDcfg_LookupConfig(XPAR_XDCFG_0_DEVICE_ID) ;
	Status =  XDcfg_CfgInitialize(DcfgInstPtr, XDcfg_0, XDcfg_0->BaseAddr);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}
    XDcfg_ClearControlRegister(DcfgInstPtr, XDCFG_CTRL_PCAP_PR_MASK);

    xil_printf("Deselect PCAP\n\r");

    //cleanup_platform();

    return 0;
}
