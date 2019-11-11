#include "wrapperAdmin.h"



void
forward(hls::stream<unsigned int> &src, short size)
{
  short it=0;
  while(it != size){
    src.read();
    it += 1;
  }
}


void
getRequestHead(hls::stream<unsigned int> &src)
{
  int words32[2];

  for(int it=0; it != 2; it++)
    words32[it] = src.read();

  header.nodeID = (words32[0] >> 24) & 0xFF;
  header.objectID = (words32[0] >> 16) & 0xFF;
  header.methodID = (words32[0] >> 8) & 0xFF;
  header.flags = words32[0] & 0xFF;
  header.cb = (words32[1] >> 16) & 0xFFFF;
  header.size = words32[1] & 0xFFFF;
}


void
buildResponse(hls::stream<unsigned int> &dst,
	      unsigned short objID, unsigned short size,
	      unsigned char flags)
{
  int words32;

  words32 = (header.cb<<16) | (header.methodID<<8) | flags;
  dst.write(words32);
  if(flags & FLAG_HAS_PAYLOAD){
    words32 = (objID<<16) | size;
    dst.write(words32);
    while (!bufferRESP.empty())
      dst.write(bufferRESP.read());
  }
}


// Redirect to adminPR
short
responseAdminPR(hls::stream<bool> &prDone)
{
  bool read = prDone.read();
  if (read)
    return 1;
  else
    return 0;
}

void
newObject(hls::stream<PRbus> &pr, int addr, short areaID)
{
  PRbus aux;
  aux.areaID = areaID;
  aux.addr = addr;
  pr.write(aux);
}



///////////////////////////////////////////////////////////////////////
//                  Function:   newObject
//////////////////////////////////////////////////////////////////////
void
wrapper_newObject(hls::stream<unsigned int> &src,
		  hls::stream<PRbus> &pr)
{
  readParameters_newObject(src);
  newObject(pr, args_newObject.addr, args_newObject.areaID);
  _status = RECONFIG;
}


void
readParameters_newObject(hls::stream<unsigned int> &src)
{
  int words32[2];

  for(int it=0; it != 2; it++)
    words32[it] = src.read();
  
  unsigned char *ptr= (unsigned char*)words32;
  args_newObject.addr = to_int(*ptr++,*ptr++,*ptr++,*ptr++);
  short padding = to_short(*ptr++,*ptr++);
  args_newObject.areaID = to_short(*ptr++,*ptr++);
}
///////////////////////////////////////////////////////////////////////




///////////////////////////////////////////////////////////////////////
//                  Function:   status
//////////////////////////////////////////////////////////////////////
void
wrapper_status(hls::stream<bool> &prDone)
{
  bool aux = false;
  prDone.read_nb(aux);
  if (aux)
    _status = DONE;
  bufferRESP.write(_status);
}
///////////////////////////////////////////////////////////////////////



void
wrapperAdmin(hls::stream<unsigned int> din,
	     hls::stream<unsigned int> dout,
	     hls::stream<PRbus> pr, hls::stream<bool> prDone)
{
  // head
  getRequestHead(din);
      
  if (OBJ_ID == header.objectID){
    if (ID_newObject == header.methodID){
      buildResponse(dout, OBJ_ID, 0, 
		    FLAG_RESPONSE|FLAG_OK);
      wrapper_newObject(din, pr);
    }
    else{
      if (ID_status == header.methodID){
	wrapper_status(prDone);
	buildResponse(dout, OBJ_ID, 1,
		      FLAG_HAS_PAYLOAD|FLAG_RESPONSE|FLAG_OK);
      }
      else{
	forward(din, header.size);
	buildResponse(dout, OBJ_ID, 0, 
		      FLAG_RESPONSE|FLAG_FAIL);
      }
    }
  }
  else{
    forward(din, header.size);
    buildResponse(dout, NULL_OBJ, 0,
		  FLAG_RESPONSE|FLAG_FAIL);
  }
}



