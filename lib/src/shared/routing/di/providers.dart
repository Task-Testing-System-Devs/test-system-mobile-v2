import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_system/src/shared/routing/go_router.dart';
import 'package:test_system/src/shared/routing/managers/navigation_manager.dart';

final navigationManagerProvider = Provider<NavigationManager>(
  (ref) => NavigationManager(
    ref.watch(routerProvider),
  ),
);
