import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_system/src/features/profile/service/profile_remote_service.dart';
import 'package:test_system/src/features/profile/service/profile_service.dart';
import 'package:test_system/src/services/network/di/providers.dart';

final profileServiceProvider = Provider<ProfileService>(
  (ref) => ProfileRemoteService(
    ref.watch(dioProvider),
  ),
);

final profileProvider = FutureProvider.autoDispose((ref) async {
  final profileService = ref.watch(profileServiceProvider);
  final profile = await profileService.getStudentProfile();
  return profile;
});
