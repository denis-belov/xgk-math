#include <cstdint>
#include <vector>



namespace XGK::MATH::UTIL {

	void makeBezierCurve3Point (

		const float,
		const float,
		const float,
		const float,
		const float,
		const float,
		const float,
		const float,
		const float,
		float*
	);

	void makeBezierCurve3Sequence (

		const float,
		const float,
		const float,
		const float,
		const float,
		const float,
		const float,
		const float,
		const uint64_t,
		float*
	);

	void makeBezierCurve3Sequence2 (

		float*,
		const float,
		const float,
		const float,
		const float,
		const uint64_t
	);

	void makeBezierCurve2Point3D (

		float*,
		float*,
		float*,
		float*,
		const float
	);

	void makeBezierCurve3Point3D (

		float*,
		float*,
		float*,
		float*,
		float*,
		const float
	);

	void makeCatmullRomSpline3ControlPoint3D (

		float*,
		float*,
		float*,
		float*,
		const float
	);

	void makeCatmullRomSpline3Points3D (

		std::vector<float>*,
		std::vector<float>*,
		const uint64_t,
		const float
	);

	void makeCatmullRomSpline3PointsClosed3D (

		std::vector<float>*,
		std::vector<float>*,
		const uint64_t,
		const float
	);
};
