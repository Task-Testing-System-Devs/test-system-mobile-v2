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
        options: Options(
          headers: {
            'Authorization':
                'Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJlYnN0YXJ0c2V2QGVkdS5oc2UucnUiLCJpYXQiOjE3MTA1MDQ0MjAsImV4cCI6MTcxMTEwOTIyMH0.YvEn4kkKMMvhPF0rALawKoynuu1l5yjSM4aZXDkoQHc'
          },
        ),
      );
      return Profile.fromJson(response.data as Map<String, dynamic>);
    } on DioException catch (e) {
      debugPrint('${e.response?.requestOptions.path} $e');
      rethrow;
    }
  }
}
