#if defined(__linux__)

  #define INLINE __attribute__((always_inline)) inline
#else

  #define INLINE inline
#endif



#ifdef __EMSCRIPTEN__

  #define __SSE__ 1
  #define __SSE2__ 1
  #define __SSE3__ 1
  #include <SSE/immintrin.h>
#else

  #include <immintrin.h>
#endif



namespace XGK::DATA::VEC4 {

  INLINE void set128 (void* data, const float x, const float y, const float z, const float w) {

    _mm_store_ps((float*) data, _mm_setr_ps(x, y, z, w));
  };



  INLINE void add128 (void* data_addr_void1, void* data_addr_void2) {

    float* data_addr_float1 = (float*) data_addr_void1;

    alignas(16) __m128 data_m128_1 = *((__m128*) data_addr_void1);
    alignas(16) __m128 data_m128_2 = *((__m128*) data_addr_void2);

    alignas(16) __m128 result = _mm_add_ps(data_m128_1, data_m128_2);

    _mm_store_ps(data_addr_float1, result);
  };



  INLINE void adds128 (void* data, const float s) {

    alignas(16) __m128 _data = *((__m128*) data);

    _mm_store_ps((float*) data, _mm_add_ps(_data, _mm_set1_ps(s)));
  };



  INLINE void sub128 (void* data0, void* data1) {

    alignas(16) __m128 _data0 = *((__m128*) data0);
    alignas(16) __m128 _data1 = *((__m128*) data1);

    _mm_store_ps((float*) data0, _mm_sub_ps(_data0, _data1));
  };



  INLINE void subs128 (void* data, const float s) {

    alignas(16) __m128 _data = *((__m128*) data);

    _mm_store_ps((float*) data, _mm_sub_ps(_data, _mm_set1_ps(s)));
  };



  INLINE void mul128 (void* data0, void* data1) {

    alignas(16) __m128 _data0 = *((__m128*) data0);
    alignas(16) __m128 _data1 = *((__m128*) data1);

    _mm_store_ps((float*) data0, _mm_mul_ps(_data0, _data1));
  };



  INLINE void muls128 (void* data, const float s) {

    alignas(16) __m128 _data = *((__m128*) data);

    _mm_store_ps((float*) data, _mm_mul_ps(_data, _mm_set1_ps(s)));
  };



  INLINE void div128 (void* data0, void* data1) {

    alignas(16) __m128 _data0 = *((__m128*) data0);
    alignas(16) __m128 _data1 = *((__m128*) data1);

    _mm_store_ps((float*) data0, _mm_div_ps(_data0, _data1));
  };



  INLINE void divs128 (void* data, const float s) {

    alignas(16) __m128 _data = *((__m128*) data);

    _mm_store_ps(

      (float*) data,
      _mm_div_ps(_data, _mm_set1_ps(s))
    );
  };



  INLINE void norm128 (void* data) {

    float* data_addr_float = (float*) data;

    alignas(16) __m128 _data = *((__m128*) data);

    float len = sqrt(

      (data_addr_float[0] * data_addr_float[0]) +
      (data_addr_float[1] * data_addr_float[1]) +
      (data_addr_float[2] * data_addr_float[2]) +
      (data_addr_float[3] * data_addr_float[3])
    );

    _mm_store_ps(

      (float*) data,
      _mm_div_ps(_data, _mm_set1_ps(len))
    );
  };
};



#undef INLINE
