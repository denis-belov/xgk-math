#ifndef __XGK_MATH_INTRIN__
#define __XGK_MATH_INTRIN__



#ifdef __wasm__
	#define __SSE__
	#define __SSE2__
	#define __SSE3__
	// #include <compat/immintrin.h>
	#include <wasm_simd128.h>
#else
	#include <immintrin.h>
#endif



#endif
