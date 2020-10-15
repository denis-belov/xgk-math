namespace XGK {

	struct alignas(16) Object {

		alignas(16) float mat[16];

		alignas(16) float quat[4];

		alignas(16) float _trans[4];

		alignas(16) float origin[4];

		alignas(16) float aux_vec[4];

		// alignas(MEM_ADDR_LENGTH) void* parent;



		Object          (void);
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
};
