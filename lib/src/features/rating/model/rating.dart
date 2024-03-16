// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

import 'rating_user_info.dart';

part 'rating.freezed.dart';

part 'rating.g.dart';

@freezed
class Rating with _$Rating {
  const factory Rating({
    required int id,
    required RatingUserInfo userShortInfo,
  }) = _Rating;

  factory Rating.fromJson(Map<String, dynamic> json) => _$RatingFromJson(json);

  static List<Rating> listFromJson(List<dynamic> list) =>
      list.map((e) => Rating.fromJson(e as Map<String, dynamic>)).toList();
}
