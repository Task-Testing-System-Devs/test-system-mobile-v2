import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:test_system/src/features/contests/models/contest.dart';
import 'package:test_system/src/features/contests/service/contest_service.dart';
import 'package:test_system/src/features/submissions/model/submission.dart';
import 'package:test_system/src/features/tasks/model/task.dart';

class ContestRemoteService extends ContestService {
  final Dio _dio;
  final Dio _ejudgeDio;

  ContestRemoteService(this._dio, this._ejudgeDio);

  static const _ejudgePath = '/api/master';
  static const _contestPath = '/api/contest';

  @override
  Future<List<Contest>> getContests() async {
    try {
      final response = await _dio.get(
        '$_contestPath/get-all',
      );
      return Contest.listFromJson(response.data as List<dynamic>);
    } on DioException catch (e) {
      if (e.response?.statusCode == 400) {
        return <Contest>[];
      }
      debugPrint('${e.response?.requestOptions.path} $e');
      rethrow;
    }
  }

  @override
  Future<Contest> getContest(int contestId) async {
    try {
      final response = await _dio.get(
        '$_contestPath/info',
        queryParameters: {
          'id': contestId,
        },
      );
      return Contest.fromJson(response.data as Map<String, dynamic>);
    } on DioException catch (e) {
      debugPrint('${e.response?.requestOptions.path} $e');
      rethrow;
    }
  }

  @override
  Future<Submission> getSubmission(
    String contestId,
    String submissionId,
  ) async {
    try {
      final response = await _dio.get(
        '$_ejudgePath/run-status-json',
        queryParameters: {
          'contest_id': contestId,
        },
      );
      return Submission.fromJson(response.data as Map<String, dynamic>);
    } on DioException catch (e) {
      debugPrint('${e.response?.requestOptions.path} $e');
      rethrow;
    }
  }

  @override
  Future<Task> getTask(String contestId, String taskId) async {
    try {
      final response = await _dio.get(
        '$_ejudgePath/problem-statement-json',
        queryParameters: {
          'contest_id': contestId,
          'problem': taskId,
        },
      );
      return Task.fromJson(response.data as Map<String, dynamic>);
    } on DioException catch (e) {
      debugPrint('${e.response?.requestOptions.path} $e');
      rethrow;
    }
  }

  @override
  Future<void> sendTaskSolution() async {
    try {
      await _dio.post(
        '$_ejudgePath/submit-run',
      );
    } on DioException catch (e) {
      debugPrint('${e.response?.requestOptions.path} $e');
      rethrow;
    }
  }
}
