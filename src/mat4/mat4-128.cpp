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
	_mm_store_ps(dst + 12, col);\



#include "_intrin.h"
#include "mat4.h"



namespace XGK::MATH
{
	void Mat4::mul128 (void* left, void* right)
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
}
