#include <cmath>



namespace XGK::DATA::VEC4 {

	void set32 (void* data_addr_void, const float x, const float y, const float z, const float w) {

		float* data_addr_float = (float*) data_addr_void;

		data_addr_float[0] = x;
		data_addr_float[1] = y;
		data_addr_float[2] = z;
		data_addr_float[3] = w;
	};



	void add32 (void* data0, void* data1) {

		float* _data0 = (float*) data0;
		float* _data1 = (float*) data1;

		_data0[0] += _data1[0];
		_data0[1] += _data1[1];
		_data0[2] += _data1[2];
		_data0[3] += _data1[3];
	};



	void adds32 (void* data_addr_void, const float s) {

		float* data_addr_float = (float*) data_addr_void;

		data_addr_float[0] += s;
		data_addr_float[1] += s;
		data_addr_float[2] += s;
		data_addr_float[3] += s;
	};



	void sub32 (void* data0, void* data1) {

		float* _data0 = (float*) data0;
		float* _data1 = (float*) data1;

		_data0[0] -= _data1[0];
		_data0[1] -= _data1[1];
		_data0[2] -= _data1[2];
		_data0[3] -= _data1[3];
	};



	void subs32 (void* data_addr_void, const float s) {

		float* data_addr_float = (float*) data_addr_void;

		data_addr_float[0] -= s;
		data_addr_float[1] -= s;
		data_addr_float[2] -= s;
		data_addr_float[3] -= s;
	};



	void mul32 (void* data0, void* data1) {

		float* _data0 = (float*) data0;
		float* _data1 = (float*) data1;

		_data0[0] *= _data1[0];
		_data0[1] *= _data1[1];
		_data0[2] *= _data1[2];
		_data0[3] *= _data1[3];
	};



	void muls32 (void* data_addr_void, const float s) {

		float* data_addr_float = (float*) data_addr_void;

		data_addr_float[0] *= s;
		data_addr_float[1] *= s;
		data_addr_float[2] *= s;
		data_addr_float[3] *= s;
	};



	void div32 (void* data0, void* data1) {

		float* _data0 = (float*) data0;
		float* _data1 = (float*) data1;

		_data0[0] /= _data1[0];
		_data0[1] /= _data1[1];
		_data0[2] /= _data1[2];
		_data0[3] /= _data1[3];
	};



	void divs32 (void* data_addr_void, const float s) {

		float* data_addr_float = (float*) data_addr_void;

		data_addr_float[0] /= s;
		data_addr_float[1] /= s;
		data_addr_float[2] /= s;
		data_addr_float[3] /= s;
	};



	void norm32 (void* data_addr_void) {

		float* data_addr_float = (float*) data_addr_void;

		float len = sqrt(

			(data_addr_float[0] * data_addr_float[0]) +
			(data_addr_float[1] * data_addr_float[1]) +
			(data_addr_float[2] * data_addr_float[2]) +
			(data_addr_float[3] * data_addr_float[3])
		);

		data_addr_float[0] /= len;
		data_addr_float[1] /= len;
		data_addr_float[2] /= len;
		data_addr_float[3] /= len;
	};
};
