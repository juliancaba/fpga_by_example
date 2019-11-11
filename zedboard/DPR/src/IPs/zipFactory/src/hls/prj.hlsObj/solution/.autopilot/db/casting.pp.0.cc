# 1 "./casting.cc"
# 1 "./casting.cc" 1
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 155 "<built-in>" 3
# 1 "<command line>" 1






# 1 "/opt/Xilinx/Vivado/2017.4/common/technology/autopilot/etc/autopilot_ssdm_op.h" 1
# 156 "/opt/Xilinx/Vivado/2017.4/common/technology/autopilot/etc/autopilot_ssdm_op.h"
extern "C" {





    typedef bool _uint1_;

    void _ssdm_op_IfRead(...) __attribute__ ((nothrow));
    void _ssdm_op_IfWrite(...) __attribute__ ((nothrow));
    _uint1_ _ssdm_op_IfNbRead(...) __attribute__ ((nothrow));
    _uint1_ _ssdm_op_IfNbWrite(...) __attribute__ ((nothrow));
    _uint1_ _ssdm_op_IfCanRead(...) __attribute__ ((nothrow));
    _uint1_ _ssdm_op_IfCanWrite(...) __attribute__ ((nothrow));


    void _ssdm_StreamRead(...) __attribute__ ((nothrow));
    void _ssdm_StreamWrite(...) __attribute__ ((nothrow));
    _uint1_ _ssdm_StreamNbRead(...) __attribute__ ((nothrow));
    _uint1_ _ssdm_StreamNbWrite(...) __attribute__ ((nothrow));
    _uint1_ _ssdm_StreamCanRead(...) __attribute__ ((nothrow));
    _uint1_ _ssdm_StreamCanWrite(...) __attribute__ ((nothrow));
    unsigned _ssdm_StreamSize(...) __attribute__ ((nothrow));


    void _ssdm_op_MemShiftRead(...) __attribute__ ((nothrow));

    void _ssdm_op_Wait(...) __attribute__ ((nothrow));
    void _ssdm_op_Poll(...) __attribute__ ((nothrow));

    void _ssdm_op_Return(...) __attribute__ ((nothrow));


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

    void _ssdm_op_SpecReset(...) __attribute__ ((nothrow));

    void _ssdm_op_SpecPlatform(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecClockDomain(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecPowerDomain(...) __attribute__ ((nothrow));

    int _ssdm_op_SpecRegionBegin(...) __attribute__ ((nothrow));
    int _ssdm_op_SpecRegionEnd(...) __attribute__ ((nothrow));

    void _ssdm_op_SpecLoopName(...) __attribute__ ((nothrow));

    void _ssdm_op_SpecLoopTripCount(...) __attribute__ ((nothrow));

    int _ssdm_op_SpecStateBegin(...) __attribute__ ((nothrow));
    int _ssdm_op_SpecStateEnd(...) __attribute__ ((nothrow));

    void _ssdm_op_SpecInterface(...) __attribute__ ((nothrow));

    void _ssdm_op_SpecPipeline(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecDataflowPipeline(...) __attribute__ ((nothrow));


    void _ssdm_op_SpecLatency(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecParallel(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecProtocol(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecOccurrence(...) __attribute__ ((nothrow));

    void _ssdm_op_SpecResource(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecResourceLimit(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecCHCore(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecFUCore(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecIFCore(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecIPCore(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecKeepValue(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecMemCore(...) __attribute__ ((nothrow));

    void _ssdm_op_SpecExt(...) __attribute__ ((nothrow));




    void _ssdm_SpecArrayDimSize(...) __attribute__ ((nothrow));

    void _ssdm_RegionBegin(...) __attribute__ ((nothrow));
    void _ssdm_RegionEnd(...) __attribute__ ((nothrow));

    void _ssdm_Unroll(...) __attribute__ ((nothrow));
    void _ssdm_UnrollRegion(...) __attribute__ ((nothrow));

    void _ssdm_InlineAll(...) __attribute__ ((nothrow));
    void _ssdm_InlineLoop(...) __attribute__ ((nothrow));
    void _ssdm_Inline(...) __attribute__ ((nothrow));
    void _ssdm_InlineSelf(...) __attribute__ ((nothrow));
    void _ssdm_InlineRegion(...) __attribute__ ((nothrow));

    void _ssdm_SpecArrayMap(...) __attribute__ ((nothrow));
    void _ssdm_SpecArrayPartition(...) __attribute__ ((nothrow));
    void _ssdm_SpecArrayReshape(...) __attribute__ ((nothrow));

    void _ssdm_SpecStream(...) __attribute__ ((nothrow));

    void _ssdm_SpecExpr(...) __attribute__ ((nothrow));
    void _ssdm_SpecExprBalance(...) __attribute__ ((nothrow));

    void _ssdm_SpecDependence(...) __attribute__ ((nothrow));

    void _ssdm_SpecLoopMerge(...) __attribute__ ((nothrow));
    void _ssdm_SpecLoopFlatten(...) __attribute__ ((nothrow));
    void _ssdm_SpecLoopRewind(...) __attribute__ ((nothrow));

    void _ssdm_SpecFuncInstantiation(...) __attribute__ ((nothrow));
    void _ssdm_SpecFuncBuffer(...) __attribute__ ((nothrow));
    void _ssdm_SpecFuncExtract(...) __attribute__ ((nothrow));
    void _ssdm_SpecConstant(...) __attribute__ ((nothrow));

    void _ssdm_DataPack(...) __attribute__ ((nothrow));
    void _ssdm_SpecDataPack(...) __attribute__ ((nothrow));

    void _ssdm_op_SpecBitsMap(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecLicense(...) __attribute__ ((nothrow));

    void __xilinx_ip_top(...) __attribute__ ((nothrow));


}
# 8 "<command line>" 2
# 1 "<built-in>" 2
# 1 "./casting.cc" 2
# 1 "./casting.h" 1




# 1 "/opt/Xilinx/Vivado/2017.4/common/technology/autopilot/hls_stream.h" 1
# 66 "/opt/Xilinx/Vivado/2017.4/common/technology/autopilot/hls_stream.h"
# 1 "/opt/Xilinx/Vivado/2017.4/common/technology/autopilot/etc/autopilot_enum.h" 1
# 58 "/opt/Xilinx/Vivado/2017.4/common/technology/autopilot/etc/autopilot_enum.h"
enum SsdmDataTypes {
    _ssdm_sc_int = 0,
    _ssdm_c_int = _ssdm_sc_int,
    _ssdm_sc_uint = 1,
    _ssdm_c_uint = _ssdm_sc_uint,
    _ssdm_sc_bigint = 2,
    _ssdm_sc_biguint = 3,
};



enum SsdmPortTypes {
    _ssdm_sc_in = 0,
    _ssdm_sc_out = 1,
    _ssdm_sc_inout = 2,
    _ssdm_sc_in_clk,

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



enum SsdmProcessTypes {
    _ssdm_method = 0,
    _ssdm_sc_method = _ssdm_method,
    _ssdm_thread = 1,
    _ssdm_sc_thread = _ssdm_thread,
    _ssdm_cthread = 2,
    _ssdm_sc_cthread = _ssdm_cthread,
    _ssdm_process_end,
};



enum SsdmSensitiveTypes {
    _ssdm_sensitive = 0,
    _ssdm_sensitive_pos,
    _ssdm_sensitive_neg,
    _ssdm_sensitive_reset0,
    _ssdm_sensitive_reset1,
    _ssdm_sensitive_end,
};



enum SsdmChannelTypes {
    _ssdm_sc_sig,
    _ssdm_fifo,
    _ssdm_sc_fifo = _ssdm_fifo,
    _ssdm_mem_fifo,
    _ssdm_sc_mem_fifo = _ssdm_mem_fifo,
};


enum SsdmRegionTypes {
    _ssdm_region_reset,
    _ssdm_region_protocol,
    _ssdm_region_pipeline,
    _ssdm_region_parallel,
};
# 67 "/opt/Xilinx/Vivado/2017.4/common/technology/autopilot/hls_stream.h" 2


namespace hls {
# 78 "/opt/Xilinx/Vivado/2017.4/common/technology/autopilot/hls_stream.h"
template<typename __STREAM_T__>
class stream
{
  public:

    inline __attribute__((always_inline)) stream() {
    }

    inline __attribute__((always_inline)) stream(const char* name) {
    }


  private:
    inline __attribute__((always_inline)) stream(const stream< __STREAM_T__ >& chn):V(chn.V) {
    }

    inline __attribute__((always_inline)) stream& operator= (const stream< __STREAM_T__ >& chn) {
        V = chn.V;
        return *this;
    }

  public:

    inline __attribute__((always_inline)) void operator >> (__STREAM_T__& rdata) {
        read(rdata);
    }

    inline __attribute__((always_inline)) void operator << (const __STREAM_T__& wdata) {
        write(wdata);
    }


  public:

    inline __attribute__((always_inline)) bool empty() const {
        bool tmp = _ssdm_StreamCanRead(&V);
        return !tmp;
    }

    inline __attribute__((always_inline)) bool full() const {
        bool tmp = _ssdm_StreamCanWrite(&V);
        return !tmp;
    }


    inline __attribute__((always_inline)) void read(__STREAM_T__& dout) {
        __STREAM_T__ tmp;
        _ssdm_StreamRead(&V, &tmp);
        dout = tmp;
    }

    inline __attribute__((always_inline)) __STREAM_T__ read() {
        __STREAM_T__ tmp;
        _ssdm_StreamRead(&V, &tmp);
        return tmp;
    }


    inline __attribute__((always_inline)) bool read_nb(__STREAM_T__& dout) {
        __STREAM_T__ tmp;
        bool empty_n = _ssdm_StreamNbRead(&V, &tmp);
        dout = tmp;
        return empty_n;
    }


    inline __attribute__((always_inline)) void write(const __STREAM_T__& din) {
        __STREAM_T__ tmp = din;
        _ssdm_StreamWrite(&V, &tmp);
    }


    inline __attribute__((always_inline)) bool write_nb(const __STREAM_T__& din) {
        __STREAM_T__ tmp = din;
        bool full_n = _ssdm_StreamNbWrite(&V, &tmp);
        return full_n;
    }


    inline __attribute__((always_inline)) unsigned size() {
        unsigned size = _ssdm_StreamSize(&V);
        return size;
    }

  public:
    __STREAM_T__ V;
};

}
# 6 "./casting.h" 2



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
# 2 "./casting.cc" 2


union type32{
  unsigned char c[4];
  float f;
}conv32;

union type64{
  unsigned char c[8];
  double d;
  long ll;
}conv64;




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






float
to_float(unsigned char c1, unsigned char c2,
  unsigned char c3, unsigned char c4)
{
  float aux;
  aux = (c4<<24)|(c3<<16)|(c2<<8)|c1;
  return aux;







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
