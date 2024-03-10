import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_system/src/features/auth/di/providers.dart';

import 'package:test_system/src/shared/routing/go_router.dart';
import 'package:test_system/src/shared/theme/color_scheme.dart';
import 'package:test_system/src/shared/theme/text_theme.dart';

import 'src/shared/colors/colors.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final container = ProviderContainer();

  await container.read(authManagerProvider).authFromStorage();

  runApp(
    UncontrolledProviderScope(
      container: container,
      child: const MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);

    return ProviderScope(
      child: MaterialApp.router(
        theme: ThemeData(
          textTheme: AppTextTheme.light,
          colorScheme: AppColorScheme.light,
          appBarTheme: const AppBarTheme(
            surfaceTintColor: AppColors.card,
          ),
        ),
        routerConfig: router,
      ),
    );
  }
}
