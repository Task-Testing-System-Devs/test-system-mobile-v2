import '../model/profile.dart';

abstract class ProfileService {
  Future<Profile> getStudentProfile();
}