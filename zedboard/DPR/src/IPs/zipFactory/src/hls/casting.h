#ifndef CASTING_H
#define CASTING_H


#include <hls_stream.h>


// Enteros
short to_short(unsigned char c1, unsigned char c2);

int
to_int(unsigned char c1, unsigned char c2, 
       unsigned char c3, unsigned char c4);

long long
to_long_long(unsigned char c1, unsigned char c2, 
	     unsigned char c3, unsigned char c4,
	     unsigned char c5, unsigned char c6, 
	     unsigned char c7, unsigned char c8);

void
to_char_short(short n, unsigned char bytes[2]);

void
to_char_int(int n, unsigned char bytes[4]);

void
to_char_long_long(long long n, unsigned char bytes[8]);


// Dobles
float
to_float(unsigned char c1, unsigned char c2, 
	 unsigned char c3, unsigned char c4);

void
to_char_float(float n, unsigned char bytes[4]);

double
to_double(unsigned char c1, unsigned char c2, 
	    unsigned char c3, unsigned char c4,
	    unsigned char c5, unsigned char c6, 
	    unsigned char c7, unsigned char c8);

void
to_char_float(float n, unsigned char bytes[4]);

void
to_char_double(double n, unsigned char bytes[8]);

#endif
