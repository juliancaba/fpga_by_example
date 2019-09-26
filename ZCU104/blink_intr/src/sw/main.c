/*
 * Author: Julian Caba
 * main.c: simple test application
 *
 */

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xil_io.h"
#include "xscugic.h"
#include "xparameters.h"



XScuGic InterruptController; /* Instance of the Interrupt Controller */
static XScuGic_Config *GicConfig;/* The configuration parameters of the controller */


/* Interrupt Handler (ISR of Button)*/
void button_InterruptHandler()
{
  print(" ISR button\n\r");
  char it=0;
  while (it!=5){
    Xil_Out32(0xA0000000, 0x0);
    sleep(1);
    Xil_Out32(0xA0000000, 0xF);
    sleep(1);
    it++;
  }
}


int SetUpInterruptSystem(XScuGic *XScuGicInstancePtr)
{
  /*
   * Connect the interrupt controller interrupt handler to the hardware
   * interrupt handling logic in the ARM processor.
   */
  Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
			       (Xil_ExceptionHandler) XScuGic_InterruptHandler,
			       XScuGicInstancePtr);
  /*
   * Enable interrupts in the ARM
   */
  Xil_ExceptionEnable();
  return XST_SUCCESS;
}


int ScuGicInterrupt_Init(u16 DeviceId)
{
  int Status;

  /*
   * Initialize the interrupt controller driver so that it is ready to
   * use.
   * */
  GicConfig = XScuGic_LookupConfig(DeviceId);
  if (NULL == GicConfig)
    return XST_FAILURE;

  Status = XScuGic_CfgInitialize(&InterruptController, GicConfig, GicConfig->CpuBaseAddress);
  if (Status != XST_SUCCESS)
    return XST_FAILURE;

  /*
   * Setup the Interrupt System
   * */
  Status = SetUpInterruptSystem(&InterruptController);
  if (Status != XST_SUCCESS)
    return XST_FAILURE;

  /*
   * Connect a device driver handler that will be called when an
   * interrupt for the device occurs, the device driver handler performs
   * the specific interrupt processing for the device
   */
  int null;
  Status = XScuGic_Connect(&InterruptController,
			   XPAR_FABRIC_PBUTTON_INTR,
			   (Xil_ExceptionHandler)button_InterruptHandler, &null);
  if (Status != XST_SUCCESS)
    return XST_FAILURE;

  /*
   * Enable the interrupt for the device and then cause (simulate) an
   * interrupt so the handlers will be called
   */
  XScuGic_Enable(&InterruptController, XPAR_FABRIC_PBUTTON_INTR);


  return XST_SUCCESS;
}



int main()
{
  init_platform();

  if(ScuGicInterrupt_Init(XPAR_SCUGIC_0_DEVICE_ID) !=XST_SUCCESS)
    print(" :( SCUGIC INIT FAILED \n\r");

  print("SCUGIC configured\n\r");

  char value = 0;
  while(1){
    Xil_Out32(0xA0000000, value);
    sleep(1);
    value++;
  }

  cleanup_platform();
  return 0;
}
