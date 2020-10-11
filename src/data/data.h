namespace XGK::DATA::VEC4 {

	// Element #3 of translation vector must be 0.

	void set32 (void*, const float, const float, const float, const float);
	void add32 (void*, void*);
	void adds32 (void*, const float);
	void sub32 (void*, void*);
	void subs32 (void*, const float);
	void mul32 (void*, void*);
	void muls32 (void*, const float);
	void div32 (void*, void*);
	void divs32 (void*, const float);
	void norm32 (void*);

	void set128 (void*, const float, const float, const float, const float);
	void add128 (void*, void*);
	void adds128 (void*, const float);
	void sub128 (void*, void*);
	void subs128 (void*, const float);
	void mul128 (void*, void*);
	void muls128 (void*, const float);
	void div128 (void*, void*);
	void divs128 (void*, const float);
	void norm128 (void*);

	void copy (void*, void*);
	void reset (void*);
	float len (void*);
	float lens (void*);
	void simd32 (void);
	void simd128 (void);
	void print (void*);

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
};



namespace XGK::DATA::QUAT {

	void premul32 (void*, void*);
	void postmul32 (void*, void*);
	void makeRot32 (void*, void*, const float);
	void preRot32 (void*, void*, const float);
	void postRot32 (void*, void*, const float);
	void makeRotX32 (void*, const float);
	void preRotX32 (void*, const float);
	void postRotX32 (void*, const float);
	void makeRotY32 (void*, const float);
	void preRotY32 (void*, const float);
	void postRotY32 (void*, const float);
	void makeRotZ32 (void*, const float);
	void preRotZ32 (void*, const float) ;
	void postRotZ32 (void*, const float);

	void premul128 (void*, void*);
	void postmul128 (void*, void*);
	void makeRot128 (void*, void*, const float);
	void preRot128 (void*, void*, const float);
	void postRot128 (void*, void*, const float);
	void makeRotX128 (void*, const float);
	void preRotX128 (void*, const float);
	void postRotX128 (void*, const float);
	void makeRotY128 (void*, const float);
	void preRotY128 (void*, const float);
	void postRotY128 (void*, const float);
	void makeRotZ128 (void*, const float);
	void preRotZ128 (void*, const float) ;
	void postRotZ128 (void*, const float);

	void ident (void*);
	float len (void*);
	float lens (void*);
	void norm (void*);
	void simd32 (void);
	void simd128 (void);

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
};



namespace XGK::DATA::MAT4 {

	// Elements #3, #7, #11 of transformation matrix must be 0.
	// Element #15 of transformation matrix must be 1.

	void set32 (

		void*,

		const float, const float, const float, const float,
		const float, const float, const float, const float,
		const float, const float, const float, const float,
		const float, const float, const float, const float
	);
	void premul32 (void*, void*);
	void postmul32 (void*, void*);
	void makeTrans32 (void*, void*);
	void preTrans32 (void*, void*);
	void postTrans32 (void*, void*);
	void makeTransValue32 (void*, void*, const float);
	void preTransValue32 (void*, void*, const float);
	void postTransValue32 (void*, void*, const float);
	void makeRotQuat32 (void*, void*);
	void preRotQuat32 (void*, void*);
	void postRotQuat32 (void*, void*);
	void transp32 (void*);
	void invns32 (void*);
	void makeProjPersp32 (void*, const float, const float, const float, const float, const float);

	void set128 (

		void*,

		const float, const float, const float, const float,
		const float, const float, const float, const float,
		const float, const float, const float, const float,
		const float, const float, const float, const float
	);
	void premul128 (void*, void*);
	void postmul128 (void*, void*);
	void makeTrans128 (void*, void*);
	void preTrans128 (void*, void*);
	void postTrans128 (void*, void*);
	void makeTransValue128 (void*, void*, const float);
	void preTransValue128 (void*, void*, const float);
	void postTransValue128 (void*, void*, const float);
	void makeRotQuat128 (void*, void*);
	void preRotQuat128 (void*, void*);
	void postRotQuat128 (void*, void*);
	void transp128 (void*);
	void invns128 (void*);
	void makeProjPersp128 (void*, const float, const float, const float, const float, const float);

	void copy (void*, void*);
	void reset (void*);
	void ident (void*);
	void simd32 (void);
	void simd128 (void);
	void print (void*);

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
};



// namespace XGK::DATA {

// 	void simd32 (void) {

// 		VEC4::simd32();
// 		QUAT::simd32();
// 		MAT4::simd32();
// 	};

// 	void simd128 (void) {

// 		VEC4::simd128();
// 		QUAT::simd128();
// 		MAT4::simd128();
// 	};
// };
