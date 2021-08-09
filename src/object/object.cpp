#include "object.h"



namespace XGK::MATH
{
	void Object::setRot (void* vector_addr, const float& angle)
	{
		quat.makeRot32(vector_addr, angle);
	}

	void Object::preRot (void* vector_addr, const float& angle)
	{
		quat.preRot32(vector_addr, angle);
	}

	void Object::postRot (void* vector_addr, const float& angle)
	{
		quat.postRot32(vector_addr, angle);
	}



	void Object::setRotX (const float& angle)
	{
		quat.makeRotX32(angle);
	}

	void Object::preRotX (const float& angle)
	{
		quat.preRotX32(angle);
	}

	void Object::postRotX (const float& angle)
	{
		quat.postRotX32(angle);
	}



	void Object::setRotY (const float& angle)
	{
		quat.makeRotY32(angle);
	}

	void Object::preRotY (const float& angle)
	{
		quat.preRotY32(angle);
	}

	void Object::postRotY (const float& angle)
	{
		quat.postRotY32(angle);
	}



	void Object::setRotZ (const float& angle)
	{
		quat.makeRotZ32(angle);
	}

	void Object::preRotZ (const float& angle)
	{
		quat.preRotZ32(angle);
	}

	void Object::postRotZ (const float& angle)
	{
		quat.postRotZ32(angle);
	}



	void Object::setTrans (const void* vector_addr)
	{
		_trans = vector_addr;
	}

	// void Object::trans (void* vector_addr, const float& value)
	// {
	// 	aux_vec = vector_addr;

	// 	aux_vec.muls(value);

	// 	_trans.add(aux_vec);
	// }



	void Object::setTransX (const float& value)
	{
		_trans.data[0] = value;
	}

	void Object::transX (const float& value)
	{
		_trans.data[0] += value;
	}



	void Object::setTransY (const float& value)
	{
		_trans.data[1] = value;
	}

	void Object::transY (const float& value)
	{
		_trans.data[1] += value;
	}



	void Object::setTransZ (const float& value)
	{
		_trans.data[2] = value;
	}

	void Object::transZ (const float& value)
	{
		_trans.data[2] += value;
	}



	void Object::update (void)
	{
		// remove?
		quat.norm();
		// mat.makeRotQuat(quat);
		// mat.preTrans(_trans);
		// MAT4::premul(this, &parent);
	}

	void Object::update2 (void)
	{
		quat.norm();
		// mat.preTrans(_trans);
		// mat.makeRotQuat(quat);
	}
}
