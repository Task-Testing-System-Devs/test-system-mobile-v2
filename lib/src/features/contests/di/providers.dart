import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_system/src/features/contests/models/contest.dart';
import 'package:test_system/src/features/contests/service/contest_remote_service.dart';
import 'package:test_system/src/features/contests/service/contest_service.dart';
import 'package:test_system/src/services/network/di/providers.dart';

final contestServiceProvider = Provider<ContestService>(
  (ref) => ContestRemoteService(
    ref.watch(dioProvider),
    ref.watch(ejudgeDioProvider),
  ),
);

final contestsProvider = FutureProvider<List<Contest>>((ref) async {
  final contestService = ref.watch(contestServiceProvider);
  final contests = await contestService.getContests();
  return contests;
});

final contestProvider = FutureProvider.family<Contest, int>((ref, id) async {
  final contestService = ref.watch(contestServiceProvider);
  final contest = await contestService.getContest(id);
  return contest;
});