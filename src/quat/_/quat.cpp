#include <cstdint>
#include <cstring>
#include <cmath>



namespace XGK::MATH {

	extern const uint8_t FLOAT_SIZE_4;
}



namespace XGK::MATH::QUAT {

	alignas(16) extern const float CONST_IDENT[4];



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



	void (* premul)   (void*, void*)               = nullptr;
	void (* postmul)  (void*, void*)               = nullptr;
	void (* makeRot)  (void*, void*, const float)  = nullptr;
	void (* preRot)   (void*, void*, const float)  = nullptr;
	void (* postRot)  (void*, void*, const float)  = nullptr;
	void (* makeRotX) (void*, const float)         = nullptr;
	void (* preRotX)  (void*, const float)         = nullptr;
	void (* postRotX) (void*, const float)         = nullptr;
	void (* makeRotY) (void*, const float)         = nullptr;
	void (* preRotY)  (void*, const float)         = nullptr;
	void (* postRotY) (void*, const float)         = nullptr;
	void (* makeRotZ) (void*, const float)         = nullptr;
	void (* preRotZ)  (void*, const float)         = nullptr;
	void (* postRotZ) (void*, const float)         = nullptr;



	void ident (void* data) {

		memcpy(data, CONST_IDENT, FLOAT_SIZE_4);
	}



	// TODO simd
	float len (void* data) {

		float* data_f = (float*) data;

		return sqrt((data_f[0] * data_f[0]) + (data_f[1] * data_f[1]) + (data_f[2] * data_f[2]) + (data_f[3] * data_f[3]));
	}



	float lens (void* data) {

		float* data_f = (float*) data;

		return (data_f[0] * data_f[0]) + (data_f[1] * data_f[1]) + (data_f[2] * data_f[2]) + (data_f[3] * data_f[3]);
	}



	void norm (void* data) {

		float* data_f = (float*) data;

		// const float lens = (data_f[0] * data_f[0]) + (data_f[1] * data_f[1]) + (data_f[2] * data_f[2]) + (data_f[3] * data_f[3]);
		const float invlen = 1.0f / sqrt((data_f[0] * data_f[0]) + (data_f[1] * data_f[1]) + (data_f[2] * data_f[2]) + (data_f[3] * data_f[3]));

		data_f[0] *= invlen;
		data_f[1] *= invlen;
		data_f[2] *= invlen;
		data_f[3] *= invlen;
	}
	//



	void simd32 (void) {

		premul = premul32;
		postmul = postmul32;
		makeRot = makeRot32;
		preRot = preRot32;
		postRot = postRot32;
		makeRotX = makeRotX32;
		preRotX = preRotX32;
		postRotX = postRotX32;
		makeRotY = makeRotY32;
		preRotY = preRotY32;
		postRotY = postRotY32;
		makeRotZ = makeRotZ32;
		preRotZ = preRotZ32;
		postRotZ = postRotZ32;
	}

	void simd128 (void) {

		premul = premul128;
		postmul = postmul128;
		makeRot = makeRot128;
		preRot = preRot128;
		postRot = postRot128;
		makeRotX = makeRotX128;
		preRotX = preRotX128;
		postRotX = postRotX128;
		makeRotY = makeRotY128;
		preRotY = preRotY128;
		postRotY = postRotY128;
		makeRotZ = makeRotZ128;
		preRotZ = preRotZ128;
		postRotZ = postRotZ128;
	}
}
