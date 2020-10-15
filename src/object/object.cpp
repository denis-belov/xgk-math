#include "data/data.h"
#include "object.h"



namespace XGK {

	Object::Object (void) {

		DATA::MAT4::ident(&mat);
		DATA::QUAT::ident(&quat);
		DATA::VEC4::reset(&_trans);
		// DATA::MAT4::ident(&parent);
	};



	void Object::setRot (void* vector_addr, const float angle) {

		DATA::QUAT::makeRot(&quat, vector_addr, angle);
	};

	void Object::preRot (void* vector_addr, const float angle) {

		DATA::QUAT::preRot(&quat, vector_addr, angle);
	};

	void Object::postRot (void* vector_addr, const float angle) {

		DATA::QUAT::postRot(&quat, vector_addr, angle);
	};



	void Object::setRotX (const float angle) {

		DATA::QUAT::makeRotX(&quat, angle);
	};

	void Object::preRotX (const float angle) {

		DATA::QUAT::preRotX(&quat, angle);
	};

	void Object::postRotX (const float angle) {

		DATA::QUAT::postRotX(&quat, angle);
	};



	void Object::setRotY (const float angle) {

		DATA::QUAT::makeRotY(&quat, angle);
	};

	void Object::preRotY (const float angle) {

		DATA::QUAT::preRotY(&quat, angle);
	};

	void Object::postRotY (const float angle) {

		DATA::QUAT::postRotY(&quat, angle);
	};



	void Object::setRotZ (const float angle) {

		DATA::QUAT::makeRotZ(&quat, angle);
	};

	void Object::preRotZ (const float angle) {

		DATA::QUAT::preRotZ(&quat, angle);
	};

	void Object::postRotZ (const float angle) {

		DATA::QUAT::postRotZ(&quat, angle);
	};



	void Object::setTrans (void* vector_addr) {

		DATA::VEC4::copy(&_trans, vector_addr);
	};

	void Object::trans (void* vector_addr, const float value) {

		DATA::VEC4::copy(&aux_vec, vector_addr);
		DATA::VEC4::muls(&aux_vec, value);
		DATA::VEC4::add(&_trans, &aux_vec);
	};



	void Object::setTransX (const float value) {

		_trans[0] = value;
	};

	void Object::transX (const float value) {

		_trans[0] += value;
	};



	void Object::setTransY (const float value) {

		_trans[1] = value;
	};

	void Object::transY (const float value) {

		_trans[1] += value;
	};



	void Object::setTransZ (const float value) {

		_trans[2] = value;
	};

	void Object::transZ (const float value) {

		_trans[2] += value;
	};



	void Object::update (void) {

		// remove?
		DATA::VEC4::norm(&quat);
		DATA::MAT4::makeRotQuat(this, &quat);
		DATA::MAT4::preTrans(this, &_trans);
		// DATA::MAT4::premul(this, &parent);
	};

	void Object::update2 (void) {

		DATA::VEC4::norm(&quat);
		DATA::MAT4::makeTrans(this, &_trans);
		DATA::MAT4::preRotQuat(this, &quat);
		// DATA::MAT4::premul(this, &parent);
	};

	void Object::update3 (void) {

		DATA::MAT4::makeTransValue(this, &origin, 1.0f);
		DATA::MAT4::preRotQuat(this, &quat);
		DATA::MAT4::preTransValue(this, &origin, -1.0f);
		DATA::MAT4::preTrans(this, &_trans);
		// DATA::MAT4::premul(this, &parent);
	};
};
