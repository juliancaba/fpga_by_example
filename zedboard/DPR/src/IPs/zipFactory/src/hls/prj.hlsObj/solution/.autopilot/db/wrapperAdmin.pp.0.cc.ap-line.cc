#pragma line 1 "./wrapperAdmin.cc"
#pragma line 1 "./wrapperAdmin.cc" 1
#pragma line 1 "<built-in>" 1
#pragma line 1 "<built-in>" 3
#pragma line 155 "<built-in>" 3
#pragma line 1 "<command line>" 1
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "/opt/Xilinx/Vivado/2017.4/common/technology/autopilot/etc/autopilot_ssdm_op.h" 1
#pragma line 156 "/opt/Xilinx/Vivado/2017.4/common/technology/autopilot/etc/autopilot_ssdm_op.h"
extern "C" {
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
    typedef bool _uint1_;
#pragma empty_line
    void _ssdm_op_IfRead(...) __attribute__ ((nothrow));
    void _ssdm_op_IfWrite(...) __attribute__ ((nothrow));
    _uint1_ _ssdm_op_IfNbRead(...) __attribute__ ((nothrow));
    _uint1_ _ssdm_op_IfNbWrite(...) __attribute__ ((nothrow));
    _uint1_ _ssdm_op_IfCanRead(...) __attribute__ ((nothrow));
    _uint1_ _ssdm_op_IfCanWrite(...) __attribute__ ((nothrow));
#pragma empty_line
#pragma empty_line
    void _ssdm_StreamRead(...) __attribute__ ((nothrow));
    void _ssdm_StreamWrite(...) __attribute__ ((nothrow));
    _uint1_ _ssdm_StreamNbRead(...) __attribute__ ((nothrow));
    _uint1_ _ssdm_StreamNbWrite(...) __attribute__ ((nothrow));
    _uint1_ _ssdm_StreamCanRead(...) __attribute__ ((nothrow));
    _uint1_ _ssdm_StreamCanWrite(...) __attribute__ ((nothrow));
    unsigned _ssdm_StreamSize(...) __attribute__ ((nothrow));
#pragma empty_line
#pragma empty_line
    void _ssdm_op_MemShiftRead(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_Wait(...) __attribute__ ((nothrow));
    void _ssdm_op_Poll(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_Return(...) __attribute__ ((nothrow));
#pragma empty_line
#pragma empty_line
    void _ssdm_op_SpecSynModule(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecTopModule(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecProcessDecl(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecProcessDef(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecPort(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecConnection(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecChannel(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecSensitive(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecModuleInst(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecPortMap(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_SpecReset(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_SpecPlatform(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecClockDomain(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecPowerDomain(...) __attribute__ ((nothrow));
#pragma empty_line
    int _ssdm_op_SpecRegionBegin(...) __attribute__ ((nothrow));
    int _ssdm_op_SpecRegionEnd(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_SpecLoopName(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_SpecLoopTripCount(...) __attribute__ ((nothrow));
#pragma empty_line
    int _ssdm_op_SpecStateBegin(...) __attribute__ ((nothrow));
    int _ssdm_op_SpecStateEnd(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_SpecInterface(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_SpecPipeline(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecDataflowPipeline(...) __attribute__ ((nothrow));
#pragma empty_line
#pragma empty_line
    void _ssdm_op_SpecLatency(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecParallel(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecProtocol(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecOccurrence(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_SpecResource(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecResourceLimit(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecCHCore(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecFUCore(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecIFCore(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecIPCore(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecKeepValue(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecMemCore(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_SpecExt(...) __attribute__ ((nothrow));
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
    void _ssdm_SpecArrayDimSize(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_RegionBegin(...) __attribute__ ((nothrow));
    void _ssdm_RegionEnd(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_Unroll(...) __attribute__ ((nothrow));
    void _ssdm_UnrollRegion(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_InlineAll(...) __attribute__ ((nothrow));
    void _ssdm_InlineLoop(...) __attribute__ ((nothrow));
    void _ssdm_Inline(...) __attribute__ ((nothrow));
    void _ssdm_InlineSelf(...) __attribute__ ((nothrow));
    void _ssdm_InlineRegion(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_SpecArrayMap(...) __attribute__ ((nothrow));
    void _ssdm_SpecArrayPartition(...) __attribute__ ((nothrow));
    void _ssdm_SpecArrayReshape(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_SpecStream(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_SpecExpr(...) __attribute__ ((nothrow));
    void _ssdm_SpecExprBalance(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_SpecDependence(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_SpecLoopMerge(...) __attribute__ ((nothrow));
    void _ssdm_SpecLoopFlatten(...) __attribute__ ((nothrow));
    void _ssdm_SpecLoopRewind(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_SpecFuncInstantiation(...) __attribute__ ((nothrow));
    void _ssdm_SpecFuncBuffer(...) __attribute__ ((nothrow));
    void _ssdm_SpecFuncExtract(...) __attribute__ ((nothrow));
    void _ssdm_SpecConstant(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_DataPack(...) __attribute__ ((nothrow));
    void _ssdm_SpecDataPack(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_SpecBitsMap(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecLicense(...) __attribute__ ((nothrow));
#pragma empty_line
    void __xilinx_ip_top(...) __attribute__ ((nothrow));
#pragma empty_line
#pragma empty_line
}
#pragma line 8 "<command line>" 2
#pragma line 1 "<built-in>" 2
#pragma line 1 "./wrapperAdmin.cc" 2
#pragma line 1 "./wrapperAdmin.h" 1
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "./header.h" 1
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "./flag_codes.h" 1
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
const unsigned char FLAG_REQUEST = 0x0;
const unsigned char FLAG_RESPONSE = 0x1;
#pragma empty_line
const unsigned char FLAG_FAIL = 0x2;
const unsigned char FLAG_OK = 0x0;
#pragma empty_line
const unsigned char FLAG_HAS_PAYLOAD = 0x4;
#pragma empty_line
const unsigned char FLAG_SYNC = 0x0;
const unsigned char FLAG_ASYNC = 0x8;
#pragma empty_line
const unsigned char FLAG_ASYNC_REQ = 0x0;
const unsigned char FLAG_ASYNC_GET_RESP = 0x10;
#pragma line 5 "./header.h" 2
#pragma empty_line
#pragma empty_line
const unsigned char BROADCAST = 0xFF;
#pragma empty_line
const unsigned char NULL_OBJ = 0x0;
#pragma empty_line
struct headerStruct{
#pragma empty_line
#pragma empty_line
  unsigned char nodeID;
  unsigned char objectID;
  unsigned char methodID;
  unsigned char flags;
#pragma empty_line
  unsigned short cb;
  unsigned short size;
}__attribute__((packed));
#pragma line 5 "./wrapperAdmin.h" 2
#pragma empty_line
#pragma line 1 "/opt/Xilinx/Vivado/2017.4/common/technology/autopilot/hls_stream.h" 1
#pragma line 66 "/opt/Xilinx/Vivado/2017.4/common/technology/autopilot/hls_stream.h"
#pragma line 1 "/opt/Xilinx/Vivado/2017.4/common/technology/autopilot/etc/autopilot_enum.h" 1
#pragma line 58 "/opt/Xilinx/Vivado/2017.4/common/technology/autopilot/etc/autopilot_enum.h"
enum SsdmDataTypes {
    _ssdm_sc_int = 0,
    _ssdm_c_int = _ssdm_sc_int,
    _ssdm_sc_uint = 1,
    _ssdm_c_uint = _ssdm_sc_uint,
    _ssdm_sc_bigint = 2,
    _ssdm_sc_biguint = 3,
};
#pragma empty_line
#pragma empty_line
#pragma empty_line
enum SsdmPortTypes {
    _ssdm_sc_in = 0,
    _ssdm_sc_out = 1,
    _ssdm_sc_inout = 2,
    _ssdm_sc_in_clk,
#pragma empty_line
    _ssdm_fifo_in,
    _ssdm_sc_fifo_in = _ssdm_fifo_in,
    _ssdm_tlm_fifo_in = _ssdm_fifo_in,
    _ssdm_fifo_out,
    _ssdm_sc_fifo_out = _ssdm_fifo_out,
    _ssdm_tlm_fifo_out = _ssdm_fifo_out,
    _ssdm_fifo_inout,
    _ssdm_sc_fifo_inout = _ssdm_fifo_inout,
    _ssdm_tlm_fifo_inout = _ssdm_fifo_inout,
    _ssdm_sc_bus,
    _ssdm_hls_bus_port = _ssdm_sc_bus,
    _ssdm_AXI4M_bus_port = _ssdm_sc_bus,
    _ssdm_port_end,
};
#pragma empty_line
#pragma empty_line
#pragma empty_line
enum SsdmProcessTypes {
    _ssdm_method = 0,
    _ssdm_sc_method = _ssdm_method,
    _ssdm_thread = 1,
    _ssdm_sc_thread = _ssdm_thread,
    _ssdm_cthread = 2,
    _ssdm_sc_cthread = _ssdm_cthread,
    _ssdm_process_end,
};
#pragma empty_line
#pragma empty_line
#pragma empty_line
enum SsdmSensitiveTypes {
    _ssdm_sensitive = 0,
    _ssdm_sensitive_pos,
    _ssdm_sensitive_neg,
    _ssdm_sensitive_reset0,
    _ssdm_sensitive_reset1,
    _ssdm_sensitive_end,
};
#pragma empty_line
#pragma empty_line
#pragma empty_line
enum SsdmChannelTypes {
    _ssdm_sc_sig,
    _ssdm_fifo,
    _ssdm_sc_fifo = _ssdm_fifo,
    _ssdm_mem_fifo,
    _ssdm_sc_mem_fifo = _ssdm_mem_fifo,
};
#pragma empty_line
#pragma empty_line
enum SsdmRegionTypes {
    _ssdm_region_reset,
    _ssdm_region_protocol,
    _ssdm_region_pipeline,
    _ssdm_region_parallel,
};
#pragma line 67 "/opt/Xilinx/Vivado/2017.4/common/technology/autopilot/hls_stream.h" 2
#pragma empty_line
#pragma empty_line
namespace hls {
#pragma line 78 "/opt/Xilinx/Vivado/2017.4/common/technology/autopilot/hls_stream.h"
template<typename __STREAM_T__>
class stream
{
  public:
#pragma empty_line
    inline __attribute__((always_inline)) stream() {
    }
#pragma empty_line
    inline __attribute__((always_inline)) stream(const char* name) {
    }
#pragma empty_line
#pragma empty_line
  private:
    inline __attribute__((always_inline)) stream(const stream< __STREAM_T__ >& chn):V(chn.V) {
    }
#pragma empty_line
    inline __attribute__((always_inline)) stream& operator= (const stream< __STREAM_T__ >& chn) {
        V = chn.V;
        return *this;
    }
#pragma empty_line
  public:
#pragma empty_line
    inline __attribute__((always_inline)) void operator >> (__STREAM_T__& rdata) {
        read(rdata);
    }
#pragma empty_line
    inline __attribute__((always_inline)) void operator << (const __STREAM_T__& wdata) {
        write(wdata);
    }
#pragma empty_line
#pragma empty_line
  public:
#pragma empty_line
    inline __attribute__((always_inline)) bool empty() const {
        bool tmp = _ssdm_StreamCanRead(&V);
        return !tmp;
    }
#pragma empty_line
    inline __attribute__((always_inline)) bool full() const {
        bool tmp = _ssdm_StreamCanWrite(&V);
        return !tmp;
    }
#pragma empty_line
#pragma empty_line
    inline __attribute__((always_inline)) void read(__STREAM_T__& dout) {
        __STREAM_T__ tmp;
        _ssdm_StreamRead(&V, &tmp);
        dout = tmp;
    }
#pragma empty_line
    inline __attribute__((always_inline)) __STREAM_T__ read() {
        __STREAM_T__ tmp;
        _ssdm_StreamRead(&V, &tmp);
        return tmp;
    }
#pragma empty_line
#pragma empty_line
    inline __attribute__((always_inline)) bool read_nb(__STREAM_T__& dout) {
        __STREAM_T__ tmp;
        bool empty_n = _ssdm_StreamNbRead(&V, &tmp);
        dout = tmp;
        return empty_n;
    }
#pragma empty_line
#pragma empty_line
    inline __attribute__((always_inline)) void write(const __STREAM_T__& din) {
        __STREAM_T__ tmp = din;
        _ssdm_StreamWrite(&V, &tmp);
    }
#pragma empty_line
#pragma empty_line
    inline __attribute__((always_inline)) bool write_nb(const __STREAM_T__& din) {
        __STREAM_T__ tmp = din;
        bool full_n = _ssdm_StreamNbWrite(&V, &tmp);
        return full_n;
    }
#pragma empty_line
#pragma empty_line
    inline __attribute__((always_inline)) unsigned size() {
        unsigned size = _ssdm_StreamSize(&V);
        return size;
    }
#pragma empty_line
  public:
    __STREAM_T__ V;
};
#pragma empty_line
}
#pragma line 7 "./wrapperAdmin.h" 2
#pragma line 1 "./casting.h" 1
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
short to_short(unsigned char c1, unsigned char c2);
#pragma empty_line
int
to_int(unsigned char c1, unsigned char c2,
       unsigned char c3, unsigned char c4);
#pragma empty_line
long long
to_long_long(unsigned char c1, unsigned char c2,
      unsigned char c3, unsigned char c4,
      unsigned char c5, unsigned char c6,
      unsigned char c7, unsigned char c8);
#pragma empty_line
void
to_char_short(short n, unsigned char bytes[2]);
#pragma empty_line
void
to_char_int(int n, unsigned char bytes[4]);
#pragma empty_line
void
to_char_long_long(long long n, unsigned char bytes[8]);
#pragma empty_line
#pragma empty_line
#pragma empty_line
float
to_float(unsigned char c1, unsigned char c2,
  unsigned char c3, unsigned char c4);
#pragma empty_line
void
to_char_float(float n, unsigned char bytes[4]);
#pragma empty_line
double
to_double(unsigned char c1, unsigned char c2,
     unsigned char c3, unsigned char c4,
     unsigned char c5, unsigned char c6,
     unsigned char c7, unsigned char c8);
#pragma empty_line
void
to_char_float(float n, unsigned char bytes[4]);
#pragma empty_line
void
to_char_double(double n, unsigned char bytes[8]);
#pragma line 8 "./wrapperAdmin.h" 2
#pragma empty_line
static struct headerStruct header;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
static hls::stream<unsigned int> bufferRESP;
static int _status = 0;
#pragma empty_line
typedef struct{
  unsigned int addr;
  unsigned short areaID;
}PRbus;
#pragma empty_line
#pragma empty_line
static hls::stream<bool> bufferPRdone;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
struct PARAM_newObject{
  unsigned int addr;
  unsigned short areaID;
}__attribute__((packed));
#pragma empty_line
static struct PARAM_newObject args_newObject;
#pragma empty_line
void wrapper_newObject(hls::stream<unsigned int> &src,
         hls::stream<PRbus> &pr);
void readParameters_newObject(hls::stream<unsigned int> &src);
#pragma line 51 "./wrapperAdmin.h"
void wrapper_status(hls::stream<bool> &prDone);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
void wrapperAdmin(hls::stream<unsigned int> din,
    hls::stream<unsigned int> dout,
    hls::stream<PRbus> pr, hls::stream<bool> prDone);
#pragma empty_line
void forward(hls::stream<unsigned int> &src, short size);
#pragma empty_line
void buildResponse(hls::stream<unsigned int> &dst,
     unsigned short objID, unsigned short size,
     unsigned char flags);
void buildResponse(hls::stream<unsigned int> &dst,
     unsigned short objID, unsigned short size,
     unsigned char flags);
void getRequestHead(hls::stream<unsigned int> &src);
#pragma line 2 "./wrapperAdmin.cc" 2
#pragma empty_line
#pragma empty_line
#pragma empty_line
void
forward(hls::stream<unsigned int> &src, short size)
{
  short it=0;
  while(it != size){
    src.read();
    it += 1;
  }
}
#pragma empty_line
#pragma empty_line
void
getRequestHead(hls::stream<unsigned int> &src)
{
  int words32[2];
#pragma empty_line
  for(int it=0; it != 2; it++)
    words32[it] = src.read();
#pragma empty_line
  header.nodeID = (words32[0] >> 24) & 0xFF;
  header.objectID = (words32[0] >> 16) & 0xFF;
  header.methodID = (words32[0] >> 8) & 0xFF;
  header.flags = words32[0] & 0xFF;
  header.cb = (words32[1] >> 16) & 0xFFFF;
  header.size = words32[1] & 0xFFFF;
}
#pragma empty_line
#pragma empty_line
void
buildResponse(hls::stream<unsigned int> &dst,
       unsigned short objID, unsigned short size,
       unsigned char flags)
{
  int words32;
#pragma empty_line
  words32 = (header.cb<<16) | (header.methodID<<8) | flags;
  dst.write(words32);
  if(flags & FLAG_HAS_PAYLOAD){
    words32 = (objID<<16) | size;
    dst.write(words32);
    while (!bufferRESP.empty())
      dst.write(bufferRESP.read());
  }
}
#pragma empty_line
#pragma empty_line
#pragma empty_line
short
responseAdminPR(hls::stream<bool> &prDone)
{
  bool read = prDone.read();
  if (read)
    return 1;
  else
    return 0;
}
#pragma empty_line
void
newObject(hls::stream<PRbus> &pr, int addr, short areaID)
{
  PRbus aux;
  aux.areaID = areaID;
  aux.addr = addr;
  pr.write(aux);
}
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
void
wrapper_newObject(hls::stream<unsigned int> &src,
    hls::stream<PRbus> &pr)
{
  readParameters_newObject(src);
  newObject(pr, args_newObject.addr, args_newObject.areaID);
  _status = 2;
}
#pragma empty_line
#pragma empty_line
void
readParameters_newObject(hls::stream<unsigned int> &src)
{
  int words32[2];
#pragma empty_line
  for(int it=0; it != 2; it++)
    words32[it] = src.read();
#pragma empty_line
  unsigned char *ptr= (unsigned char*)words32;
  args_newObject.addr = to_int(*ptr++,*ptr++,*ptr++,*ptr++);
  short padding = to_short(*ptr++,*ptr++);
  args_newObject.areaID = to_short(*ptr++,*ptr++);
}
#pragma line 107 "./wrapperAdmin.cc"
void
wrapper_status(hls::stream<bool> &prDone)
{
  bool aux = false;
  prDone.read_nb(aux);
  if (aux)
    _status = 1;
  bufferRESP.write(_status);
}
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
void
wrapperAdmin(hls::stream<unsigned int> din,
      hls::stream<unsigned int> dout,
      hls::stream<PRbus> pr, hls::stream<bool> prDone)
{
#pragma empty_line
  getRequestHead(din);
#pragma empty_line
  if (2 == header.objectID){
    if (1 == header.methodID){
      buildResponse(dout, 2, 0,
      FLAG_RESPONSE|FLAG_OK);
      wrapper_newObject(din, pr);
    }
    else{
      if (2 == header.methodID){
 wrapper_status(prDone);
 buildResponse(dout, 2, 1,
        FLAG_HAS_PAYLOAD|FLAG_RESPONSE|FLAG_OK);
      }
      else{
 forward(din, header.size);
 buildResponse(dout, 2, 0,
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