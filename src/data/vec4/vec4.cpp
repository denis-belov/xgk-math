#define SET(x, y, z, w) data[0] = x; data[1] = y; data[2] = z; data[3] = w;



#include <cstdint>
#include <cstring>
#include <cstdio>
#include <cmath>

#include "vec4.h"



namespace XGK::DATA
{
	extern const uint8_t FLOAT_SIZE_4;

	alignas(16) const float ZERO_4 [4] { 0.0f, 0.0f, 0.0f, 0.0f };



	Vec4::Vec4 (void)
	{
		memcpy(data, ZERO_4, FLOAT_SIZE_4);

		// // compare performance with
		// memset(data, 0, FLOAT_SIZE_4);
	}

	Vec4::Vec4 (void* src)
	{
		memcpy(data, src, FLOAT_SIZE_4);
	}

	Vec4::Vec4 (const Vec4& src)
	{
		memcpy(data, &src, FLOAT_SIZE_4);
	}

	Vec4::Vec4 (const Vec4&& src)
	{
		memcpy(data, &src, FLOAT_SIZE_4);
	}

	Vec4::Vec4 (std::initializer_list<float> list)
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

	Vec4::~Vec4 (void) {}



	void Vec4::operator = (void* src)
	{
		memcpy(data, src, FLOAT_SIZE_4);
	}

	void Vec4::operator = (const Vec4& src)
	{
		memcpy(data, &src, FLOAT_SIZE_4);
	}

	void Vec4::operator = (const Vec4&& src)
	{
		memcpy(data, &src, FLOAT_SIZE_4);
	}



	void Vec4::reset (void)
	{
		memcpy(data, ZERO_4, FLOAT_SIZE_4);
	}

	void Vec4::set (const float& x, const float& y, const float& z, const float& w)
	{
		SET(x, y, z, w)
	}

	void Vec4::add (void* src)
	{
		float* _src = (float*) src;

		data[0] += _src[0];
		data[1] += _src[1];
		data[2] += _src[2];
		data[3] += _src[3];
	}

	void Vec4::adds (const float& s)
	{
		data[0] += s;
		data[1] += s;
		data[2] += s;
		data[3] += s;
	}

	void Vec4::sub (void* src)
	{
		float* _src = (float*) src;

		data[0] -= _src[0];
		data[1] -= _src[1];
		data[2] -= _src[2];
		data[3] -= _src[3];
	}

	void Vec4::subs (const float& s)
	{
		data[0] -= s;
		data[1] -= s;
		data[2] -= s;
		data[3] -= s;
	}

	void Vec4::mul (void* src)
	{
		float* _src = (float*) src;

		data[0] *= _src[0];
		data[1] *= _src[1];
		data[2] *= _src[2];
		data[3] *= _src[3];
	}

	void Vec4::muls (const float& s)
	{
		data[0] *= s;
		data[1] *= s;
		data[2] *= s;
		data[3] *= s;
	}

	void Vec4::div (void* src)
	{
		float* _src = (float*) src;

		data[0] /= _src[0];
		data[1] /= _src[1];
		data[2] /= _src[2];
		data[3] /= _src[3];
	}

	void Vec4::divs (const float& s)
	{
		data[0] /= s;
		data[1] /= s;
		data[2] /= s;
		data[3] /= s;
	}

	void Vec4::norm (void)
	{
		float len =
			sqrt
			(
				(data[0] * data[0]) +
				(data[1] * data[1]) +
				(data[2] * data[2]) +
				(data[3] * data[3])
			);

		data[0] /= len;
		data[1] /= len;
		data[2] /= len;
		data[3] /= len;
	}

	void Vec4::print (void)
	{
		printf("%f %f %f %f\n\n", data[0], data[1], data[2], data[3]);
	}
}



#undef SET
