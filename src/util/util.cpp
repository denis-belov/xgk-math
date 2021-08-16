#include <cstdint>
#include <cmath>



namespace XGK::MATH::UTIL
{
	void makeBezierCurve3Point
	(
		float* dst,
		const float& x1,
		const float& y1,
		const float& x2,
		const float& y2,
		const float& x3,
		const float& y3,
		const float& x4,
		const float& y4,
		const float& t
	)
	{
		const float a { 1.0f - t };
		const float b { a * a };
		const float c { t * t };
		const float d { a * b };
		const float e { 3.0f * t * b };
		const float f { 3.0f * c * a };
		const float g { c * t };

		dst[0] = (x1 * d) + (x2 * e) + (x3 * f) + (x4 * g);
		dst[1] = (y1 * d) + (y2 * e) + (y3 * f) + (y4 * g);
	}



	void makeBezierCurve3Sequence
	(
		float* dst,
		const float& x1,
		const float& y1,
		const float& x2,
		const float& y2,
		const float& x3,
		const float& y3,
		const float& x4,
		const float& y4,
		const size_t& segment_count
	)
	{
		float point [2] {};

		for (size_t i {}; i < segment_count; ++i)
		{
			makeBezierCurve3Point(point, x1, y1, x2, y2, x3, y3, x4, y4, ((float) i) / ((float) segment_count));

			dst[i] = point[1];
		}

		dst[segment_count - 1] = 1.0;
	}



	void makeBezierCurve3Sequence2
	(
		float* dst,
		const float& x2,
		const float& y2,
		const float& x3,
		const float& y3,
		const size_t& segment_count
	)
	{
		float point [2] {};

		for (size_t i {}; i < segment_count; ++i)
		{
			makeBezierCurve3Point(point, 0.0, 0.0, x2, y2, x3, y3, 1.0, 1.0, ((float) i) / ((float) segment_count));

			dst[i] = point[1];
		}

		dst[segment_count - 1] = 1.0;
	}
}
