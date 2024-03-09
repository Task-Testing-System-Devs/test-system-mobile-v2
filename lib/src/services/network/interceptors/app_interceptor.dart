import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class AppInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    debugPrint(
      '----------NETWORK ERROR----------\n'
      'Network error!\nPath: ${err.requestOptions.path}\nStatus code: ${err.response?.statusCode}\nResponse: ${err.response?.data}\n'
      '----------NETWORK ERROR----------\n',
    );
    super.onError(err, handler);
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    debugPrint(
      '----------REQUEST SENT----------\n'
      'Request sent to ${options.path}\nQuery parameters: ${options.queryParameters}\nData: ${options.data}\n'
      '----------REQUEST SENT----------\n',
    );
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    debugPrint(
      '----------GOT RESPONSE----------\n'
      'Got response from ${response.requestOptions.path}\nStatus code: ${response.statusCode}\nData: ${response.data}\n'
      '----------GOT RESPONSE----------\n',
    );
    super.onResponse(response, handler);
  }
}
