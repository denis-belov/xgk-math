#ifndef __XGK_MATH_INTRIN__
#define __XGK_MATH_INTRIN__



#ifdef __EMSCRIPTEN__
	#define __SSE__ 1
	#define __SSE2__ 1
	#define __SSE3__ 1
	#include <compat/immintrin.h>
	// #include <wasm_simd128.h>
#else
	#include <immintrin.h>
#endif



#endif
