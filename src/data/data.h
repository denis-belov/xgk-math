#ifndef XGK_MACRO_DATA_NO_INLINE_FUNCTIONS

	#include "vec4/vec4.h"
	#include "vec4/vec4-32.h"
	#include "vec4/vec4-128.h"
	#include "quat/quat.h"
	#include "quat/quat-32.h"
	#include "quat/quat-128.h"
	#include "mat4/mat4.h"
	#include "mat4/mat4-32.h"
	#include "mat4/mat4-128.h"
#endif



namespace XGK::DATA::VEC4 {

	// Element #3 of translation vector must be 0.

	extern void (* set)  (void*, const float, const float, const float, const float);
	extern void (* add)  (void*, void*);
	extern void (* adds) (void*, const float);
	extern void (* sub)  (void*, void*);
	extern void (* subs) (void*, const float);
	extern void (* mul)  (void*, void*);
	extern void (* muls) (void*, const float);
	extern void (* div)  (void*, void*);
	extern void (* divs) (void*, const float);
	extern void (* norm) (void*);



	void simd32  (void);
	void simd128 (void);
	void print   (void*);



	// struct Vec4 {

	// 	float data[4];

	// 	// constructors



	// 	void copy (void* src) { XGK::DATA::VEC4::copy(data, src); };
	// 	void reset () { XGK::DATA::VEC4::reset(data); };
	// 	float len () { XGK::DATA::VEC4::len(data); };
	// 	void norm () { XGK::DATA::VEC4::norm(data); };
	// 	void print () { XGK::DATA::VEC4::print(data); };

	// 	// void set32 (void*, const float, const float, const float, const float);
	// 	// void add32 (void*, void*);
	// 	// void adds32 (void*, const float);
	// 	// void sub32 (void*, void*);
	// 	// void subs32 (void*, const float);
	// 	// void mul32 (void*, void*);
	// 	// void muls32 (void*, const float);
	// 	// void div32 (void*, void*);
	// 	// void divs32 (void*, const float);

	// 	// void set128 (void*, const float, const float, const float, const float);
	// 	// void add128 (void*, void*);
	// 	// void adds128 (void*, const float);
	// 	// void sub128 (void*, void*);
	// 	// void subs128 (void*, const float);
	// 	// void mul128 (void*, void*);
	// 	// void muls128 (void*, const float);
	// 	// void div128 (void*, void*);
	// 	// void divs128 (void*, const float);

	// 	// void simd32 (void);
	// 	// void simd128 (void);
	// };
};



namespace XGK::DATA::QUAT {

	extern void (* premul)   (void*, void*);
	extern void (* postmul)  (void*, void*);
	extern void (* makeRot)  (void*, void*, const float);
	extern void (* preRot)   (void*, void*, const float);
	extern void (* postRot)  (void*, void*, const float);
	extern void (* makeRotX) (void*, const float);
	extern void (* preRotX)  (void*, const float);
	extern void (* postRotX) (void*, const float);
	extern void (* makeRotY) (void*, const float);
	extern void (* preRotY)  (void*, const float);
	extern void (* postRotY) (void*, const float);
	extern void (* makeRotZ) (void*, const float);
	extern void (* preRotZ)  (void*, const float);
	extern void (* postRotZ) (void*, const float);



	void simd32  (void);
	void simd128 (void);
};



namespace XGK::DATA::MAT4 {

	// Elements #3, #7, #11 of transformation matrix must be 0.
	// Element #15 of transformation matrix must be 1.

	extern void (* set)            (

		void*,
		const float, const float, const float, const float,
		const float, const float, const float, const float,
		const float, const float, const float, const float,
		const float, const float, const float, const float
	);
	extern void (* premul)         (void*, void*);
	extern void (* postmul)        (void*, void*);
	extern void (* makeTrans)      (void*, void*);
	extern void (* preTrans)       (void*, void*);
	extern void (* postTrans)      (void*, void*);
	extern void (* makeTransValue) (void*, void*, const float);
	extern void (* preTransValue)  (void*, void*, const float);
	extern void (* postTransValue) (void*, void*, const float);
	extern void (* makeRotQuat)    (void*, void*);
	extern void (* preRotQuat)     (void*, void*);
	extern void (* postRotQuat)    (void*, void*);
	extern void (* transp)         (void*);
	extern void (* invns)          (void*);
	extern void (* makeProjPersp)  (void*, const float, const float, const float, const float, const float);



	void simd32  (void);
	void simd128 (void);
	void print  (void*);
};



namespace XGK::DATA {

	inline void simd32 (void) {

		VEC4::simd32();
		QUAT::simd32();
		MAT4::simd32();
	};

	inline void simd128 (void) {

		VEC4::simd128();
		QUAT::simd128();
		MAT4::simd128();
	};
};
