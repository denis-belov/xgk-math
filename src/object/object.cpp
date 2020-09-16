#include "data/data.h"
#include "object.h"



namespace XGK::OBJECT {

  void init (Object* object_addr) {

    DATA::MAT4::ident(&object_addr->mat);
    DATA::QUAT::ident(&object_addr->quat);
    DATA::VEC4::reset(&object_addr->trans);
    // DATA::MAT4::ident(&object_addr->parent);
  };



  void setRot (Object* object_addr, void* vector_addr, const float angle) {

    DATA::QUAT::makeRot(&object_addr->quat, vector_addr, angle);
  };

  void preRot (Object* object_addr, void* vector_addr, const float angle) {

    DATA::QUAT::preRot(&object_addr->quat, vector_addr, angle);
  };

  void postRot (Object* object_addr, void* vector_addr, const float angle) {

    DATA::QUAT::postRot(&object_addr->quat, vector_addr, angle);
  };



  void setRotX (Object* object_addr, const float angle) {

    DATA::QUAT::makeRotX(&object_addr->quat, angle);
  };

  void preRotX (Object* object_addr, const float angle) {

    DATA::QUAT::preRotX(&object_addr->quat, angle);
  };

  void postRotX (Object* object_addr, const float angle) {

    DATA::QUAT::postRotX(&object_addr->quat, angle);
  };



  void setRotY (Object* object_addr, const float angle) {

    DATA::QUAT::makeRotY(&object_addr->quat, angle);
  };

  void preRotY (Object* object_addr, const float angle) {

    DATA::QUAT::preRotY(&object_addr->quat, angle);
  };

  void postRotY (Object* object_addr, const float angle) {

    DATA::QUAT::postRotY(&object_addr->quat, angle);
  };



  void setRotZ (Object* object_addr, const float angle) {

    DATA::QUAT::makeRotZ(&object_addr->quat, angle);
  };

  void preRotZ (Object* object_addr, const float angle) {

    DATA::QUAT::preRotZ(&object_addr->quat, angle);
  };

  void postRotZ (Object* object_addr, const float angle) {

    DATA::QUAT::postRotZ(&object_addr->quat, angle);
  };



  void setTrans (Object* object_addr, void* vector_addr) {

    DATA::VEC4::copy(&object_addr->trans, vector_addr);
  };

  void trans (Object* object_addr, void* vector_addr, const float value) {

    DATA::VEC4::copy(&object_addr->aux_vec, vector_addr);
    DATA::VEC4::muls(&object_addr->aux_vec, value);
    DATA::VEC4::add(&object_addr->trans, &object_addr->aux_vec);
  };



  void setTransX (Object* object_addr, const float value) {

    object_addr->trans[0] = value;
  };

  void transX (Object* object_addr, const float value) {

    object_addr->trans[0] += value;
  };



  void setTransY (Object* object_addr, const float value) {

    object_addr->trans[1] = value;
  };

  void transY (Object* object_addr, const float value) {

    object_addr->trans[1] += value;
  };



  void setTransZ (Object* object_addr, const float value) {

    object_addr->trans[2] = value;
  };

  void transZ (Object* object_addr, const float value) {

    object_addr->trans[2] += value;
  };



  void update (Object* object_addr) {

    // remove?
    XGK::DATA::VEC4::norm(&object_addr->quat);
    DATA::MAT4::makeRotQuat(object_addr,  &object_addr->quat);
    DATA::MAT4::preTrans(object_addr, &object_addr->trans);
    // DATA::MAT4::premul(object_addr, &object_addr->parent);
  };

  void update2 (Object* object_addr) {

    XGK::DATA::VEC4::norm(&object_addr->quat);
    DATA::MAT4::makeTrans(object_addr, &object_addr->trans);
    DATA::MAT4::preRotQuat(object_addr,  &object_addr->quat);
    // DATA::MAT4::premul(object_addr, &object_addr->parent);
  };

  void update3 (Object* object_addr) {

    DATA::MAT4::makeTransValue(object_addr, &object_addr->origin, 1.0f);
    DATA::MAT4::preRotQuat(object_addr,  &object_addr->quat);
    DATA::MAT4::preTransValue(object_addr, &object_addr->origin, -1.0f);
    DATA::MAT4::preTrans(object_addr, &object_addr->trans);
    // DATA::MAT4::premul(object_addr, &object_addr->parent);
  };
};
