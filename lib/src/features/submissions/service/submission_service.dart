import 'package:test_system/src/features/submissions/model/submission.dart';

abstract class SubmissionService {
  Future<List<Submission>> getSubmissions();
}