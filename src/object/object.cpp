// included in object.h
// #include "data/vec4/vec4.h"
// #include "data/quat/quat.h"
// #include "data/mat4/mat4.h"

#include "object.h"



namespace XGK
{
	void Object::setRot (void* vector_addr, const float angle)
	{
		quat.makeRot(vector_addr, angle);
	}

	void Object::preRot (void* vector_addr, const float angle)
	{
		quat.preRot(vector_addr, angle);
	}

	void Object::postRot (void* vector_addr, const float angle)
	{
		quat.postRot(vector_addr, angle);
	}



	void Object::setRotX (const float angle)
	{
		quat.makeRotX(angle);
	}

	void Object::preRotX (const float angle)
	{
		quat.preRotX(angle);
	}

	void Object::postRotX (const float angle)
	{
		quat.postRotX(angle);
	}



	void Object::setRotY (const float angle)
	{
		quat.makeRotY(angle);
	}

	void Object::preRotY (const float angle)
	{
		quat.preRotY(angle);
	}

	void Object::postRotY (const float angle)
	{
		quat.postRotY(angle);
	}



	void Object::setRotZ (const float angle)
	{
		quat.makeRotZ(angle);
	}

	void Object::preRotZ (const float angle)
	{
		quat.preRotZ(angle);
	}

	void Object::postRotZ (const float angle)
	{
		quat.postRotZ(angle);
	}



	void Object::setTrans (void* vector_addr)
	{
		_trans = vector_addr;
	}

	void Object::trans (void* vector_addr, const float value)
	{
		aux_vec = vector_addr;

		aux_vec.muls(value);

		_trans.add(aux_vec);
	}



	void Object::setTransX (const float value)
	{
		_trans.data[0] = value;
	}

	void Object::transX (const float value)
	{
		_trans.data[0] += value;
	}



	void Object::setTransY (const float value)
	{
		_trans.data[1] = value;
	}

	void Object::transY (const float value)
	{
		_trans.data[1] += value;
	}



	void Object::setTransZ (const float value)
	{
		_trans.data[2] = value;
	}

	void Object::transZ (const float value)
	{
		_trans.data[2] += value;
	}



	void Object::update (void)
	{
		// remove?
		quat.norm();
		mat.makeRotQuat(quat);
		mat.preTrans(_trans);
		// DATA::MAT4::premul(this, &parent);
	}

	void Object::update2 (void)
	{
		quat.norm();
		mat.preTrans(_trans);
		mat.makeRotQuat(quat);
	}
}
