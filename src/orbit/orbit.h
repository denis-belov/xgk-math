#ifndef __XGK_MATH_ORBIT__
#define __XGK_MATH_ORBIT__



#include "xgk-math/src/mat4/mat4.h"
#include "xgk-math/src/object/object.h"



namespace XGK::MATH
{

	struct alignas(16) Orbit
	{
		XGK::MATH::Mat4 projection_matrix;
		XGK::MATH::Mat4 view_matrix;
		XGK::MATH::Object object;

		float rotation_speed_x {};
		float rotation_speed_y {};
		float translation_speed_x {};
		float translation_speed_y {};
		float translation_speed_z {};



		Orbit (void) = default;

		~Orbit (void) = default;

		void setRotation (void);
		void rotate (void);
		// use const float& macro
		void rotate2 (const float&, const float&);
		void rotate2 (const float, const float);
		void transX (void);
		void transY (void);
		void transZ (void);
		void update (void);
	};
}



#endif
