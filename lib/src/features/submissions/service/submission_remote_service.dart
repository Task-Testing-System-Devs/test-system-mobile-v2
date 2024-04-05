import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:test_system/src/features/submissions/model/submission.dart';
import 'package:test_system/src/features/submissions/service/submission_service.dart';

class SubmissionRemoteService extends SubmissionService {
  final Dio _dio;

  SubmissionRemoteService(this._dio);

  static const _ratingPath = '/api/solutions';

  @override
  Future<List<Submission>> getSubmissions() async {
    try {
      final response = await _dio.get(
        '$_ratingPath/get-all-user',
      );
      return Submission.listFromJson(response.data as List<dynamic>);
    } on DioException catch (e) {
      if (e.response?.statusCode == 400) {
        return <Submission>[];
      }
      debugPrint('${e.response?.requestOptions.path} $e');
      rethrow;
    }
  }
}
