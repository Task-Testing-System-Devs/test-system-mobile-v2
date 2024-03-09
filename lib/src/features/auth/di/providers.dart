import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_system/src/features/auth/managers/auth_manager.dart';
import 'package:test_system/src/features/auth/service/auth_remote_service.dart';
import 'package:test_system/src/features/auth/service/auth_service.dart';
import 'package:test_system/src/services/network/di/providers.dart';
import 'package:test_system/src/services/storage/di/providers.dart';
import 'package:test_system/src/shared/routing/di/providers.dart';

final authManagerProvider = Provider<AuthManager>(
  (ref) => AuthManager(
    ref.watch(_authServiceProvider),
    ref.watch(secureStorageServiceProvider),
    ref.watch(authTokenProvider.notifier),
    ref.watch(navigationManagerProvider),
  ),
);

final _authServiceProvider = Provider<AuthService>(
  (ref) => AuthRemoteService(ref.watch(dioProvider)),
);

final authTokenProvider = StateProvider<String?>((ref) => null);
