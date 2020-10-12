#include <cstdint>
#include <cmath>
#include <vector>
#include "data/data.h"



namespace XGK::MATH::UTIL {

	void makeBezierCurve3Point (

		float* dst,
		const float x1,
		const float y1,
		const float x2,
		const float y2,
		const float x3,
		const float y3,
		const float x4,
		const float y4,
		const float t
	) {

		const float a = 1.0f - t;
		const float b = a * a;
		const float c = t * t;
		const float d = a * b;
		const float e = 3.0f * t * b;
		const float f = 3.0f * c * a;
		const float g = c * t;

		dst[0] = (x1 * d) + (x2 * e) + (x3 * f) + (x4 * g);
		dst[1] = (y1 * d) + (y2 * e) + (y3 * f) + (y4 * g);
	};



	void makeBezierCurve3Sequence (

		float* dst,
		const float x1,
		const float y1,
		const float x2,
		const float y2,
		const float x3,
		const float y3,
		const float x4,
		const float y4,
		const uint64_t segment_count
	) {

		uint64_t last = 0;

		float point[2];

		for (uint64_t i = 0; i < segment_count; i++) {

			makeBezierCurve3Point(point, x1, y1, x2, y2, x3, y3, x4, y4, ((float) i) / ((float) segment_count));

			dst[i] = point[1];
		}

		dst[segment_count - 1] = 1.0;
	};



	void makeBezierCurve3Sequence2 (

		float* dst,
		const float x2,
		const float y2,
		const float x3,
		const float y3,
		const uint64_t segment_count
	) {

		uint64_t last = 0;

		float point[2];

		for (uint64_t i = 0; i < segment_count; i++) {

			makeBezierCurve3Point(point, 0.0, 0.0, x2, y2, x3, y3, 1.0, 1.0, ((float) i) / ((float) segment_count));

			dst[i] = point[1];
		}

		dst[segment_count - 1] = 1.0;
	};



	void makeBezierCurve2Point3D (

		float* dst_p,
		float* p1,
		float* p2,
		float* p3,
		const float t
	) {

		float v[4] = { 0.0, 0.0, 0.0, 0.0 };

		const float a = 1.0 - t;
		const float b = a * a;
		const float c = 2.0 * t * a;
		const float d = t * t;

		DATA::VEC4::reset(dst_p);

		DATA::VEC4::copy(v, p1);
		DATA::VEC4::muls32(v, b);
		DATA::VEC4::add32(dst_p, v);

		DATA::VEC4::copy(v, p2);
		DATA::VEC4::muls32(v, c);
		DATA::VEC4::add32(dst_p, v);

		DATA::VEC4::copy(v, p3);
		DATA::VEC4::muls32(v, d);
		DATA::VEC4::add32(dst_p, v);
	};



	void makeBezierCurve3Point3D (

		float* dst_p,
		float* p1,
		float* p2,
		float* p3,
		float* p4,
		const float t
	) {

		float v[4] = { 0.0, 0.0, 0.0, 0.0 };

		const float a = 1.0 - t;
		const float b = a * a;
		const float c = t * t;
		const float d = a * b;
		const float e = 3.0 * t * b;
		const float f = 3.0 * c * a;
		const float g = c * t;

		DATA::VEC4::reset(dst_p);

		DATA::VEC4::copy(v, p1);
		DATA::VEC4::muls32(v, d);
		DATA::VEC4::add32(dst_p, v);

		DATA::VEC4::copy(v, p2);
		DATA::VEC4::muls32(v, e);
		DATA::VEC4::add32(dst_p, v);

		DATA::VEC4::copy(v, p3);
		DATA::VEC4::muls32(v, f);
		DATA::VEC4::add32(dst_p, v);

		DATA::VEC4::copy(v, p4);
		DATA::VEC4::muls32(v, g);
		DATA::VEC4::add32(dst_p, v);
	};



	void makeCatmullRomSpline3ControlPoint3D (

		float* dst_p,
		float* p1,
		float* p2,
		float* p3,
		const float t
	) {

		DATA::VEC4::reset(dst_p);
		DATA::VEC4::add32(dst_p, p3);
		DATA::VEC4::sub32(dst_p, p1);
		DATA::VEC4::muls32(dst_p, t);
		DATA::VEC4::add32(dst_p, p2);
	};



	void makeCatmullRomSpline3Points3D (

		std::vector<float>* dst,
		std::vector<float>* points,
		const uint64_t segment_count,
		const float tension
	) {

		float prev_control_point[4] = { 0.0, 0.0, 0.0, 0.0 };
		float next_control_point[4] = { 0.0, 0.0, 0.0, 0.0 };

		float* points_data = points->data();
		uint64_t points_size = points->size();

		for (uint64_t i = 0; i < points_size; i++) {

			float* prev_point = i > 0 ? &points_data[i - 1] : &points_data[i - 1 + points_size];
			float* curr_point = &points_data[i];
			float* next_point = i < points_size ? &points_data[i + 1] : &points_data[i + 1 - points_size];
			float* next_next_point = i < (points_size - 1) ? &points_data[i + 2] : &points_data[i + 2 - points_size];

			for (uint64_t k = 0; k < segment_count; k++) {

				makeCatmullRomSpline3ControlPoint3D(prev_control_point, prev_point, curr_point, next_point, tension);
				makeCatmullRomSpline3ControlPoint3D(next_control_point, curr_point, next_point, next_next_point, -tension);

				const float t = ((float) k) / ((float) segment_count);
				float point[4] = { 0.0, 0.0, 0.0, 0.0 };

				if (i == 0) {

					makeBezierCurve2Point3D(point, curr_point, next_control_point, next_point, t);
				}
				else if (i == (points_size - 2)) {

					makeBezierCurve2Point3D(point, curr_point, prev_control_point, next_point, t);
				}
				else {

					makeBezierCurve3Point3D(point, curr_point, prev_control_point, next_control_point, next_point, t);
				}

				dst->push_back(point[0]);
				dst->push_back(point[1]);
				dst->push_back(point[2]);
				dst->push_back(point[3]);
			}
		}
	};



	void makeCatmullRomSpline3PointsClosed3D (

		std::vector<float>* dst,
		std::vector<float>* points,
		const uint64_t segment_count,
		const float tension
	) {

		float prev_control_point[4] = { 0.0, 0.0, 0.0, 0.0 };
		float next_control_point[4] = { 0.0, 0.0, 0.0, 0.0 };

		float* points_data = points->data();
		uint64_t points_size = points->size();

		for (uint64_t i = 0; i < points_size; i++) {

			float* prev_point = i > 0 ? &points_data[i - 1] : &points_data[i - 1 + points_size];
			float* curr_point = &points_data[i];
			float* next_point = i < points_size ? &points_data[i + 1] : &points_data[i + 1 - points_size];
			float* next_next_point = i < (points_size - 1) ? &points_data[i + 2] : &points_data[i + 2 - points_size];

			for (uint64_t k = 0; k < segment_count; k++) {

				makeCatmullRomSpline3ControlPoint3D(prev_control_point, prev_point, curr_point, next_point, tension);
				makeCatmullRomSpline3ControlPoint3D(next_control_point, curr_point, next_point, next_next_point, -tension);

				const float t = ((float) k) / ((float) segment_count);
				float point[4] = { 0.0, 0.0, 0.0, 0.0 };

				makeBezierCurve3Point3D(point, curr_point, prev_control_point, next_control_point, next_point, t);

				dst->push_back(point[0]);
				dst->push_back(point[1]);
				dst->push_back(point[2]);
				dst->push_back(point[3]);
			}
		}
	};
};
