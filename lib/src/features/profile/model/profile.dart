import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile.freezed.dart';

part 'profile.g.dart';

@freezed
@JsonSerializable(fieldRename: FieldRename.snake)
class Profile with _$Profile {
  const factory Profile({
    required int id,
    required String email,
    required String firstName,
    required String lastName,
    required String middleName,
    String? department,
    String? group,
  }) = _Profile;

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);
}
