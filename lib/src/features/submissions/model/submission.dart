import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_system/src/shared/enums/programming_language.dart';

part 'submission.freezed.dart';

part 'submission.g.dart';

@freezed
class Submission with _$Submission {
  const factory Submission({
    required String id,
    required String code,
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
}
