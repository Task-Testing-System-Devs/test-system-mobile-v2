import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:test_system/src/features/auth/models/auth_dto.dart';
import 'package:test_system/src/features/auth/models/auth_info.dart';
import 'package:test_system/src/features/auth/service/auth_service.dart';

class AuthRemoteService extends AuthService {
  final Dio _dio;

  AuthRemoteService(this._dio);

  static const _path = '/api/auth';

  @override
  Future<AuthInfo> auth(AuthDto authDto) async {
    try {
      final response = await _dio.post(
        '$_path/login',
        data: authDto.toJson(),
      );
      return AuthInfo.fromJson(response.data as Map<String, dynamic>);
    } on DioException catch (e) {
      debugPrint('${e.response?.requestOptions.path} $e');
      rethrow;
    }
  }
}
