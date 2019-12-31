#include "xaxidma.h"
#include "xparameters.h"
#include "xdebug.h"


#if (!defined(DEBUG))
extern void xil_printf(const char *format, ...);
#endif

#define DMA_DEV_ID		XPAR_AXIDMA_0_DEVICE_ID
#define N_DATA 256



#ifndef DDR_BASE_ADDR
#define MEM_BASE_ADDR		0x01000000
#else
#define MEM_BASE_ADDR		(DDR_BASE_ADDR + 0x1000000)
#endif

#define RX_BUFFER_BASE		(MEM_BASE_ADDR + 0x00300000)
#define TX_BUFFER_BASE		(MEM_BASE_ADDR + 0x00400000)


//u32 RxBuffer[N_PIXELS_FRAME];
u32 *RxBuffer = (u32 *)RX_BUFFER_BASE;
u32 *TxBuffer = (u32 *)TX_BUFFER_BASE;

XAxiDma dma;
XAxiDma_Config CfgPtr_0;

int initDMA(int ID, XAxiDma *AxiDma, XAxiDma_Config *CfgPtr);
int transferToDMA(XAxiDma *AxiDma, u32 *RxBuffer);
int transferFromDMA(XAxiDma *AxiDma, u32 *TxBuffer);
int check_data();


int main()
{
  int status;

  xil_printf("--- Start --- \r\n");
  xil_printf("\r\n setting up the DMA peripheral \r\n");
  status = initDMA(XPAR_AXIDMA_0_DEVICE_ID, &dma, &CfgPtr_0);
  if (status != XST_SUCCESS)
    return XST_FAILURE;

  xil_printf("\r\n initialize RxBuffer \r\n");
  for(int i=0; i != N_DATA; i++){
    RxBuffer[i] = i;
    TxBuffer[i] = -1;
  }
  
  Xil_DCacheFlushRange((UINTPTR) RxBuffer, N_DATA*sizeof(u32));

  xil_printf("\r\n Transfer From DMA \r\n");
  transferFromDMA(&dma, RxBuffer);

  xil_printf("\r\n Transfer to DMA \r\n");
  transferToDMA(&dma, TxBuffer);

  xil_printf("\r\n Checking \r\n");
  for(int i=0; i != N_DATA; i++)
    if (RxBuffer[i] =! TxBuffer[i])
      xil_printf("Data error %d: RX %d - TX %d \r\n", i, RxBuffer[i], TxBuffer[i]);
  
  xil_printf("--- Done --- \r\n");
  return XST_SUCCESS;
}


int initDMA(int ID, XAxiDma *AxiDma, XAxiDma_Config *CfgPtr){
  int status;

  CfgPtr = XAxiDma_LookupConfig( (ID) );
  if(!CfgPtr){
    print("Error looking for AXI DMA config\n\r");
    return XST_FAILURE;
  }
  status = XAxiDma_CfgInitialize(AxiDma,CfgPtr);
  if(status != XST_SUCCESS){
    print("Error initializing DMA\n\r");
    return XST_FAILURE;
  }
  //check for scatter gather mode
  if(XAxiDma_HasSg(AxiDma)){
    print("Error DMA configured in SG mode\n\r");
    return XST_FAILURE;
  }
  /* Disable interrupts, we use polling mode */
  XAxiDma_IntrDisable(AxiDma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);
  XAxiDma_IntrDisable(AxiDma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DMA_TO_DEVICE);

  // Reset DMA
  XAxiDma_Reset(AxiDma);
  while (!XAxiDma_ResetIsDone(AxiDma));

  return XST_SUCCESS;
}


int transferToDMA(XAxiDma *AxiDma, u32 *TxBuffer){
  int status;

  //DMa transfer for the first line
  status = XAxiDma_SimpleTransfer(AxiDma, (UINTPTR) TxBuffer, N_DATA*sizeof(u32), XAXIDMA_DEVICE_TO_DMA);
  if (status != XST_SUCCESS) {
    print("Error: Transfer To DMA\n");
    return XST_FAILURE;
  }

  while ((XAxiDma_Busy(AxiDma, XAXIDMA_DEVICE_TO_DMA)));
  return XST_SUCCESS;
}


int transferFromDMA(XAxiDma *AxiDma, u32 *RxBuffer){
  int status;

  Xil_DCacheFlushRange((UINTPTR) RxBuffer, N_DATA*sizeof(u32));

  //DMa transfer for the first line
  status = XAxiDma_SimpleTransfer(AxiDma, (UINTPTR) RxBuffer, N_DATA*sizeof(u32), XAXIDMA_DMA_TO_DEVICE);
  if (status != XST_SUCCESS) {
    print("Error: Transfer From DMA\n");
    return XST_FAILURE;
  }

  while ((XAxiDma_Busy(AxiDma, XAXIDMA_DMA_TO_DEVICE)));
  return XST_SUCCESS;
}

