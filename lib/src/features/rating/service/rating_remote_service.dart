import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:test_system/src/features/rating/model/rating.dart';
import 'package:test_system/src/features/rating/service/rating_service.dart';

class RatingRemoteService extends RatingService {
  final Dio _dio;

  RatingRemoteService(this._dio);

  static const _ratingPath = '/api/grade';

  @override
  Future<List<Rating>> getRatingByMarks() async {
    try {
      final response = await _dio.get(
        '$_ratingPath/by-marks',
      );
      return Rating.listFromJson(response.data as List<dynamic>);
    } on DioException catch (e) {
      debugPrint('${e.response?.requestOptions.path} $e');
      rethrow;
    }
  }

  @override
  Future<List<Rating>> getRatingByTasks() async {
    try {
      final response = await _dio.get(
        '$_ratingPath/by-tasks-amount',
        options: Options(
          headers: {
            'Authorization':
                'Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ0ZWFjaGVyQGhzZS5ydSIsImlhdCI6MTcxMDUwOTU2MSwiZXhwIjoxNzExMTE0MzYxfQ.Vn7OKtDuJZ33eZysjKFh9Wx3GRwhc9zl0IoZzJGX4UQ'
          },
        ),
      );
      return Rating.listFromJson(response.data as List<dynamic>);
    } on DioException catch (e) {
      debugPrint('${e.response?.requestOptions.path} $e');
      rethrow;
    }
  }
}
