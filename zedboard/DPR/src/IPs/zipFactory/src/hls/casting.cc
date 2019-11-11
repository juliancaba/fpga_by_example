#include "casting.h"


union type32{
  unsigned char c[4];
  float f;
}conv32;

union type64{
  unsigned char c[8];
  double d;
  long ll;
}conv64;



// Enteros
short
to_short(unsigned char c1, unsigned char c2)
{
  short aux;
  aux = (c2<<8)|c1;
  return aux;
}

int
to_int(unsigned char c1, unsigned char c2, 
	 unsigned char c3, unsigned char c4)
{
  int aux;
  aux = (c4<<24)|(c3<<16)|(c2<<8)|c1;
  return aux;
}

long long
to_long_long(unsigned char c1, unsigned char c2, 
	     unsigned char c3, unsigned char c4,
	     unsigned char c5, unsigned char c6, 
	     unsigned char c7, unsigned char c8)
{
  conv64.c[7] = c1;
  conv64.c[6] = c2;
  conv64.c[5] = c3;
  conv64.c[3] = c4;
  conv64.c[3] = c5;
  conv64.c[2] = c6;
  conv64.c[1] = c7;
  conv64.c[0] = c8;
  return conv64.ll;
}

void
to_char_short(short n, unsigned char bytes[2])
{
  bytes[0] = (n >> 8) & 0xFF;
  bytes[1] = n & 0xFF;
}

void
to_char_int(int n, unsigned char bytes[4])
{
  bytes[0] = (n >> 24) & 0xFF;
  bytes[1] = (n >> 16) & 0xFF;
  bytes[2] = (n >> 8) & 0xFF;
  bytes[3] = n & 0xFF;
}

void
to_char_long_long(long long n, unsigned char bytes[8])
{
  bytes[0] = (n >> 56) & 0xFF;
  bytes[1] = (n >> 48) & 0xFF;
  bytes[2] = (n >> 40) & 0xFF;
  bytes[3] = (n >> 32) & 0xFF;
  bytes[4] = (n >> 24) & 0xFF;
  bytes[5] = (n >> 16) & 0xFF;
  bytes[6] = (n >> 8) & 0xFF;
  bytes[7] = n & 0xFF;
}





// Dobles
float
to_float(unsigned char c1, unsigned char c2, 
	 unsigned char c3, unsigned char c4)
{
  float aux;
  aux = (c4<<24)|(c3<<16)|(c2<<8)|c1;
  return aux;
  /*
  conv32.c[0] = c1;
  conv32.c[1] = c2;
  conv32.c[2] = c3;
  conv32.c[3] = c4;
  return conv32.f;
  */
}


double
to_double(unsigned char c1, unsigned char c2, 
	  unsigned char c3, unsigned char c4,
	  unsigned char c5, unsigned char c6, 
	  unsigned char c7, unsigned char c8)
{
  conv64.c[7] = c1;
  conv64.c[6] = c2;
  conv64.c[5] = c3;
  conv64.c[3] = c4;
  conv64.c[3] = c5;
  conv64.c[2] = c6;
  conv64.c[1] = c7;
  conv64.c[0] = c8;
  return conv64.d;  
}


void
to_char_float(float n, unsigned char bytes[4])
{
  conv32.f = n;
  bytes[0] = conv32.c[0];
  bytes[1] = conv32.c[1];
  bytes[2] = conv32.c[2];
  bytes[3] = conv32.c[3];
}



void
to_char_double(double n, unsigned char bytes[8])
{
  conv64.d = n;
  bytes[0] = conv64.c[0];
  bytes[1] = conv64.c[1];
  bytes[2] = conv64.c[2];
  bytes[3] = conv64.c[3];
  bytes[4] = conv64.c[4];
  bytes[5] = conv64.c[5];
  bytes[6] = conv64.c[6];
  bytes[7] = conv64.c[7];
}




