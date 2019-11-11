#ifndef FLAG_CODES_H
#define FLAG_CODES_H


const unsigned char FLAG_REQUEST = 0x0;
const unsigned char FLAG_RESPONSE = 0x1;

const unsigned char FLAG_FAIL = 0x2;
const unsigned char FLAG_OK = 0x0;

const unsigned char FLAG_HAS_PAYLOAD = 0x4;

const unsigned char FLAG_SYNC = 0x0;
const unsigned char FLAG_ASYNC = 0x8;

const unsigned char FLAG_ASYNC_REQ = 0x0;
const unsigned char FLAG_ASYNC_GET_RESP = 0x10;

#endif
