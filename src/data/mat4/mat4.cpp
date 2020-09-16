// column-major 4x4 matrix

#include <cstdio>

// #include "mat4.h"
#include "mat4-32.h"
#include "mat4-128.h"



namespace XGK::DATA::MAT4 {

  void (* set)            (

    void*,
    const float, const float, const float, const float,
    const float, const float, const float, const float,
    const float, const float, const float, const float,
    const float, const float, const float, const float
  )                                                                                                = nullptr;
  void (* premul)         (void*, void*)                                                           = nullptr;
  void (* postmul)        (void*, void*)                                                           = nullptr;
  void (* makeTrans)      (void*, void*)                                                           = nullptr;
  void (* preTrans)       (void*, void*)                                                           = nullptr;
  void (* postTrans)      (void*, void*)                                                           = nullptr;
  void (* makeTransValue) (void*, void*, const float)                                              = nullptr;
  void (* preTransValue)  (void*, void*, const float)                                              = nullptr;
  void (* postTransValue) (void*, void*, const float)                                              = nullptr;
  void (* makeRotQuat)    (void*, void*)                                                           = nullptr;
  void (* preRotQuat)     (void*, void*)                                                           = nullptr;
  void (* postRotQuat)    (void*, void*)                                                           = nullptr;
  void (* transp)         (void*)                                                                  = nullptr;
  void (* invns)          (void*)                                                                  = nullptr;
  void (* makeProjPersp)  (void*, const float, const float, const float, const float, const float) = nullptr;



  void simd32 (void) {

    set = set32;
    premul = premul32;
    postmul = postmul32;
    makeTrans = makeTrans32;
    preTrans = preTrans32;
    postTrans = postTrans32;
    makeTransValue = makeTransValue32;
    preTransValue = preTransValue32;
    postTransValue = postTransValue32;
    makeRotQuat = makeRotQuat32;
    preRotQuat = preRotQuat32;
    postRotQuat = postRotQuat32;
    transp = transp32;
    invns = invns32;
    makeProjPersp = makeProjPersp32;
  };

  void simd128 (void) {

    set = set128;
    premul = premul128;
    postmul = postmul128;
    makeTrans = makeTrans128;
    preTrans = preTrans128;
    postTrans = postTrans128;
    makeTransValue = makeTransValue128;
    preTransValue = preTransValue128;
    postTransValue = postTransValue128;
    makeRotQuat = makeRotQuat128;
    preRotQuat = preRotQuat128;
    postRotQuat = postRotQuat128;
    transp = transp128;
    invns = invns128;
    makeProjPersp = makeProjPersp128;
  };

  void print (void* data) {

    float* _data = (float*) data;

    printf("%f %f %f %f\n", _data[0], _data[4], _data[8] , _data[12]);
    printf("%f %f %f %f\n", _data[1], _data[5], _data[9] , _data[13]);
    printf("%f %f %f %f\n", _data[2], _data[6], _data[10], _data[14]);
    printf("%f %f %f %f\n", _data[3], _data[7], _data[11], _data[15]);
  };
};
