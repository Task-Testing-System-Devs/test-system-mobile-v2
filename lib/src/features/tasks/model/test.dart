import 'package:freezed_annotation/freezed_annotation.dart';

part 'test.freezed.dart';

part 'test.g.dart';

@freezed
class Test with _$Test {
  const factory Test({
    required String input,
    required String output,
  }) = _Test;

  factory Test.fromJson(Map<String, dynamic> json) => _$TestFromJson(json);
}
