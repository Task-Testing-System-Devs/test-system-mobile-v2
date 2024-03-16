import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_system/src/features/submissions/model/submission.dart';
import 'package:test_system/src/features/submissions/service/submission_remote_service.dart';
import 'package:test_system/src/features/submissions/service/submission_service.dart';
import 'package:test_system/src/services/network/di/providers.dart';

final submissionServiceProvider = Provider<SubmissionService>(
  (ref) => SubmissionRemoteService(ref.watch(dioProvider)),
);

final submissionsProvider = FutureProvider.autoDispose<List<Submission>>((ref) async {
  final submissionService = ref.watch(submissionServiceProvider);
  final submissions = await submissionService.getSubmissions();
  return submissions;
});
