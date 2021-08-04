#include <cmath>

#include "quat.h"



namespace XGK::DATA
{
	void Quat::premul32 (void* src)
	{
		const float* _src = (float*) src;

		const float x0 = data[0];
		const float y0 = data[1];
		const float z0 = data[2];
		const float w0 = data[3];

		data[0] = (_src[0] * w0) + (_src[3] * x0) + (_src[1] * z0) - (_src[2] * y0);
		data[1] = (_src[1] * w0) + (_src[3] * y0) + (_src[2] * x0) - (_src[0] * z0);
		data[2] = (_src[2] * w0) + (_src[3] * z0) + (_src[0] * y0) - (_src[1] * x0);
		data[3] = (_src[3] * w0) - (_src[0] * x0) - (_src[1] * y0) - (_src[2] * z0);
	}

	void Quat::postmul32 (void* src)
	{
		const float* _src = (float*) src;

		const float x0 = data[0];
		const float y0 = data[1];
		const float z0 = data[2];
		const float w0 = data[3];

		data[0] = (x0 * _src[3]) + (w0 * _src[0]) + (y0 * _src[2]) - (z0 * _src[1]);
		data[1] = (y0 * _src[3]) + (w0 * _src[1]) + (z0 * _src[0]) - (x0 * _src[2]);
		data[2] = (z0 * _src[3]) + (w0 * _src[2]) + (x0 * _src[1]) - (y0 * _src[0]);
		data[3] = (w0 * _src[3]) - (x0 * _src[0]) - (y0 * _src[1]) - (z0 * _src[2]);
	}

	void Quat::makeRot32 (void* axis_addr, const float& angle)
	{
		float* axis_addr_float = (float*) axis_addr;

		const float angle_half = angle * 0.5f;
		const float _sin = sin(angle_half);

		data[0] = axis_addr_float[0] * _sin;
		data[1] = axis_addr_float[1] * _sin;
		data[2] = axis_addr_float[2] * _sin;
		data[3] = cos(angle_half);
	}

	void Quat::preRot32 (void* axis_addr, const float& angle)
	{
		float* axis_addr_float = (float*) axis_addr;

		const float angle_half = angle * 0.5f;
		const float _sin = sin(angle_half);

		const float x0 = data[0];
		const float y0 = data[1];
		const float z0 = data[2];
		const float w0 = data[3];

		const float x1 = axis_addr_float[0] * _sin;
		const float y1 = axis_addr_float[1] * _sin;
		const float z1 = axis_addr_float[2] * _sin;
		const float w1 = cos(angle_half);

		data[0] = (x1 * w0) + (w1 * x0) + (y1 * z0) - (z1 * y0);
		data[1] = (y1 * w0) + (w1 * y0) + (z1 * x0) - (x1 * z0);
		data[2] = (z1 * w0) + (w1 * z0) + (x1 * y0) - (y1 * x0);
		data[3] = (w1 * w0) - (x1 * x0) - (y1 * y0) - (z1 * z0);
	}

	void Quat::postRot32 (void* axis_addr, const float& angle)
	{
		float* axis_addr_float = (float*) axis_addr;

		const float angle_half = angle * 0.5f;
		const float _sin = sin(angle_half);

		const float x0 = data[0];
		const float y0 = data[1];
		const float z0 = data[2];
		const float w0 = data[3];

		const float x1 = axis_addr_float[0] * _sin;
		const float y1 = axis_addr_float[1] * _sin;
		const float z1 = axis_addr_float[2] * _sin;
		const float w1 = cos(angle_half);

		data[0] = (x0 * w1) + (w0 * x1) + (y0 * z1) - (z0 * y1);
		data[1] = (y0 * w1) + (w0 * y1) + (z0 * x1) - (x0 * z1);
		data[2] = (z0 * w1) + (w0 * z1) + (x0 * y1) - (y0 * x1);
		data[3] = (w0 * w1) - (x0 * x1) - (y0 * y1) - (z0 * z1);
	}

	void Quat::makeRotX32 (const float& angle)
	{
		const float angle_half = angle * 0.5f;

		data[0] = sin(angle_half);
		data[1] = 0.0f;
		data[2] = 0.0f;
		data[3] = cos(angle_half);
	}

	void Quat::preRotX32 (const float& angle)
	{
		const float angle_half = angle * 0.5f;

		const float x0 = data[0];
		const float y0 = data[1];
		const float z0 = data[2];
		const float w0 = data[3];

		const float x1 = sin(angle_half);
		const float w1 = cos(angle_half);

		// data[0] = (x1 * w0) + (w1 * x0);
		data[0] = (w1 * x0) + (x1 * w0);
		data[1] = (w1 * y0) - (x1 * z0);
		data[2] = (w1 * z0) + (x1 * y0);
		data[3] = (w1 * w0) - (x1 * x0);
	}

	void Quat::postRotX32 (const float& angle)
	{
		const float angle_half = angle * 0.5f;

		const float x0 = data[0];
		const float y0 = data[1];
		const float z0 = data[2];
		const float w0 = data[3];

		const float x1 = sin(angle_half);
		const float w1 = cos(angle_half);

		data[0] = (x0 * w1) + (w0 * x1);
		data[1] = (y0 * w1) + (z0 * x1);
		data[2] = (z0 * w1) - (y0 * x1);
		data[3] = (w0 * w1) - (x0 * x1);
	}

	void Quat::makeRotY32 (const float& angle)
	{
		const float angle_half = angle * 0.5f;

		data[0] = 0.0f;
		data[1] = sin(angle_half);
		data[2] = 0.0f;
		data[3] = cos(angle_half);
	}

	void Quat::preRotY32 (const float& angle)
	{
		const float angle_half = angle * 0.5f;

		const float x0 = data[0];
		const float y0 = data[1];
		const float z0 = data[2];
		const float w0 = data[3];

		const float y1 = sin(angle_half);
		const float w1 = cos(angle_half);

		data[0] = (w1 * x0) + (y1 * z0);
		data[1] = (w1 * y0) + (y1 * w0);
		data[2] = (w1 * z0) - (y1 * x0);
		data[3] = (w1 * w0) - (y1 * y0);
	}

	void Quat::postRotY32 (const float& angle)
	{
		const float angle_half = angle * 0.5f;

		const float x0 = data[0];
		const float y0 = data[1];
		const float z0 = data[2];
		const float w0 = data[3];

		const float y1 = sin(angle_half);
		const float w1 = cos(angle_half);

		data[0] = (x0 * w1) - (z0 * y1);
		data[1] = (y0 * w1) + (w0 * y1);
		data[2] = (z0 * w1) + (x0 * y1);
		data[3] = (w0 * w1) - (y0 * y1);
	}

	void Quat::makeRotZ32 (const float& angle)
	{
		const float angle_half = angle * 0.5f;

		data[0] = 0.0f;
		data[1] = 0.0f;
		data[2] = sin(angle_half);
		data[3] = cos(angle_half);
	}

	void Quat::preRotZ32 (const float& angle)
	{
		const float angle_half = angle * 0.5f;

		const float x0 = data[0];
		const float y0 = data[1];
		const float z0 = data[2];
		const float w0 = data[3];

		const float z1 = sin(angle_half);
		const float w1 = cos(angle_half);

		data[0] = (w1 * x0) - (z1 * y0);
		data[1] = (w1 * y0) + (z1 * x0);
		data[2] = (w1 * z0) + (z1 * w0);
		data[3] = (w1 * w0) - (z1 * z0);
	}

	void Quat::postRotZ32 (const float& angle)
	{
		const float angle_half = angle * 0.5f;

		const float x0 = data[0];
		const float y0 = data[1];
		const float z0 = data[2];
		const float w0 = data[3];

		const float z1 = sin(angle_half);
		const float w1 = cos(angle_half);

		data[0] = (x0 * w1) + (y0 * z1);
		data[1] = (y0 * w1) - (x0 * z1);
		data[2] = (z0 * w1) + (w0 * z1);
		data[3] = (w0 * w1) - (z0 * z1);
	}
}
