#if defined(__linux__)

  #define INLINE __attribute__((always_inline)) inline
#else

  #define INLINE inline
#endif



#include <cstring>

// #include "data/const.h"



namespace XGK::DATA::MAT4 {

  INLINE void copy (void* data_addr_void1, void* data_addr_void2) {

    memcpy(data_addr_void1, data_addr_void2, FLOAT_SIZE_16);
  };



  INLINE void reset (void* data_addr_void) {

    memset(data_addr_void, 0, FLOAT_SIZE_16);
  };



  INLINE void ident (void* data_addr_void) {

    memcpy(data_addr_void, IDENT_16, FLOAT_SIZE_16);
  };
};



#undef INLINE
