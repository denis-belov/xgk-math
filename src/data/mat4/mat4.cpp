// column-major 4x4 matrix

#include <cstdio>
#include <cstring>
#include <cstdint>



namespace XGK::DATA {

  extern const uint8_t FLOAT_SIZE_16;
};



namespace XGK::DATA::MAT4 {

  alignas(16) extern const float IDENT_16[16];



  void set32 (

    void*,

    const float, const float, const float, const float,
    const float, const float, const float, const float,
    const float, const float, const float, const float,
    const float, const float, const float, const float
  );
  void premul32 (void*, void*);
  void postmul32 (void*, void*);
  void makeTrans32 (void*, void*);
  void preTrans32 (void*, void*);
  void postTrans32 (void*, void*);
  void makeTransValue32 (void*, void*, const float);
  void preTransValue32 (void*, void*, const float);
  void postTransValue32 (void*, void*, const float);
  void makeRotQuat32 (void*, void*);
  void preRotQuat32 (void*, void*);
  void postRotQuat32 (void*, void*);
  void transp32 (void*);
  void invns32 (void*);
  void makeProjPersp32 (void*, const float, const float, const float, const float, const float);

  void set128 (

    void*,

    const float, const float, const float, const float,
    const float, const float, const float, const float,
    const float, const float, const float, const float,
    const float, const float, const float, const float
  );
  void premul128 (void*, void*);
  void postmul128 (void*, void*);
  void makeTrans128 (void*, void*);
  void preTrans128 (void*, void*);
  void postTrans128 (void*, void*);
  void makeTransValue128 (void*, void*, const float);
  void preTransValue128 (void*, void*, const float);
  void postTransValue128 (void*, void*, const float);
  void makeRotQuat128 (void*, void*);
  void preRotQuat128 (void*, void*);
  void postRotQuat128 (void*, void*);
  void transp128 (void*);
  void invns128 (void*);
  void makeProjPersp128 (void*, const float, const float, const float, const float, const float);



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



  void copy (void* data_addr_void1, void* data_addr_void2) {

    memcpy(data_addr_void1, data_addr_void2, FLOAT_SIZE_16);
  };



  void reset (void* data_addr_void) {

    memset(data_addr_void, 0, FLOAT_SIZE_16);
  };



  void ident (void* data_addr_void) {

    memcpy(data_addr_void, IDENT_16, FLOAT_SIZE_16);
  };



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
