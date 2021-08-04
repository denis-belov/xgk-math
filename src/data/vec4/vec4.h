// Is there a need to define simd functions since compiler properly vectorize scalar functions?
// Need to test!

#ifndef __XGK_MATH_DATA_VEC4__
#define __XGK_MATH_DATA_VEC4__



namespace XGK::DATA
{
	struct alignas(16) Vec4
	{
		alignas(16) float data [4];



		Vec4 (void);
		Vec4 (void* src);
		Vec4 (const Vec4& src);
		Vec4 (const Vec4&& src);

		~Vec4 (void);



		void operator = (void* src);
		void operator = (const Vec4& src);
		void operator = (const Vec4&& src);



		void reset (void);
		void set (const float&, const float&, const float&, const float&);
		// todo
		float len (void);
		// todo
		float lensq (void);
		void add (void*);
		void adds (const float&);
		void sub (void*);
		void subs (const float&);
		void mul (void*);
		void muls (const float&);
		void div (void*);
		void divs (const float&);
		void norm (void);
		void print (void);
	};
}



#endif
