#ifndef __XGK_MATH_MAT4__
#define __XGK_MATH_MAT4__



#include <initializer_list>



namespace XGK::MATH
{
	struct alignas(16) Mat4
	{
		alignas(16) float data [16];

		Mat4 (void);
		Mat4 (const void* src);
		Mat4 (const Mat4& src);
		Mat4 (const Mat4&& src);
		Mat4 (std::initializer_list<float>& list);

		~Mat4 (void);



		void operator = (const void* src);
		void operator = (const Mat4& src);
		void operator = (const Mat4&& src);



		void zero (void);
		void ident (void);

		void makeProjPersp
		(
			const float&,
			const float&,
			const float&,
			const float&,
			const float&
		);

		void makeProjPersp
		(
			const float&,
			const float&,
			const float&,
			const float&,
			const float&,
			const float&
		);

		// Parameters are of void* type to allow using with both vector and scalar float types.
		void mul32 (void* left, void* right);
		void mul128 (void* left, void* right);
		void transp32 (void);
		void transp128 (void);
		void print (void);
	};
}



#endif
