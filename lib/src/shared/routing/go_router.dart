import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:test_system/src/features/auth/di/providers.dart';
import 'package:test_system/src/features/auth/view/auth_page.dart';
import 'package:test_system/src/features/contests/view/contests_page.dart';
import 'package:test_system/src/features/profile/view/profile_page.dart';
import 'package:test_system/src/features/rating/view/rating_page.dart';
import 'package:test_system/src/features/submissions/view/submissions_page.dart';
import 'package:test_system/src/features/tasks/view/tasks_page.dart';
import 'package:test_system/src/shared/routing/scaffold.dart';

import '../../features/tasks/view/task_page.dart';

final navigatorKeyProvider = Provider<GlobalKey<NavigatorState>>((ref) {
  return GlobalKey<NavigatorState>();
});

final routerProvider = Provider<GoRouter>(
  (ref) {
    final token = ref.watch(authTokenProvider);

    final initialLocation = token == null ? '/auth' : '/contests';

    final contestRoutes = [
      GoRoute(
        path: '/contests',
        builder: (context, page) => const ContestsPage(),
        routes: [
          GoRoute(
            path: ':contest_id',
            builder: (context, state) {
              final contestId = state.pathParameters['contest_id']!;
              return TasksPage(contestId: contestId);
            },
            routes: [
              GoRoute(
                path: ':task_id',
                builder: (context, state) {
                  final taskId = state.pathParameters['task_id']!;
                  return TaskPage(taskId: taskId);
                },
              ),
            ],
          ),
        ],
      ),
    ];

    final ratingRoutes = [
      GoRoute(
        path: '/rating',
        builder: (context, page) => const RatingPage(),
      ),
    ];

    final submissionRoutes = [
      GoRoute(
        path: '/submissions',
        builder: (context, page) => const SubmissionsPage(),
      ),
    ];

    final profileRoutes = [
      GoRoute(
        path: '/profile',
        builder: (context, page) => const ProfilePage(),
      ),
    ];

    final router = GoRouter(
      navigatorKey: ref.watch(navigatorKeyProvider),
      initialLocation: initialLocation,
      routes: [
        GoRoute(
          path: '/auth',
          pageBuilder: (context, state) => const NoTransitionPage(
            child: AuthPage(),
          ),
        ),
        StatefulShellRoute(
          branches: [
            StatefulShellBranch(
              routes: contestRoutes,
            ),
            StatefulShellBranch(
              routes: ratingRoutes,
            ),
            StatefulShellBranch(
              routes: submissionRoutes,
            ),
            StatefulShellBranch(
              routes: profileRoutes,
            ),
          ],
          builder: (context, state, navigationShell) => navigationShell,
          navigatorContainerBuilder: (context, navigationShell, children) {
            return ScaffoldWithNavBar(
              navigationShell: navigationShell,
              children: children,
            );
          },
        ),
      ],
    );
    return router;
  },
);
