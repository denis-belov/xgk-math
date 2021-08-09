#define SET32(\
	matrix_addr_float,\
	\
	e0, e4, e8 , e12,\
	e1, e5, e9 , e13,\
	e2, e6, e10, e14,\
	e3, e7, e11, e15\
)\
	\
	matrix_addr_float[0] = e0; matrix_addr_float[4] = e4; matrix_addr_float[8]  = e8 ; matrix_addr_float[12] = e12;\
	matrix_addr_float[1] = e1; matrix_addr_float[5] = e5; matrix_addr_float[9]  = e9 ; matrix_addr_float[13] = e13;\
	matrix_addr_float[2] = e2; matrix_addr_float[6] = e6; matrix_addr_float[10] = e10; matrix_addr_float[14] = e14;\
	matrix_addr_float[3] = e3; matrix_addr_float[7] = e7; matrix_addr_float[11] = e11; matrix_addr_float[15] = e15;



// left, right
#define MUL(dst, L, R)\
	\
	const float e0 = (L[0] * R[0]) + (L[4] * R[1]) + (L[8]  * R[2]) + (L[12] * R[3]);\
	const float e1 = (L[1] * R[0]) + (L[5] * R[1]) + (L[9]  * R[2]) + (L[13] * R[3]);\
	const float e2 = (L[2] * R[0]) + (L[6] * R[1]) + (L[10] * R[2]) + (L[14] * R[3]);\
	const float e3 = (L[3] * R[0]) + (L[7] * R[1]) + (L[11] * R[2]) + (L[15] * R[3]);\
	\
	const float e4 = (L[0] * R[4]) + (L[4] * R[5]) + (L[8]  * R[6]) + (L[12] * R[7]);\
	const float e5 = (L[1] * R[4]) + (L[5] * R[5]) + (L[9]  * R[6]) + (L[13] * R[7]);\
	const float e6 = (L[2] * R[4]) + (L[6] * R[5]) + (L[10] * R[6]) + (L[14] * R[7]);\
	const float e7 = (L[3] * R[4]) + (L[7] * R[5]) + (L[11] * R[6]) + (L[15] * R[7]);\
	\
	const float e8 = (L[0] * R[8]) + (L[4] * R[9]) + (L[8]  * R[10]) + (L[12] * R[11]);\
	const float e9 = (L[1] * R[8]) + (L[5] * R[9]) + (L[9]  * R[10]) + (L[13] * R[11]);\
	const float e10 = (L[2] * R[8]) + (L[6] * R[9]) + (L[10] * R[10]) + (L[14] * R[11]);\
	const float e11 = (L[3] * R[8]) + (L[7] * R[9]) + (L[11] * R[10]) + (L[15] * R[11]);\
	\
	const float e12 = (L[0] * R[12]) + (L[4] * R[13]) + (L[8]  * R[14]) + (L[12] * R[15]);\
	const float e13 = (L[1] * R[12]) + (L[5] * R[13]) + (L[9]  * R[14]) + (L[13] * R[15]);\
	const float e14 = (L[2] * R[12]) + (L[6] * R[13]) + (L[10] * R[14]) + (L[14] * R[15]);\
	const float e15 = (L[3] * R[12]) + (L[7] * R[13]) + (L[11] * R[14]) + (L[15] * R[15]);\
	\
	dst[0] = e0; dst[4] = e4; dst[8]  = e8 ; dst[12] = e12;\
	dst[1] = e1; dst[5] = e5; dst[9]  = e9 ; dst[13] = e13;\
	dst[2] = e2; dst[6] = e6; dst[10] = e10; dst[14] = e14;\
	dst[3] = e3; dst[7] = e7; dst[11] = e11; dst[15] = e15;



#define MAKE_TRANS(matrix_addr_float, vector_addr)\
	\
	memcpy(matrix_addr_float, IDENT_12, FLOAT_SIZE_12);\
	memcpy(matrix_addr_float + 12, vector_addr, FLOAT_SIZE_3);



#define MAKE_TRANS_VALUE(matrix_addr_float, vector_addr_float, value)\
	\
	memcpy(matrix_addr_float, IDENT_12, FLOAT_SIZE_12);\
	\
	matrix_addr_float[12] = vector_addr_float[0] * value;\
	matrix_addr_float[13] = vector_addr_float[1] * value;\
	matrix_addr_float[14] = vector_addr_float[2] * value;\
	matrix_addr_float[15] = 1.0f;



#define MAKE_ROT_QUAT(matrix_addr_float, quaternion_addr_float)\
	\
	const float xy = 2.0f * quaternion_addr_float[0] * quaternion_addr_float[1];\
	const float xz = 2.0f * quaternion_addr_float[0] * quaternion_addr_float[2];\
	const float yz = 2.0f * quaternion_addr_float[1] * quaternion_addr_float[2];\
	\
	const float zw = 2.0f * quaternion_addr_float[2] * quaternion_addr_float[3];\
	const float yw = 2.0f * quaternion_addr_float[1] * quaternion_addr_float[3];\
	const float xw = 2.0f * quaternion_addr_float[0] * quaternion_addr_float[3];\
	\
	const float xx = 2.0f * quaternion_addr_float[0] * quaternion_addr_float[0];\
	const float yy = 2.0f * quaternion_addr_float[1] * quaternion_addr_float[1];\
	const float zz = 2.0f * quaternion_addr_float[2] * quaternion_addr_float[2];\
	\
	matrix_addr_float[0] = 1.0f - yy - zz; matrix_addr_float[4] = xy - zw       ; matrix_addr_float[8]  = xz + yw       ; matrix_addr_float[12] = 0.0f;\
	matrix_addr_float[1] = xy + zw       ; matrix_addr_float[5] = 1.0f - xx - zz; matrix_addr_float[9]  = yz - xw       ; matrix_addr_float[13] = 0.0f;\
	matrix_addr_float[2] = xz - yw       ; matrix_addr_float[6] = yz + xw       ; matrix_addr_float[10] = 1.0f - xx - yy; matrix_addr_float[14] = 0.0f;\
	matrix_addr_float[3] = 0.0f          ; matrix_addr_float[7] = 0.0f          ; matrix_addr_float[11] = 0.0f          ; matrix_addr_float[15] = 1.0f;



#define MAKE_ROT_QUAT2(matrix_addr_float, quaternion_addr_float)\
	\
	const float xy = 2.0f * quaternion_addr_float[0] * quaternion_addr_float[1];\
	const float xz = 2.0f * quaternion_addr_float[0] * quaternion_addr_float[2];\
	const float yz = 2.0f * quaternion_addr_float[1] * quaternion_addr_float[2];\
	\
	const float zw = 2.0f * quaternion_addr_float[2] * quaternion_addr_float[3];\
	const float yw = 2.0f * quaternion_addr_float[1] * quaternion_addr_float[3];\
	const float xw = 2.0f * quaternion_addr_float[0] * quaternion_addr_float[3];\
	\
	const float xx = 2.0f * quaternion_addr_float[0] * quaternion_addr_float[0];\
	const float yy = 2.0f * quaternion_addr_float[1] * quaternion_addr_float[1];\
	const float zz = 2.0f * quaternion_addr_float[2] * quaternion_addr_float[2];\
	\
	matrix_addr_float[0] = 1.0f - yy - zz; matrix_addr_float[4] = xy - zw       ; matrix_addr_float[8]  = xz + yw       ;\
	matrix_addr_float[1] = xy + zw       ; matrix_addr_float[5] = 1.0f - xx - zz; matrix_addr_float[9]  = yz - xw       ;\
	matrix_addr_float[2] = xz - yw       ; matrix_addr_float[6] = yz + xw       ; matrix_addr_float[10] = 1.0f - xx - yy;



#include <cstdint>
#include <cstring>
#include <cmath>



namespace XGK::MATH {

	extern const uint8_t FLOAT_SIZE_3;
	extern const uint8_t FLOAT_SIZE_4;
	extern const uint8_t FLOAT_SIZE_12;
}



namespace XGK::MATH::MAT4 {

	alignas(16) extern const float IDENT_12[12];



	void set32 (

		void* dst,

		const float e0, const float e4, const float e8 , const float e12,
		const float e1, const float e5, const float e9 , const float e13,
		const float e2, const float e6, const float e10, const float e14,
		const float e3, const float e7, const float e11, const float e15
	) {

		float* dst_32_ptr = (float*) dst;

		SET32(
			dst_32_ptr,

			e0, e4, e8 , e12,
			e1, e5, e9 , e13,
			e2, e6, e10, e14,
			e3, e7, e11, e15
		)
	}



	void mul32 (void* dst, void* left, void* right)
	{
		float* _dst = (float*) dst;
		float* _left = (float*) left;
		float* _right = (float*) right;

		MUL(_dst, _left, _right)
	}



	void premul32 (void* dst_matrix_addr, void* src_matrix_addr) {

		float* dst_matrix_addr_float = (float*) dst_matrix_addr;
		float* src_matrix_addr_float = (float*) src_matrix_addr;

		MUL(dst_matrix_addr_float, src_matrix_addr_float, dst_matrix_addr_float)
	}



	void postmul32 (void* dst_matrix_addr, void* src_matrix_addr) {

		float* dst_matrix_addr_float = (float*) dst_matrix_addr;
		float* src_matrix_addr_float = (float*) src_matrix_addr;

		MUL(dst_matrix_addr_float, dst_matrix_addr_float, src_matrix_addr_float)
	}



	void makeTrans32 (void* dst_matrix_addr, void* vector_addr) {

		float* dst_matrix_addr_float = (float*) dst_matrix_addr;

		MAKE_TRANS(dst_matrix_addr_float, vector_addr)
	}



	void preTrans32 (void* dst_matrix_addr, void* vector_addr) {

		float* dst_matrix_addr_float = (float*) dst_matrix_addr;
		float* vector_addr_float = (float*) vector_addr;

		dst_matrix_addr_float[12] += vector_addr_float[0];
		dst_matrix_addr_float[13] += vector_addr_float[1];
		dst_matrix_addr_float[14] += vector_addr_float[2];
	}



	void postTrans32 (void* dst_matrix_addr, void* vector_addr) {

		float* dst_matrix_addr_float = (float*) dst_matrix_addr;
		float* vector_addr_float = (float*) vector_addr;

		dst_matrix_addr_float[12] += (dst_matrix_addr_float[0] * vector_addr_float[0]) + (dst_matrix_addr_float[4] * vector_addr_float[1]) + (dst_matrix_addr_float[8]  * vector_addr_float[2]);
		dst_matrix_addr_float[13] += (dst_matrix_addr_float[1] * vector_addr_float[0]) + (dst_matrix_addr_float[5] * vector_addr_float[1]) + (dst_matrix_addr_float[9]  * vector_addr_float[2]);
		dst_matrix_addr_float[14] += (dst_matrix_addr_float[2] * vector_addr_float[0]) + (dst_matrix_addr_float[6] * vector_addr_float[1]) + (dst_matrix_addr_float[10] * vector_addr_float[2]);
	}



	void makeTransValue32 (void* dst_matrix_addr, void* vector_addr, const float value) {

		float* dst_matrix_addr_float = (float*) dst_matrix_addr;
		float* vector_addr_float = (float*) vector_addr;

		MAKE_TRANS_VALUE(dst_matrix_addr_float, vector_addr_float, value)
	}



	void preTransValue32 (void* dst_matrix_addr, void* vector_addr, const float value) {

		float* dst_matrix_addr_float = (float*) dst_matrix_addr;
		alignas(16) float src_matrix_addr_float[16];
		float* vector_addr_float = (float*) vector_addr;

		MAKE_TRANS_VALUE(src_matrix_addr_float, vector_addr_float, value)

		MUL(dst_matrix_addr_float, src_matrix_addr_float, dst_matrix_addr_float)
	}



	void postTransValue32 (void* dst_matrix_addr, void* vector_addr, const float value) {

		float* dst_matrix_addr_float = (float*) dst_matrix_addr;
		alignas(16) float src_matrix_addr_float[16];
		float* vector_addr_float = (float*) vector_addr;

		MAKE_TRANS_VALUE(src_matrix_addr_float, vector_addr_float, value)

		MUL(dst_matrix_addr_float, dst_matrix_addr_float, src_matrix_addr_float)
	}



	void makeRotQuat32 (void* dst_matrix_addr, void* quaternion_addr) {

		float* dst_matrix_addr_float = (float*) dst_matrix_addr;
		float* quaternion_addr_float = (float*) quaternion_addr;

		MAKE_ROT_QUAT(dst_matrix_addr_float, quaternion_addr_float)
	}



	void preRotQuat32 (void* dst_matrix_addr, void* quaternion_addr) {

		float* dst_matrix_addr_float = (float*) dst_matrix_addr;
		alignas(16) float left_matrix_addr_float[12];
		float* quaternion_addr_float = (float*) quaternion_addr;

		MAKE_ROT_QUAT2(left_matrix_addr_float, quaternion_addr_float)

		const float e0  = (left_matrix_addr_float[0] * dst_matrix_addr_float[0])  + (left_matrix_addr_float[4] * dst_matrix_addr_float[1])  + (left_matrix_addr_float[8]  * dst_matrix_addr_float[2]);
		const float e1  = (left_matrix_addr_float[1] * dst_matrix_addr_float[0])  + (left_matrix_addr_float[5] * dst_matrix_addr_float[1])  + (left_matrix_addr_float[9]  * dst_matrix_addr_float[2]);
		const float e2  = (left_matrix_addr_float[2] * dst_matrix_addr_float[0])  + (left_matrix_addr_float[6] * dst_matrix_addr_float[1])  + (left_matrix_addr_float[10] * dst_matrix_addr_float[2]);

		const float e4  = (left_matrix_addr_float[0] * dst_matrix_addr_float[4])  + (left_matrix_addr_float[4] * dst_matrix_addr_float[5])  + (left_matrix_addr_float[8]  * dst_matrix_addr_float[6]);
		const float e5  = (left_matrix_addr_float[1] * dst_matrix_addr_float[4])  + (left_matrix_addr_float[5] * dst_matrix_addr_float[5])  + (left_matrix_addr_float[9]  * dst_matrix_addr_float[6]);
		const float e6  = (left_matrix_addr_float[2] * dst_matrix_addr_float[4])  + (left_matrix_addr_float[6] * dst_matrix_addr_float[5])  + (left_matrix_addr_float[10] * dst_matrix_addr_float[6]);

		const float e8  = (left_matrix_addr_float[0] * dst_matrix_addr_float[8])  + (left_matrix_addr_float[4] * dst_matrix_addr_float[9])  + (left_matrix_addr_float[8]  * dst_matrix_addr_float[10]);
		const float e9  = (left_matrix_addr_float[1] * dst_matrix_addr_float[8])  + (left_matrix_addr_float[5] * dst_matrix_addr_float[9])  + (left_matrix_addr_float[9]  * dst_matrix_addr_float[10]);
		const float e10 = (left_matrix_addr_float[2] * dst_matrix_addr_float[8])  + (left_matrix_addr_float[6] * dst_matrix_addr_float[9])  + (left_matrix_addr_float[10] * dst_matrix_addr_float[10]);

		const float e12 = (left_matrix_addr_float[0] * dst_matrix_addr_float[12]) + (left_matrix_addr_float[4] * dst_matrix_addr_float[13]) + (left_matrix_addr_float[8]  * dst_matrix_addr_float[14]);
		const float e13 = (left_matrix_addr_float[1] * dst_matrix_addr_float[12]) + (left_matrix_addr_float[5] * dst_matrix_addr_float[13]) + (left_matrix_addr_float[9]  * dst_matrix_addr_float[14]);
		const float e14 = (left_matrix_addr_float[2] * dst_matrix_addr_float[12]) + (left_matrix_addr_float[6] * dst_matrix_addr_float[13]) + (left_matrix_addr_float[10] * dst_matrix_addr_float[14]);

		dst_matrix_addr_float[0] = e0; dst_matrix_addr_float[4] = e4; dst_matrix_addr_float[8]  = e8 ; dst_matrix_addr_float[12] = e12;
		dst_matrix_addr_float[1] = e1; dst_matrix_addr_float[5] = e5; dst_matrix_addr_float[9]  = e9 ; dst_matrix_addr_float[13] = e13;
		dst_matrix_addr_float[2] = e2; dst_matrix_addr_float[6] = e6; dst_matrix_addr_float[10] = e10; dst_matrix_addr_float[14] = e14;
	}



	void postRotQuat32 (void* dst_matrix_addr, void* quaternion_addr) {

		float* dst_matrix_addr_float = (float*) dst_matrix_addr;
		alignas(16) float right_matrix_addr_float[12];
		float* quaternion_addr_float = (float*) quaternion_addr;

		MAKE_ROT_QUAT2(right_matrix_addr_float, quaternion_addr_float)

		const float e0  = (dst_matrix_addr_float[0] * right_matrix_addr_float[0]) + (dst_matrix_addr_float[4] * right_matrix_addr_float[1]) + (dst_matrix_addr_float[8]  * right_matrix_addr_float[2]);
		const float e1  = (dst_matrix_addr_float[1] * right_matrix_addr_float[0]) + (dst_matrix_addr_float[5] * right_matrix_addr_float[1]) + (dst_matrix_addr_float[9]  * right_matrix_addr_float[2]);
		const float e2  = (dst_matrix_addr_float[2] * right_matrix_addr_float[0]) + (dst_matrix_addr_float[6] * right_matrix_addr_float[1]) + (dst_matrix_addr_float[10] * right_matrix_addr_float[2]);
		// const float e3  = (dst_matrix_addr_float[3] * right_matrix_addr_float[0]) + (dst_matrix_addr_float[7] * right_matrix_addr_float[1]) + (dst_matrix_addr_float[11] * right_matrix_addr_float[2]);

		const float e4  = (dst_matrix_addr_float[0] * right_matrix_addr_float[4]) + (dst_matrix_addr_float[4] * right_matrix_addr_float[5]) + (dst_matrix_addr_float[8]  * right_matrix_addr_float[6]);
		const float e5  = (dst_matrix_addr_float[1] * right_matrix_addr_float[4]) + (dst_matrix_addr_float[5] * right_matrix_addr_float[5]) + (dst_matrix_addr_float[9]  * right_matrix_addr_float[6]);
		const float e6  = (dst_matrix_addr_float[2] * right_matrix_addr_float[4]) + (dst_matrix_addr_float[6] * right_matrix_addr_float[5]) + (dst_matrix_addr_float[10] * right_matrix_addr_float[6]);
		// const float e7  = (dst_matrix_addr_float[3] * right_matrix_addr_float[4]) + (dst_matrix_addr_float[7] * right_matrix_addr_float[5]) + (dst_matrix_addr_float[11] * right_matrix_addr_float[6]);

		const float e8  = (dst_matrix_addr_float[0] * right_matrix_addr_float[8]) + (dst_matrix_addr_float[4] * right_matrix_addr_float[9]) + (dst_matrix_addr_float[8]  * right_matrix_addr_float[10]);
		const float e9  = (dst_matrix_addr_float[1] * right_matrix_addr_float[8]) + (dst_matrix_addr_float[5] * right_matrix_addr_float[9]) + (dst_matrix_addr_float[9]  * right_matrix_addr_float[10]);
		const float e10 = (dst_matrix_addr_float[2] * right_matrix_addr_float[8]) + (dst_matrix_addr_float[6] * right_matrix_addr_float[9]) + (dst_matrix_addr_float[10] * right_matrix_addr_float[10]);
		// const float e11 = (dst_matrix_addr_float[3] * right_matrix_addr_float[8]) + (dst_matrix_addr_float[7] * right_matrix_addr_float[9]) + (dst_matrix_addr_float[11] * right_matrix_addr_float[10]);

		dst_matrix_addr_float[0] = e0; dst_matrix_addr_float[4] = e4; dst_matrix_addr_float[8]  = e8 ;
		dst_matrix_addr_float[1] = e1; dst_matrix_addr_float[5] = e5; dst_matrix_addr_float[9]  = e9 ;
		dst_matrix_addr_float[2] = e2; dst_matrix_addr_float[6] = e6; dst_matrix_addr_float[10] = e10;
		// dst_matrix_addr_float[3] = e3; dst_matrix_addr_float[7] = e7; dst_matrix_addr_float[11] = e11;
	}



	void transp32 (void* dst) {

		float* dst_32_ptr = (float*) dst;

		const float e0 = dst_32_ptr[0] ; const float e4 = dst_32_ptr[1] ; const float e8  = dst_32_ptr[2] ; const float e12 = dst_32_ptr[3] ;
		const float e1 = dst_32_ptr[4] ; const float e5 = dst_32_ptr[5] ; const float e9  = dst_32_ptr[6] ; const float e13 = dst_32_ptr[7] ;
		const float e2 = dst_32_ptr[8] ; const float e6 = dst_32_ptr[9] ; const float e10 = dst_32_ptr[10]; const float e14 = dst_32_ptr[11];
		const float e3 = dst_32_ptr[12]; const float e7 = dst_32_ptr[13]; const float e11 = dst_32_ptr[14]; const float e15 = dst_32_ptr[15];

		SET32(
			dst_32_ptr,

			e0, e4, e8 , e12,
			e1, e5, e9 , e13,
			e2, e6, e10, e14,
			e3, e7, e11, e15
		)
	}



	void invns32 (void* dst) {

		float* dst_32_ptr = (float*) dst;

		const float e0 = dst_32_ptr[0] ; const float e4 = dst_32_ptr[1] ; const float e8  = dst_32_ptr[2] ; const float e12 = -(dst_32_ptr[0] * dst_32_ptr[12]) - (dst_32_ptr[1] * dst_32_ptr[13]) - (dst_32_ptr[2]  * dst_32_ptr[14]);
		const float e1 = dst_32_ptr[4] ; const float e5 = dst_32_ptr[5] ; const float e9  = dst_32_ptr[6] ; const float e13 = -(dst_32_ptr[4] * dst_32_ptr[12]) - (dst_32_ptr[5] * dst_32_ptr[13]) - (dst_32_ptr[6]  * dst_32_ptr[14]);
		const float e2 = dst_32_ptr[8] ; const float e6 = dst_32_ptr[9] ; const float e10 = dst_32_ptr[10]; const float e14 = -(dst_32_ptr[8] * dst_32_ptr[12]) - (dst_32_ptr[9] * dst_32_ptr[13]) - (dst_32_ptr[10] * dst_32_ptr[14]);

		SET32(
			dst_32_ptr,

			e0  , e4  , e8  , e12,
			e1  , e5  , e9  , e13,
			e2  , e6  , e10 , e14,
			0.0f, 0.0f, 0.0f, 1.0f
		)
	}



	void makeProjPersp32 (
		void* dst,

		const float fov,
		const float aspect,
		const float near_,
		const float far_,
		const float zoom
	) {

		float* dst_32_ptr = (float*) dst;

		const float top = near_ * tan(0.017453292f * 0.5f * fov) / zoom;
		const float height = 2.0f * top;
		const float bottom = top - height;
		const float width = aspect * height;
		const float left = -0.5f * width;
		const float right = left + width;

		SET32(
			dst_32_ptr,

			2.0f * near_ / (right - left), 0.0f                         , (right + left) / (right - left)  , 0.0f                                   ,
			0.0f                         , 2.0f * near_ / (top - bottom), (top + bottom) / (top - bottom)  , 0.0f                                   ,
			0.0f                         , 0.0f                         , -(far_ + near_) / (far_ - near_) , -(2.0f * far_ * near_) / (far_ - near_),
			0.0f                         , 0.0f                         , -1.0f                            , 0.0f
		)
	}



	// void makeProjPersp32 (
	//
	//   void* m0,

	//   const float left,
	//   const float right,
	//   const float top,
	//   const float bottom,
	//   const float near_,
	//   const float far_
	//) {

	//   SET32(
	//     m0,

	//     2.0f * near_ / (right - left), 0.0f                         , (right + left) / (right - left)  , 0.0f                                   ,
	//     0.0f                         , 2.0f * near_ / (top - bottom), (top + bottom) / (top - bottom)  , 0.0f                                   ,
	//     0.0f                         , 0.0f                         , -(far_ + near_) / (far_ - near_) , -(2.0f * far_ * near_) / (far_ - near_),
	//     0.0f                         , 0.0f                         , -1.0f                            , 0.0f
	//  )
	// }



	// void makeRot32 (void* m0, float* q0) {

	//   const float xx = 2.0f * q0->f32[0] * q0->f32[0];
	//   const float yy = 2.0f * q0->f32[1] * q0->f32[1];
	//   const float zz = 2.0f * q0->f32[2] * q0->f32[2];
	//   const float xy = 2.0f * q0->f32[0] * q0->f32[1];
	//   const float xz = 2.0f * q0->f32[0] * q0->f32[2];
	//   const float xw = 2.0f * q0->f32[0] * q0->f32[3];
	//   const float yz = 2.0f * q0->f32[1] * q0->f32[2];
	//   const float yw = 2.0f * q0->f32[1] * q0->f32[3];
	//   const float zw = 2.0f * q0->f32[2] * q0->f32[3];

	//   SET32(
	//     m0,

	//     1.0f - yy - zz, xy - zw       , xz + yw       , 0.0f,
	//     xy + zw       , 1.0f - xx - zz, yz - xw       , 0.0f,
	//     xz - yw       , yz + xw       , 1.0f - xx - yy, 0.0f,
	//     0.0f          , 0.0f          , 0.0f          , 1.0f
	//  )
	// }



	// void makeRotX32 (void* m0, const float angle) {

	//   const float cos_ = cos(angle);
	//   const float sin_ = sin(angle);

	//   SET32(
	//     m0,

	//     1.0f, 0.0f , 0.0f, 0.0f,
	//     0.0f, cos_ , sin_, 0.0f,
	//     0.0f, -sin_, cos_, 0.0f,
	//     0.0f, 0.0f , 0.0f, 1.0f
	//  )
	// }
}
