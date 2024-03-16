// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_system/src/shared/enums/programming_language.dart';

part 'submission.freezed.dart';

part 'submission.g.dart';

@freezed
@JsonSerializable(fieldRename: FieldRename.snake)
class Submission with _$Submission {
  const factory Submission({
    required int id,
    required String code,
    @JsonKey(fromJson: ProgrammingLanguage.fromNumber)
    required ProgrammingLanguage language,
    required String status,
    required double usedTime,
    required double usedMemory,
    String? taskName,
    String? contestName,
    String? errorTest,
  }) = _Submission;

  factory Submission.fromJson(Map<String, dynamic> json) =>
      _$SubmissionFromJson(json);

  static List<Submission> listFromJson(List<dynamic> list) =>
      list.map((e) => Submission.fromJson(e as Map<String, dynamic>)).toList();
}
