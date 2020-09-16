// These functions can be used with float[4] and __m128 data storages (4-dim vectors, quaternions).
// Data should be aligned with 16-byte alignment for better performance.

#include <cstdio>

// #include "vec4.h"
#include "vec4-32.h"
#include "vec4-128.h"



namespace XGK::DATA::VEC4 {

  void (* set)  (void*, const float, const float, const float, const float) = nullptr;
  void (* add)  (void*, void*)                                              = nullptr;
  void (* adds) (void*, const float)                                        = nullptr;
  void (* sub)  (void*, void*)                                              = nullptr;
  void (* subs) (void*, const float)                                        = nullptr;
  void (* mul)  (void*, void*)                                              = nullptr;
  void (* muls) (void*, const float)                                        = nullptr;
  void (* div)  (void*, void*)                                              = nullptr;
  void (* divs) (void*, const float)                                        = nullptr;
  void (* norm) (void*)                                                     = nullptr;



  void simd32 (void) {

    set = set32;
    add = add32;
    adds = adds32;
    sub = sub32;
    subs = subs32;
    mul = mul32;
    muls = muls32;
    div = div32;
    divs = divs32;
    norm = norm32;
  };

  void simd128 (void) {

    set = set128;
    add = add128;
    adds = adds128;
    sub = sub128;
    subs = subs128;
    mul = mul128;
    muls = muls128;
    div = div128;
    divs = divs128;
    norm = norm128;
  };

  void print (void* data) {

    float* _data = (float*) data;

    printf("%f %f %f %f\n", _data[0], _data[1], _data[2], _data[3]);
  };
};
