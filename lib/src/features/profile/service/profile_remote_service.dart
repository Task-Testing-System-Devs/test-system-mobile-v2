import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:test_system/src/features/profile/model/profile.dart';
import 'package:test_system/src/features/profile/service/profile_service.dart';

class ProfileRemoteService extends ProfileService {
  final Dio _dio;

  ProfileRemoteService(this._dio);

  static const _profilePath = '/api/profile';

  @override
  Future<Profile> getStudentProfile() async {
    try {
      final response = await _dio.get(
        '$_profilePath/get-student-info',
      );
      return Profile.fromJson(response.data as Map<String, dynamic>);
    } on DioException catch (e) {
      debugPrint('${e.response?.requestOptions.path} $e');
      rethrow;
    }
  }
}
