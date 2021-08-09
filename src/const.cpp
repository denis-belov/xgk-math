#include <cstdint>

#include "_intrin.h"



namespace XGK::MATH::CONST
{
	extern const uint8_t FLOAT_SIZE_3 = sizeof(float) * 3;
	extern const uint8_t FLOAT_SIZE_4 = sizeof(float) * 4;
	extern const uint8_t FLOAT_SIZE_8 = sizeof(float) * 8;
	extern const uint8_t FLOAT_SIZE_12 = sizeof(float) * 12;
	extern const uint8_t FLOAT_SIZE_16 = sizeof(float) * 16;

	alignas(16) extern const float ZERO_4 [4] { 0.0f, 0.0f, 0.0f, 0.0f };
	alignas(16) extern const float IDENT_4 [4] { 0.0f, 0.0f, 0.0f, 1.0f };

	// alignas(16) extern const __m128 CONST_MUL = { 1.0f, 1.0f, -1.0f, -1.0f };
	// alignas(16) extern const __m128 CONST_MUL2 = { 1.0f, -1.0f, 1.0f, -1.0f };
}
