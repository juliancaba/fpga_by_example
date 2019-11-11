#ifndef WRAPPEROBJ_H
#define WRAPPEROBJ_H

#include "header.h"

#include <hls_stream.h>
#include "casting.h"

static struct headerStruct header;

#define OBJ_ID 2

#define DONE  1
#define RECONFIG  2

static hls::stream<unsigned int> bufferRESP;
static int _status = 0;

typedef struct{
  unsigned int addr;
  unsigned short areaID;
}PRbus;

/* static hls::stream<PRbus> bufferPR; */
static hls::stream<bool> bufferPRdone;


///////////////////////////////////////////////////////////////////////
//                 Function:   newObject
//////////////////////////////////////////////////////////////////////
#define ID_newObject 1

struct PARAM_newObject{
  unsigned int addr;
  unsigned short areaID;
}__attribute__((packed));

static struct PARAM_newObject args_newObject;

void wrapper_newObject(hls::stream<unsigned int> &src,
		       hls::stream<PRbus> &pr);
void readParameters_newObject(hls::stream<unsigned int> &src);
//void writeReturn_newObject();
//////////////////////////////////////////////////////////////////////


///////////////////////////////////////////////////////////////////////
//                 Function:   status
//////////////////////////////////////////////////////////////////////
#define ID_status 2
void wrapper_status(hls::stream<bool> &prDone);
//////////////////////////////////////////////////////////////////////




void wrapperAdmin(hls::stream<unsigned int> din,
		  hls::stream<unsigned int> dout,
		  hls::stream<PRbus> pr, hls::stream<bool> prDone);

void forward(hls::stream<unsigned int> &src, short size);

void buildResponse(hls::stream<unsigned int> &dst,
		   unsigned short objID, unsigned short size,
		   unsigned char flags);
void buildResponse(hls::stream<unsigned int> &dst,
		   unsigned short objID, unsigned short size,
		   unsigned char flags);
void getRequestHead(hls::stream<unsigned int> &src);

#endif
