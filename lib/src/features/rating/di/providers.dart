import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_system/src/features/rating/service/rating_remote_service.dart';
import 'package:test_system/src/features/rating/service/rating_service.dart';
import 'package:test_system/src/services/network/di/providers.dart';

import '../model/rating.dart';

final ratingServiceProvider = Provider<RatingService>(
  (ref) => RatingRemoteService(
    ref.watch(dioProvider),
  ),
);

final ratingByMarksProvider = FutureProvider.autoDispose<List<Rating>>((ref) async {
  final ratingService = ref.watch(ratingServiceProvider);
  final rating = await ratingService.getRatingByMarks();
  return rating;
});

final ratingByTasksProvider = FutureProvider.autoDispose<List<Rating>>((ref) async {
  final ratingService = ref.watch(ratingServiceProvider);
  final rating = await ratingService.getRatingByTasks();
  return rating;
});
