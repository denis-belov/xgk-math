#ifndef __XGK_MATH_DATA_MAT4__
#define __XGK_MATH_DATA_MAT4__



namespace XGK::DATA
{
	struct alignas(16) Mat4
	{
		alignas(16) float data [16];
		// int id = 0;



		Mat4 (void);
		Mat4 (void* src);
		Mat4 (const Mat4& src);
		Mat4 (const Mat4&& src);
		// initializer list constr

		~Mat4 (void);



		void operator = (void* src);
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



		// static int counter;
	};
}



#endif
