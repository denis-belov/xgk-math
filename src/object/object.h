#ifndef __XGK_MATH_OBJECT__
#define __XGK_MATH_OBJECT__



#include "data/vec4/vec4.h"
#include "data/mat4/mat4.h"



namespace XGK
{
	struct alignas(16) Object
	{
		DATA::Mat4 mat;
		DATA::Quat quat;
		DATA::Vec4 _trans;
		DATA::Vec4 origin;
		DATA::Vec4 aux_vec;



		// Object          (void);
		void setRot     (void*, const float);
		void preRot     (void*, const float);
		void postRot    (void*, const float);
		void setRotX    (const float);
		void preRotX    (const float);
		void postRotX   (const float);
		void setRotY    (const float);
		void preRotY    (const float);
		void postRotY   (const float);
		void setRotZ    (const float);
		void preRotZ    (const float);
		void postRotZ   (const float);
		void setTrans   (void*);
		void trans      (void*, const float);
		void setTransX  (const float);
		void transX     (const float);
		void setTransY  (const float);
		void transY     (const float);
		void setTransZ  (const float);
		void transZ     (const float);
		void update     (void);
		void update2    (void);
		void update3    (void);
	};
}



#endif
