#include <cstdint>



#ifdef __EMSCRIPTEN__

	#define __SSE__ 1
	#define __SSE2__ 1
	#define __SSE3__ 1
	#include <SSE/immintrin.h>
#else

	#include <immintrin.h>
#endif



namespace XGK::DATA {

	extern const uint8_t FLOAT_SIZE_3 = sizeof(float) * 4;
	extern const uint8_t FLOAT_SIZE_4 = sizeof(float) * 4;
	extern const uint8_t FLOAT_SIZE_8 = sizeof(float) * 8;
	extern const uint8_t FLOAT_SIZE_12 = sizeof(float) * 12;
	extern const uint8_t FLOAT_SIZE_16 = sizeof(float) * 16;
};



namespace XGK::DATA::QUAT {

	alignas(16) extern const float CONST_IDENT[4] = { 0.0f, 0.0f, 0.0f, 1.0f };
	alignas(16) extern const __m128 CONST_MUL = { 1.0f, 1.0f, -1.0f, -1.0f };
	alignas(16) extern const __m128 CONST_MUL2 = { 1.0f, -1.0f, 1.0f, -1.0f };
};



namespace XGK::DATA::MAT4 {

	alignas(16) extern const __m128 IDENT_COL3 = { 0.0f, 0.0f, 0.0f, 1.0f };
	alignas(16) extern const __m128 CONST_MUL = { 2.0f, 2.0f, 2.0f, 0.0f };
	alignas(16) extern const __m128 CONST_ONE = { 1.0f, 1.0f, 1.0f, 0.0f };

	alignas(16) extern const float IDENT_12[12] = {

		1.0f, 0.0f, 0.0f, 0.0f,
		0.0f, 1.0f, 0.0f, 0.0f,
		0.0f, 0.0f, 1.0f, 0.0f
	};

	alignas(16) extern const float IDENT_16[16] = {
		1.0f, 0.0f, 0.0f, 0.0f,
		0.0f, 1.0f, 0.0f, 0.0f,
		0.0f, 0.0f, 1.0f, 0.0f,
		0.0f, 0.0f, 0.0f, 1.0f
	};
};
