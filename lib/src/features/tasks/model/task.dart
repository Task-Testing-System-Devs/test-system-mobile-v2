import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_system/src/features/tasks/model/test.dart';

import '../../../shared/enums/programming_language.dart';
import '../../../shared/widgets/complexity_widget.dart';

part 'task.freezed.dart';

part 'task.g.dart';

@freezed
class Task with _$Task {
  const factory Task({
    required String id,
    required DateTime endDate,
    required Complexity complexity,
    required List<ProgrammingLanguage> languages,
    required String title,
    required String description,
    List<Test>? examples,
    double? maxTime,
    double? maxMemory,
  }) = _Task;

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);
}
