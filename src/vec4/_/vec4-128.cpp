#include <cmath>



#ifdef __EMSCRIPTEN__

	#define __SSE__ 1
	#define __SSE2__ 1
	#define __SSE3__ 1
	#include <SSE/immintrin.h>
#else

	#include <immintrin.h>
#endif



// struct Vec4 {

// 	union {

// 		float _32[4];

// 		__m128 _128;

// 		struct {

// 			float x;
// 			float y;
// 			float z;
// 			float w;
// 		}
// 	} data;

// 	Vec4 (void) {

// 		x = 0.0f;
// 		y = 0.0f;
// 		z = 0.0f;
// 		w = 0.0f;
// 	}



// 	set (

// 		const float x,
// 		const float y,
// 		const float z,
// 		const float w
// 	) {

// 		_mm_store_ps(data._32, _mm_setr_ps(x, y, z, w));
// 	}
// }



namespace XGK::MATH::VEC4 {

	void set128 (void* data, const float x, const float y, const float z, const float w) {

		float* data_addr_float = reinterpret_cast<float*>(data);

		_mm_store_ps((float*) data, _mm_setr_ps(x, y, z, w));
	}



	void add128 (void* data_addr1, void* data_addr2) {

		float* data_addr_float1 = (float*) data_addr1;

		alignas(16) __m128 data_m128_1 = *((__m128*) data_addr1);
		alignas(16) __m128 data_m128_2 = *((__m128*) data_addr2);

		alignas(16) __m128 result = _mm_add_ps(data_m128_1, data_m128_2);

		_mm_store_ps(data_addr_float1, result);
	}



	void adds128 (void* data, const float s) {

		alignas(16) __m128 _data = *((__m128*) data);

		_mm_store_ps((float*) data, _mm_add_ps(_data, _mm_set1_ps(s)));
	}



	void sub128 (void* data0, void* data1) {

		alignas(16) __m128 _data0 = *((__m128*) data0);
		alignas(16) __m128 _data1 = *((__m128*) data1);

		_mm_store_ps((float*) data0, _mm_sub_ps(_data0, _data1));
	}



	void subs128 (void* data, const float s) {

		alignas(16) __m128 _data = *((__m128*) data);

		_mm_store_ps((float*) data, _mm_sub_ps(_data, _mm_set1_ps(s)));
	}



	void mul128 (void* data0, void* data1) {

		alignas(16) __m128 _data0 = *((__m128*) data0);
		alignas(16) __m128 _data1 = *((__m128*) data1);

		_mm_store_ps((float*) data0, _mm_mul_ps(_data0, _data1));
	}



	void muls128 (void* data, const float s) {

		alignas(16) __m128 _data = *((__m128*) data);

		_mm_store_ps((float*) data, _mm_mul_ps(_data, _mm_set1_ps(s)));
	}



	void div128 (void* data0, void* data1) {

		alignas(16) __m128 _data0 = *((__m128*) data0);
		alignas(16) __m128 _data1 = *((__m128*) data1);

		_mm_store_ps((float*) data0, _mm_div_ps(_data0, _data1));
	}



	void divs128 (void* data, const float s) {

		alignas(16) __m128 _data = *((__m128*) data);

		_mm_store_ps(

			(float*) data,
			_mm_div_ps(_data, _mm_set1_ps(s))
		);
	}



	void norm128 (void* data) {

		float* data_addr_float = (float*) data;

		alignas(16) __m128 _data = *((__m128*) data);

		float len = sqrt(

			(data_addr_float[0] * data_addr_float[0]) +
			(data_addr_float[1] * data_addr_float[1]) +
			(data_addr_float[2] * data_addr_float[2]) +
			(data_addr_float[3] * data_addr_float[3])
		);

		_mm_store_ps(

			(float*) data,
			_mm_div_ps(_data, _mm_set1_ps(len))
		);
	}
}
