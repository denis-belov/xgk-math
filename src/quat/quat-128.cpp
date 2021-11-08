//   + AwBx + AxBw + AyBz (*  1) + AzBy (* -1)
//   + AwBy - AxBz + AyBw (*  1) + AzBx (*  1)
//   + AwBz + AxBy + AyBx (* -1) + AzBw (*  1)
//   + AwBw - AxBx + AyBy (* -1) + AzBz (* -1)



#include <cmath>

#include "_intrin.h"

#ifdef __wasm__
	#define MUL(left, right)\
	\
		alignas(16) const __m128 right_128 = wasm_v128_load(right);\
	\
		alignas(16) const __m128 a = __builtin_wasm_shuffle_v8x16(right_128, right_128, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15);\
		alignas(16) const __m128 b = __builtin_wasm_shuffle_v8x16(right_128, right_128, 4, 5, 6, 7, 0, 1, 2, 3, 12, 13, 14, 15, 8, 9, 10, 11);\
		alignas(16) const __m128 c = __builtin_wasm_shuffle_v8x16(right_128, right_128, 8, 9, 10, 11, 12, 13, 14, 15, 0, 1, 2, 3, 4, 5, 6, 7);\
	\
		alignas(16) const __m128 d = wasm_f32x4_mul(a, wasm_v128_load(&left[3]));\
		alignas(16) const __m128 e = wasm_f32x4_mul(right_128, wasm_v128_load(&left[0]));\
		alignas(16) const __m128 f = wasm_f32x4_mul(b, wasm_v128_load(&left[1]));\
		alignas(16) const __m128 g = wasm_f32x4_mul(c, wasm_v128_load(&left[2]));\
	\
		alignas(16) __m128 h = _mm_addsub_ps(d, e);\
		h = __builtin_wasm_shuffle_v8x16(h, h, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15);\
		alignas(16) const __m128 i = wasm_f32x4_mul(_mm_addsub_ps(f, g), CONST_MUL);\
		alignas(16) const __m128 j = wasm_f32x4_add(h, i);\
	\
		_mm_store_ps(data, j);
#else
	#define MUL(left, right)\
	\
		alignas(16) const __m128 right_128 = _mm_load_ps(right);\
	\
		alignas(16) const __m128 a = _mm_shuffle_ps(right_128, right_128, _MM_SHUFFLE(0, 1, 2, 3));\
		alignas(16) const __m128 b = _mm_shuffle_ps(right_128, right_128, _MM_SHUFFLE(1, 0, 3, 2));\
		alignas(16) const __m128 c = _mm_shuffle_ps(right_128, right_128, _MM_SHUFFLE(2, 3, 0, 1));\
	\
		alignas(16) const __m128 d = _mm_mul_ps(a, _mm_load_ps1(&left[3]));\
		alignas(16) const __m128 e = _mm_mul_ps(right_128, _mm_load_ps1(&left[0]));\
		alignas(16) const __m128 f = _mm_mul_ps(b, _mm_load_ps1(&left[1]));\
		alignas(16) const __m128 g = _mm_mul_ps(c, _mm_load_ps1(&left[2]));\
	\
		alignas(16) __m128 h = _mm_addsub_ps(d, e);\
		h = _mm_shuffle_ps(h, h, _MM_SHUFFLE(0, 1, 2, 3));\
		alignas(16) const __m128 i = _mm_mul_ps(_mm_addsub_ps(f, g), CONST_MUL);\
		alignas(16) const __m128 j = _mm_add_ps(h, i);\
	\
		_mm_store_ps(data, j);
#endif

#include "quat.h"



namespace XGK::MATH
{
	alignas(16) const __m128 CONST_MUL { 1.0f, 1.0f, -1.0f, -1.0f };



	void Quat::mul128 (const void* left, const void* right)
	{
		const float* _left { (const float*) left };
		const float* _right { (const float*) right };

		MUL(_left, _right);
	}

	// src == left
	void Quat::premul128 (const void* src)
	{
		const float* _src { (const float*) src };

		MUL(_src, data);
	}

	// src == right
	void Quat::postmul128 (const void* src)
	{
		const float* _src { (const float*) src };

		MUL(data, _src);
	}

	void Quat::makeRot128 (const void* axis, const float& angle)
	{
		const float* _axis { static_cast<const float*>(axis) };

		const float angle_half { angle * 0.5f };

		alignas(16) __m128 data_128 { _mm_mul_ps(_mm_load_ps(_axis), _mm_set1_ps(sin(angle_half))) };

		float* data_32 { (float*) &data_128 };

		data_32[3] = cos(angle_half);

		_mm_store_ps(data, data_128);
	}

	void Quat::preRot128 (const void* axis, const float& angle)
	{
		// left
		const float* _axis = static_cast<const float*>(axis);

		const float angle_half = angle * 0.5f;

		alignas(16) __m128 data_128 = _mm_mul_ps(_mm_load_ps(_axis), _mm_set1_ps(sin(angle_half)));

		float* data_32 = (float*) &data_128;

		data_32[3] = cos(angle_half);
		//

		MUL(data_32, data);
	}

	void Quat::postRot128 (const void* axis, const float& angle)
	{
		// right
		const float* _axis = static_cast<const float*>(axis);

		const float angle_half = angle * 0.5f;

		alignas(16) __m128 data_128 = _mm_mul_ps(_mm_load_ps(_axis), _mm_set1_ps(sin(angle_half)));

		float* data_32 = (float*) &data_128;

		data_32[3] = cos(angle_half);
		//

		MUL(data, data_32);
	}

	void Quat::preRotX128 (const float& angle)
	{
		const float angle_half = angle * 0.5f;
		const float x = sin(angle_half);
		const float w = cos(angle_half);

		alignas(16) const __m128 x_x_x_x { x, -x, x, -x };
		alignas(16) const __m128 w_w_w_w { w, w, w, w };

		alignas(16) const __m128 a = _mm_mul_ps(w_w_w_w, _mm_load_ps(data));
		alignas(16) const __m128 b = _mm_mul_ps(x_x_x_x, _mm_loadr_ps(data));
		alignas(16) const __m128 c = _mm_add_ps(a, b);

		_mm_store_ps(data, c);
	}

	void Quat::postRotX128 (const float& angle)
	{
		const float angle_half = angle * 0.5f;
		const float x = sin(angle_half);
		const float w = cos(angle_half);

		alignas(16) const __m128 x_x_x_x { x, x, -x, -x };
		alignas(16) const __m128 w_w_w_w { w, w, w, w };

		alignas(16) const __m128 a = _mm_mul_ps(w_w_w_w, _mm_load_ps(data));
		alignas(16) const __m128 b = _mm_mul_ps(x_x_x_x, _mm_loadr_ps(data));
		alignas(16) const __m128 c = _mm_add_ps(a, b);

		_mm_store_ps(data, c);
	}

	void Quat::preRotY128 (const float& angle)
	{
		alignas(16) const __m128 data_128 = _mm_load_ps(data);

		const float angle_half = angle * 0.5f;
		const float y = sin(angle_half);
		const float w = cos(angle_half);

		alignas(16) const __m128 y_y_y_y { y, y, -y, -y };
		alignas(16) const __m128 w_w_w_w { w, w, w, w };

		alignas(16) const __m128 a = _mm_mul_ps(w_w_w_w, _mm_load_ps(data));
		alignas(16) const __m128 b = _mm_mul_ps(y_y_y_y, _mm_shuffle_ps(data_128, data_128, _MM_SHUFFLE(1, 0, 3, 2)));
		alignas(16) const __m128 c = _mm_add_ps(a, b);

		_mm_store_ps(data, c);
	}

	void Quat::postRotY128 (const float& angle)
	{
		alignas(16) const __m128 data_128 = _mm_load_ps(data);

		const float angle_half = angle * 0.5f;
		const float y = sin(angle_half);
		const float w = cos(angle_half);

		alignas(16) const __m128 y_y_y_y { -y, y, y, -y };
		alignas(16) const __m128 w_w_w_w { w, w, w, w };

		alignas(16) const __m128 a = _mm_mul_ps(w_w_w_w, _mm_load_ps(data));
		alignas(16) const __m128 b = _mm_mul_ps(y_y_y_y, _mm_shuffle_ps(data_128, data_128, _MM_SHUFFLE(1, 0, 3, 2)));
		alignas(16) const __m128 c = _mm_add_ps(a, b);

		_mm_store_ps(data, c);
	}

	void Quat::preRotZ128 (const float& angle)
	{
		alignas(16) const __m128 data_128 = _mm_load_ps(data);

		const float angle_half = angle * 0.5f;
		const float z = sin(angle_half);
		const float w = cos(angle_half);

		alignas(16) const __m128 z_z_z_z { -z, z, z, -z };
		alignas(16) const __m128 w_w_w_w { w, w, w, w };

		alignas(16) const __m128 a = _mm_mul_ps(w_w_w_w, _mm_load_ps(data));
		alignas(16) const __m128 b = _mm_mul_ps(z_z_z_z, _mm_shuffle_ps(data_128, data_128, _MM_SHUFFLE(2, 3, 0, 1)));
		alignas(16) const __m128 c = _mm_add_ps(a, b);

		_mm_store_ps(data, c);
	}



	void Quat::postRotZ128 (const float& angle)
	{
		alignas(16) const __m128 data_128 = _mm_load_ps(data);

		const float angle_half = angle * 0.5f;
		const float z = sin(angle_half);
		const float w = cos(angle_half);

		alignas(16) const __m128 z_z_z_z { z, -z, z, -z };
		alignas(16) const __m128 w_w_w_w { w, w, w, w };

		alignas(16) const __m128 a = _mm_mul_ps(w_w_w_w, _mm_load_ps(data));
		alignas(16) const __m128 b = _mm_mul_ps(z_z_z_z, _mm_shuffle_ps(data_128, data_128, _MM_SHUFFLE(2, 3, 0, 1)));
		alignas(16) const __m128 c = _mm_add_ps(a, b);

		_mm_store_ps(data, c);
	}
}



#undef MUL
