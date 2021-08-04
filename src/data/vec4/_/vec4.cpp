// These functions can be used with float[4] and __m128 data storages (4-dim vectors, quaternions).
// Data should be aligned with 16-byte alignment for better performance.

#include <cstdio>
#include <cstring>
#include <cstdint>
#include <cmath>



namespace XGK::DATA {

	extern const uint8_t FLOAT_SIZE_4;
}



namespace XGK::DATA::VEC4 {

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



	void (* set)  (void*, const float, const float, const float, const float) = nullptr;
	void (* add)  (void*, void*)                                              = nullptr;
	void (* adds) (void*, const float)                                        = nullptr;
	void (* sub)  (void*, void*)                                              = nullptr;
	void (* subs) (void*, const float)                                        = nullptr;
	void (* mul)  (void*, void*)                                              = nullptr;
	void (* muls) (void*, const float)                                        = nullptr;
	void (* div)  (void*, void*)                                              = nullptr;
	void (* divs) (void*, const float)                                        = nullptr;
	void (* norm) (void*)                                                     = nullptr;



	void copy (void* data_addr1, void* data_addr2) {

		memcpy(data_addr1, data_addr2, FLOAT_SIZE_4);
	}



	void reset (void* data_addr) {

		memset(data_addr, 0, FLOAT_SIZE_4);
	}



	float len (void* data_addr) {

		float* data_addr_float = (float*) data_addr;

		return sqrt(

			(data_addr_float[0] * data_addr_float[0]) +
			(data_addr_float[1] * data_addr_float[1]) +
			(data_addr_float[2] * data_addr_float[2]) +
			(data_addr_float[3] * data_addr_float[3])
		);
	}



	float lensq (void* data_addr) {

		float* data_addr_float = (float*) data_addr;

		return
			(data_addr_float[0] * data_addr_float[0]) +
			(data_addr_float[1] * data_addr_float[1]) +
			(data_addr_float[2] * data_addr_float[2]) +
			(data_addr_float[3] * data_addr_float[3]);
	}



	void simd32 (void) {

		set = set32;
		add = add32;
		adds = adds32;
		sub = sub32;
		subs = subs32;
		mul = mul32;
		muls = muls32;
		div = div32;
		divs = divs32;
		norm = norm32;
	}



	void simd128 (void) {

		set = set128;
		add = add128;
		adds = adds128;
		sub = sub128;
		subs = subs128;
		mul = mul128;
		muls = muls128;
		div = div128;
		divs = divs128;
		norm = norm128;
	}



	void print (void* data) {

		float* _data = (float*) data;

		printf("%f %f %f %f\n", _data[0], _data[1], _data[2], _data[3]);
	}
}
