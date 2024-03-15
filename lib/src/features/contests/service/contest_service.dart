import 'package:test_system/src/features/contests/models/contest.dart';
import 'package:test_system/src/features/submissions/model/submission.dart';
import 'package:test_system/src/features/tasks/model/task.dart';

abstract class ContestService {
  Future<List<Contest>> getContests();

  Future<Contest> getContest(int contestId);

  Future<Task> getTask(String contestId, String taskId);

  Future<void> sendTaskSolution();

  Future<Submission> getSubmission(String contestId, String submissionId);
}
