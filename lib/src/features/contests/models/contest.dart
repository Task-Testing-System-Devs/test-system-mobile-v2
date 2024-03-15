// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../shared/enums/programming_language.dart';
import '../../../shared/widgets/complexity_widget.dart';
import '../../tasks/model/task.dart';

part 'contest.freezed.dart';

part 'contest.g.dart';

@freezed
@JsonSerializable(fieldRename: FieldRename.snake)
class Contest with _$Contest {
  const factory Contest({
    required int id,
    required int ejudgeId,
    @JsonKey(name: 'title') required String name,
    @JsonKey(
      toJson: _dateTimeToJson,
      fromJson: DateTime.parse,
    )
    required DateTime finishTime,
    @JsonKey(name: 'difficulty', fromJson: Complexity.fromNumber)
    required Complexity complexity,
    DateTime? startTime,
    List<ProgrammingLanguage>? languages,
    List<Task>? tasks,
  }) = _Contest;

  factory Contest.fromJson(Map<String, dynamic> json) =>
      _$ContestFromJson(json);

  static List<Contest> listFromJson(List<dynamic> list) =>
      list.map((e) => Contest.fromJson(e as Map<String, dynamic>)).toList();
}

String _dateTimeToJson(DateTime dateTime) {
  return dateTime.toIso8601String();
}
