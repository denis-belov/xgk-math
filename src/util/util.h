#include <cstdint>



#ifndef __wasm__
	using std::size_t;
#endif



namespace XGK::MATH::UTIL
{
	void makeBezierCurve3Point
	(
		float*,
		const float&,
		const float&,
		const float&,
		const float&,
		const float&,
		const float&,
		const float&,
		const float&,
		const float&
	);

	void makeBezierCurve3Point
	(
		double*,
		const double&,
		const double&,
		const double&,
		const double&,
		const double&,
		const double&,
		const double&,
		const double&,
		const double&
	);

	void makeBezierCurve3Sequence
	(
		float*,
		const float&,
		const float&,
		const float&,
		const float&,
		const float&,
		const float&,
		const float&,
		const float&,
		const size_t&
	);

	void makeBezierCurve3Sequence
	(
		double*,
		const double&,
		const double&,
		const double&,
		const double&,
		const double&,
		const double&,
		const double&,
		const double&,
		const size_t&
	);

	void makeBezierCurve3Sequence2
	(
		float*,
		const float&,
		const float&,
		const float&,
		const float&,
		const size_t&
	);

	void makeBezierCurve3Sequence2
	(
		double*,
		const double&,
		const double&,
		const double&,
		const double&,
		const size_t&
	);
}
