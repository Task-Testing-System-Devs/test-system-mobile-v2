import '../model/rating.dart';

abstract class RatingService {
  Future<List<Rating>> getRatingByMarks();

  Future<List<Rating>> getRatingByTasks();
}
