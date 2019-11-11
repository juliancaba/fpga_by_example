#ifndef HEADER_H
#define HEADER_H

#include "flag_codes.h"


const unsigned char BROADCAST = 0xFF;

const unsigned char NULL_OBJ = 0x0;

struct headerStruct{
  /* ap_int<12> methodID; */
  /* ap_int<4> flags; */
  unsigned char nodeID;
  unsigned char objectID;
  unsigned char methodID;
  unsigned char flags;
  //unsigned short methodID_flags;
  unsigned short cb;
  unsigned short size;
}__attribute__((packed));

#endif
