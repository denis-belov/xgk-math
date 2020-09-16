// change to gcc
#if defined(__linux__)

  #define INLINE __attribute__((always_inline)) inline
#else

  #define INLINE inline
#endif



#include <cstring>
#include <cmath>

#include "data/const.h"



namespace XGK::DATA::VEC4 {

  INLINE void copy (void* data_addr_void1, void* data_addr_void2) {

    memcpy(data_addr_void1, data_addr_void2, FLOAT_SIZE_4);
  };



  INLINE void reset (void* data_addr_void) {

    memset(data_addr_void, 0, FLOAT_SIZE_4);
  };



  INLINE float len (void* data_addr_void) {

    float* data_addr_float = (float*) data_addr_void;

    return sqrt(

      (data_addr_float[0] * data_addr_float[0]) +
      (data_addr_float[1] * data_addr_float[1]) +
      (data_addr_float[2] * data_addr_float[2]) +
      (data_addr_float[3] * data_addr_float[3])
    );
  };



  INLINE float lens (void* data_addr_void) {

    float* data_addr_float = (float*) data_addr_void;

    return
      (data_addr_float[0] * data_addr_float[0]) +
      (data_addr_float[1] * data_addr_float[1]) +
      (data_addr_float[2] * data_addr_float[2]) +
      (data_addr_float[3] * data_addr_float[3]);
  };
};



#undef INLINE
