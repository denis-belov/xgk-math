// #include "quat.h"
#include "quat-32.h"
#include "quat-128.h"



namespace XGK::DATA::QUAT {

  void (* premul)   (void*, void*)               = nullptr;
  void (* postmul)  (void*, void*)               = nullptr;
  void (* makeRot)  (void*, void*, const float)  = nullptr;
  void (* preRot)   (void*, void*, const float)  = nullptr;
  void (* postRot)  (void*, void*, const float)  = nullptr;
  void (* makeRotX) (void*, const float)         = nullptr;
  void (* preRotX)  (void*, const float)         = nullptr;
  void (* postRotX) (void*, const float)         = nullptr;
  void (* makeRotY) (void*, const float)         = nullptr;
  void (* preRotY)  (void*, const float)         = nullptr;
  void (* postRotY) (void*, const float)         = nullptr;
  void (* makeRotZ) (void*, const float)         = nullptr;
  void (* preRotZ)  (void*, const float)         = nullptr;
  void (* postRotZ) (void*, const float)         = nullptr;



  void simd32 (void) {

    premul = premul32;
    postmul = postmul32;
    makeRot = makeRot32;
    preRot = preRot32;
    postRot = postRot32;
    makeRotX = makeRotX32;
    preRotX = preRotX32;
    postRotX = postRotX32;
    makeRotY = makeRotY32;
    preRotY = preRotY32;
    postRotY = postRotY32;
    makeRotZ = makeRotZ32;
    preRotZ = preRotZ32;
    postRotZ = postRotZ32;
  };

  void simd128 (void) {

    premul = premul128;
    postmul = postmul128;
    makeRot = makeRot128;
    preRot = preRot128;
    postRot = postRot128;
    makeRotX = makeRotX128;
    preRotX = preRotX128;
    postRotX = postRotX128;
    makeRotY = makeRotY128;
    preRotY = preRotY128;
    postRotY = postRotY128;
    makeRotZ = makeRotZ128;
    preRotZ = preRotZ128;
    postRotZ = postRotZ128;
  };
};
