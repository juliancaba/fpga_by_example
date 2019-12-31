#include "xaxidma.h"
#include "xparameters.h"
#include "xdebug.h"
#include "ff.h"


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



typedef struct _fileData{
    u8* mem_src;
    u8* mem_dst;
    int size;
} FileData;


FileData file_hello = {(u8*) RX_BUFFER_BASE, (u8*) TX_BUFFER_BASE, 10};


XAxiDma dma;
XAxiDma_Config CfgPtr_dma;
static FATFS fat_fs;


int mount_filesystem();
int read_file(char* path, FileData* file_data);
int initDMA(int ID, XAxiDma *AxiDma, XAxiDma_Config *CfgPtr);
int transferToDMA(XAxiDma *AxiDma, u32 *RxBuffer, u32 size);
int transferFromDMA(XAxiDma *AxiDma, u32 *TxBuffer, u32 size);
int check_data();


int main()
{
  int status;

  xil_printf("--- Start --- \r\n");
  xil_printf("\r\n mouting FAT filesytem \r\n");
  if (mount_filesystem() != XST_SUCCESS)
    return XST_FAILURE;
  
  if (read_file("hello.txt", &file_hello) != XST_SUCCESS)
    return XST_FAILURE;

  
  xil_printf("\r\n setting up the DMA peripheral \r\n");
  status = initDMA(XPAR_AXIDMA_0_DEVICE_ID, &dma, &CfgPtr_dma);
  if (status != XST_SUCCESS)
    return XST_FAILURE;

  xil_printf("\r\n initialize TxBuffer \r\n");
  for(int i=0; i != file_hello.size; i++){
    file_hello.mem_dst = -1;
  }
  
  Xil_DCacheFlushRange((UINTPTR) file_hello.mem_src, file_hello.size);

  xil_printf("\r\n Transfer From DMA \r\n");
  transferFromDMA(&dma, file_hello.mem_src, file_hello.size);

  xil_printf("\r\n Transfer to DMA \r\n");
  transferToDMA(&dma, file_hello.mem_dst, file_hello.size);

  xil_printf("\r\n Checking (Display file content) \r\n");
  for(int i=0; i != file_hello.size; i++)
    xil_printf("%c", *file_hello.mem_dst++);
    /* if (RxBuffer[i] =! TxBuffer[i]) */
    /*   xil_printf("Data error %d: RX %d - TX %d \r\n", i, RxBuffer[i], TxBuffer[i]); */
  
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


int transferToDMA(XAxiDma *AxiDma, u32 *TxBuffer, u32 size){
  int status;

  //DMa transfer for the first line
  status = XAxiDma_SimpleTransfer(AxiDma, (UINTPTR) TxBuffer, size, XAXIDMA_DEVICE_TO_DMA);
  if (status != XST_SUCCESS) {
    print("Error: Transfer To DMA\n");
    return XST_FAILURE;
  }

  while ((XAxiDma_Busy(AxiDma, XAXIDMA_DEVICE_TO_DMA)));
  return XST_SUCCESS;
}


int transferFromDMA(XAxiDma *AxiDma, u32 *RxBuffer, u32 size){
  int status;

  Xil_DCacheFlushRange((UINTPTR) RxBuffer, size);

  //DMa transfer for the first line
  status = XAxiDma_SimpleTransfer(AxiDma, (UINTPTR) RxBuffer, size, XAXIDMA_DMA_TO_DEVICE);
  if (status != XST_SUCCESS) {
    print("Error: Transfer From DMA\n");
    return XST_FAILURE;
  }

  while ((XAxiDma_Busy(AxiDma, XAXIDMA_DMA_TO_DEVICE)));
  return XST_SUCCESS;
}


int mount_filesystem() {
    TCHAR *Path = "0:/";
 
    if (f_mount(&fat_fs, Path, 1) != FR_OK) {
        xil_printf("mount failed\n\r");
        return XST_FAILURE;
    }
	return XST_SUCCESS;
}


int read_file(char* path, FileData* file_data){
    FIL fp;  
    unsigned int bytes_read;

    if (f_open(&fp, path, FA_READ) != FR_OK) {
        xil_printf("could not open the file\n\r");
        return XST_FAILURE;
    }

    file_data->size = f_size(&fp);
    f_lseek(&fp, 0);
    f_read(&fp, file_data->mem_src, file_data->size, &bytes_read);
    f_close(&fp);
    return XST_SUCCESS;
}

