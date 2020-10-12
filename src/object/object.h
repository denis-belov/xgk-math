namespace XGK {

	// pack ?
	struct Object {

		alignas(16) float mat[16];

		alignas(16) float quat[4];

		alignas(16) float trans[4];

		alignas(16) float origin[4];

		alignas(16) float aux_vec[4];

		// alignas(MEM_ADDR_LENGTH) void* parent;
	};
};

#ifndef XGK_MACRO_NO_PROTOTYPES

	namespace XGK::OBJECT {

		void init (Object*);
		void setRot (Object*, void*, const float);
		void preRot (Object*, void*, const float);
		void postRot (Object*, void*, const float);
		void setRotX (Object*, const float);
		void preRotX (Object*, const float);
		void postRotX (Object*, const float);
		void setRotY (Object*, const float);
		void preRotY (Object*, const float);
		void postRotY (Object*, const float);
		void setRotZ (Object*, const float);
		void preRotZ (Object*, const float);
		void postRotZ (Object*, const float);
		void setTrans (Object*, void*);
		void trans (Object*, void*, const float);
		void setTransX (Object*, const float);
		void transX (Object*, const float);
		void setTransY (Object*, const float);
		void transY (Object*, const float);
		void setTransZ  (Object*, const float);
		void transZ (Object*, const float);
		void update (Object*);
		void update2 (Object*);
		void update3 (Object*);
	};
#endif