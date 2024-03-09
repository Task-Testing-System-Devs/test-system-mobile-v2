import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_info.freezed.dart';

part 'auth_info.g.dart';

@freezed
class AuthInfo with _$AuthInfo {
  const factory AuthInfo({
    required String token,
    required String role,
  }) = _AuthInfo;

  factory AuthInfo.fromJson(Map<String, dynamic> json) =>
      _$AuthInfoFromJson(json);
}