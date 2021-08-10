// rename variables
#define MUL(dst, left, right)\
\
	alignas(16) const __m128 l1 = _mm_load_ps(left);\
	alignas(16) const __m128 l2 = _mm_load_ps(left + 4);\
	alignas(16) const __m128 l3 = _mm_load_ps(left + 8);\
	alignas(16) const __m128 l4 = _mm_load_ps(left + 12);\
\
	alignas(16) __m128 r = _mm_load_ps(right);\
	alignas(16) __m128 col = _mm_mul_ps(l4, _mm_shuffle_ps(r, r, _MM_SHUFFLE(3, 3, 3, 3)));\
	col = _mm_add_ps(col, _mm_mul_ps(l3, _mm_shuffle_ps(r, r, _MM_SHUFFLE(2, 2, 2, 2))));\
	col = _mm_add_ps(col, _mm_mul_ps(l2, _mm_shuffle_ps(r, r, _MM_SHUFFLE(1, 1, 1, 1))));\
	col =  _mm_add_ps(col, _mm_mul_ps(l1, _mm_shuffle_ps(r, r, _MM_SHUFFLE(0, 0, 0, 0))));\
	_mm_store_ps(dst, col);\
\
	r = _mm_load_ps(right + 4);\
	col = _mm_mul_ps(l4, _mm_shuffle_ps(r, r, _MM_SHUFFLE(3, 3, 3, 3)));\
	col = _mm_add_ps(col, _mm_mul_ps(l3, _mm_shuffle_ps(r, r, _MM_SHUFFLE(2, 2, 2, 2))));\
	col = _mm_add_ps(col, _mm_mul_ps(l2, _mm_shuffle_ps(r, r, _MM_SHUFFLE(1, 1, 1, 1))));\
	col = _mm_add_ps(col, _mm_mul_ps(l1, _mm_shuffle_ps(r, r, _MM_SHUFFLE(0, 0, 0, 0))));\
	_mm_store_ps(dst + 4, col);\
\
	r = _mm_load_ps(right + 8);\
	col = _mm_mul_ps(l4, _mm_shuffle_ps(r, r, _MM_SHUFFLE(3, 3, 3, 3)));\
	col = _mm_add_ps(col, _mm_mul_ps(l3, _mm_shuffle_ps(r, r, _MM_SHUFFLE(2, 2, 2, 2))));\
	col = _mm_add_ps(col, _mm_mul_ps(l2, _mm_shuffle_ps(r, r, _MM_SHUFFLE(1, 1, 1, 1))));\
	col = _mm_add_ps(col, _mm_mul_ps(l1, _mm_shuffle_ps(r, r, _MM_SHUFFLE(0, 0, 0, 0))));\
	_mm_store_ps(dst + 8, col);\
\
	r = _mm_load_ps(right + 12);\
	col = _mm_mul_ps(l4, _mm_shuffle_ps(r, r, _MM_SHUFFLE(3, 3, 3, 3)));\
	col = _mm_add_ps(col, _mm_mul_ps(l3, _mm_shuffle_ps(r, r, _MM_SHUFFLE(2, 2, 2, 2))));\
	col = _mm_add_ps(col, _mm_mul_ps(l2, _mm_shuffle_ps(r, r, _MM_SHUFFLE(1, 1, 1, 1))));\
	col = _mm_add_ps(col, _mm_mul_ps(l1, _mm_shuffle_ps(r, r, _MM_SHUFFLE(0, 0, 0, 0))));\
	_mm_store_ps(dst + 12, col);

#define MAKE_ROTATION_FROM_QUAT(mat, quat)\
\
	alignas(16) const __m128 quat_m128 = _mm_load_ps(quat);\
\
	alignas(16) const __m128 x_x_y = _mm_shuffle_ps(quat_m128, quat_m128, _MM_SHUFFLE(0, 1, 0, 0));\
	alignas(16) const __m128 y_z_z = _mm_shuffle_ps(quat_m128, quat_m128, _MM_SHUFFLE(0, 2, 2, 1));\
	alignas(16) const __m128 z_y_x = _mm_shuffle_ps(quat_m128, quat_m128, _MM_SHUFFLE(0, 0, 1, 2));\
	alignas(16) const __m128 w_w_w = _mm_shuffle_ps(quat_m128, quat_m128, _MM_SHUFFLE(0, 3, 3, 3));\
\
	alignas(16) const __m128 xy_xz_yz = _mm_mul_ps(CONST_MUL, _mm_mul_ps(x_x_y, y_z_z));\
	alignas(16) const __m128 zw_yw_xw = _mm_mul_ps(CONST_MUL, _mm_mul_ps(z_y_x, w_w_w));\
	alignas(16) const __m128 sum = _mm_add_ps(xy_xz_yz, zw_yw_xw);\
	alignas(16) const __m128 dif = _mm_sub_ps(xy_xz_yz, zw_yw_xw);\
\
	alignas(16) const __m128 xx_yy_zz = _mm_mul_ps(CONST_MUL, _mm_mul_ps(quat_m128, quat_m128));\
	alignas(16) const __m128 yy_xx_xx = _mm_shuffle_ps(xx_yy_zz, xx_yy_zz, _MM_SHUFFLE(3, 0, 0, 1));\
	alignas(16) const __m128 zz_zz_yy = _mm_shuffle_ps(xx_yy_zz, xx_yy_zz, _MM_SHUFFLE(3, 1, 2, 2));\
	alignas(16) const __m128 pow = _mm_sub_ps(CONST_ONE, _mm_add_ps(yy_xx_xx, zz_zz_yy));\
\
	alignas(16) const __m128 sum_pow = _mm_shuffle_ps(sum, pow, _MM_SHUFFLE(0, 2, 0, 1));\
	alignas(16) const __m128 pow_dif = _mm_shuffle_ps(pow, dif, _MM_SHUFFLE(0, 1, 1, 0));\
	alignas(16) const __m128 dif_sum = _mm_shuffle_ps(dif, sum, _MM_SHUFFLE(1, 2, 2, 0));\
\
	mat[0] = _mm_shuffle_ps(sum_pow, dif, _MM_SHUFFLE(3, 1, 1, 3));\
	mat[1] = _mm_shuffle_ps(pow_dif, sum, _MM_SHUFFLE(3, 2, 1, 3));\
	mat[2] = _mm_shuffle_ps(dif_sum, pow, _MM_SHUFFLE(3, 2, 1, 3));\
	mat[3] = _mm_load_ps(CONST::IDENT_4);



#include "_intrin.h"
#include "mat4.h"



namespace XGK::MATH
{
	namespace CONST
	{
		alignas(16) extern const float IDENT_4 [4];
	}

	// rename
	alignas(16) const __m128 CONST_ONE { 1.0f, 1.0f, 1.0f, 0.0f };
	alignas(16) const __m128 CONST_MUL { 2.0f, 2.0f, 2.0f, 0.0f };
	// alignas(16) extern const __m128 CONST_MUL2 { 1.0f, -1.0f, 1.0f, -1.0f };



	void Mat4::mul128 (const void* left, const void* right)
	{
		float* _left = (float*) left;
		float* _right = (float*) right;

		MUL(data, _left, _right)
	}

	void Mat4::transp128 (void)
	{
		__m128* _this = (__m128*) this;

		alignas(16) __m128 a = _mm_shuffle_ps(_this[0], _this[1], _MM_SHUFFLE(1, 0, 1, 0));
		alignas(16) __m128 b = _mm_shuffle_ps(_this[2], _this[3], _MM_SHUFFLE(1, 0, 1, 0));
		alignas(16) __m128 c = _mm_shuffle_ps(_this[0], _this[1], _MM_SHUFFLE(3, 2, 3, 2));
		alignas(16) __m128 d = _mm_shuffle_ps(_this[2], _this[3], _MM_SHUFFLE(3, 2, 3, 2));

		_this[0] = _mm_shuffle_ps(a, b, _MM_SHUFFLE(2, 0, 2, 0));
		_this[1] = _mm_shuffle_ps(a, b, _MM_SHUFFLE(3, 1, 3, 1));
		_this[2] = _mm_shuffle_ps(c, d, _MM_SHUFFLE(2, 0, 2, 0));
		_this[3] = _mm_shuffle_ps(c, d, _MM_SHUFFLE(3, 1, 3, 1));
	}

	void Mat4::makeRotationFromQuat128 (const void* quat)
	{
		__m128* _this = (__m128*) this;
		const float* _quat = (const float*) quat;

		MAKE_ROTATION_FROM_QUAT(_this, _quat)
	}
}



#undef MAKE_ROTATION_FROM_QUAT
#undef MUL
