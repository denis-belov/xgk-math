#define SET(x, y, z, w) data[0] = x; data[1] = y; data[2] = z; data[3] = w;



#include <cstdint>
#include <cstring>
#include <cstdio>
#include <cmath>

#include "quat.h"



namespace XGK::DATA
{
	extern const uint8_t FLOAT_SIZE_4;

	alignas(16) const float ZERO_4 [4] { 0.0f, 0.0f, 0.0f, 0.0f };
	alignas(16) const float IDENT_4 [4] { 0.0f, 0.0f, 0.0f, 1.0f };



	Quat::Quat (void)
	{
		memcpy(data, IDENT_4, FLOAT_SIZE_4);

		// // compare performance with
		// memset(data, 0, FLOAT_SIZE_4);
	}

	Quat::Quat (const void* src)
	{
		memcpy(data, src, FLOAT_SIZE_4);
	}

	Quat::Quat (const Quat& src)
	{
		memcpy(data, &src, FLOAT_SIZE_4);
	}

	Quat::Quat (const Quat&& src)
	{
		memcpy(data, &src, FLOAT_SIZE_4);
	}

	Quat::Quat (std::initializer_list<float>& list)
	{
		size_t count = 0;

		for (float element : list)
		{
			data[count++] = element;

			if (count == 4)
			{
				break;
			}
		}
	}

	Quat::~Quat (void) {}



	void Quat::operator = (const void* src)
	{
		memcpy(data, src, FLOAT_SIZE_4);
	}

	void Quat::operator = (const Quat& src)
	{
		memcpy(data, &src, FLOAT_SIZE_4);
	}

	void Quat::operator = (const Quat&& src)
	{
		memcpy(data, &src, FLOAT_SIZE_4);
	}



	void Quat::reset (void)
	{
		memcpy(data, ZERO_4, FLOAT_SIZE_4);
	}

	void Quat::set (const float& x, const float& y, const float& z, const float& w)
	{
		SET(x, y, z, w)
	}

	void Quat::ident (void)
	{
		memcpy(data, IDENT_4, FLOAT_SIZE_4);
	}

	// TODO simd
	float Quat::len (void)
	{
		return sqrt((data[0] * data[0]) + (data[1] * data[1]) + (data[2] * data[2]) + (data[3] * data[3]));
	}

	float Quat::lensq (void)
	{
		return (data[0] * data[0]) + (data[1] * data[1]) + (data[2] * data[2]) + (data[3] * data[3]);
	}

	void Quat::norm (void)
	{
		const float invlen = 1.0f / sqrt((data[0] * data[0]) + (data[1] * data[1]) + (data[2] * data[2]) + (data[3] * data[3]));

		data[0] *= invlen;
		data[1] *= invlen;
		data[2] *= invlen;
		data[3] *= invlen;
	}

	void Quat::print (void)
	{
		printf("%f %f %f %f\n\n", data[0], data[1], data[2], data[3]);
	}
}



#undef SET
