import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../interceptors/app_interceptor.dart';

final dioProvider = Provider((ref) {
  final dio = Dio();
  dio.options = BaseOptions(
    baseUrl: 'http://192.168.204.246:8080',
    contentType: Headers.jsonContentType,
  );
  dio.interceptors.add(AppInterceptor());
  return dio;
});