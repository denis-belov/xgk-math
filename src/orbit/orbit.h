#ifndef __XGK_MATH_ORBIT__
#define __XGK_MATH_ORBIT__



#include "mat4/mat4.h"
#include "object/object.h"



namespace XGK::MATH
{

	struct alignas(16) Orbit
	{
		XGK::MATH::Mat4 proj_mat;
		XGK::MATH::Mat4 view_mat;

		XGK::MATH::Object object;

		float rotation_speed_x;
		float rotation_speed_y;

		float translation_speed_x;
		float translation_speed_y;
		float translation_speed_z;



		Orbit (void);
		void rotate (void);
		void transX (void);
		void transZ (void);
		void update (void);
	};
}



#endif
