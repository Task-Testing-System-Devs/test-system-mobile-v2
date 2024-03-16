// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rating_user_info.freezed.dart';

part 'rating_user_info.g.dart';

@freezed
class RatingUserInfo with _$RatingUserInfo {
  const factory RatingUserInfo({
    required String firstName,
    required String lastName,
    required String middleName,
  }) = _RatingUserInfo;

  const RatingUserInfo._();

  factory RatingUserInfo.fromJson(Map<String, dynamic> json) =>
      _$RatingUserInfoFromJson(json);

  static List<RatingUserInfo> listFromJson(List<dynamic> list) => list
      .map((e) => RatingUserInfo.fromJson(e as Map<String, dynamic>))
      .toList();

  String get fullName => '$lastName $firstName $middleName';
}
