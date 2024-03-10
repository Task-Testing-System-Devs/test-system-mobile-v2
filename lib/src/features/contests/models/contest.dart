import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../shared/enums/programming_language.dart';
import '../../../shared/widgets/complexity_widget.dart';

part 'contest.freezed.dart';

part 'contest.g.dart';

@freezed
class Contest with _$Contest {
  const factory Contest({
    required String id,
    required String name,
    required DateTime endDate,
    required Complexity complexity,
    required List<ProgrammingLanguage> languages,
  }) = _Contest;

  factory Contest.fromJson(Map<String, dynamic> json) =>
      _$ContestFromJson(json);
}
