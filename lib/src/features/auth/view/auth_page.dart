import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_system/src/shared/colors/colors.dart';
import 'package:test_system/src/shared/routing/di/providers.dart';
import 'package:test_system/src/shared/widgets/app_elevated_button.dart';
import 'package:test_system/src/shared/widgets/app_text_field.dart';
import 'package:test_system/src/shared/widgets/universal_asset_image.dart';

import '../../../shared/assets/app_assets.dart';

class AuthPage extends ConsumerWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: UniversalAssetImage(
                AppIcons.logo,
                height: 96,
                width: 96,
              ),
            ),
            const SizedBox(height: 64),
            const Text('Почта'),
            const SizedBox(height: 8),
            AppTextField(
              controller: ref.watch(_emailTextController),
              leading: const Icon(Icons.email_outlined),
              hintText: 'Введите вашу почту',
            ),
            const SizedBox(height: 16),
            const Text('Пароль'),
            const SizedBox(height: 8),
            AppTextField(
              controller: ref.watch(_passwordTextController),
              leading: const Icon(Icons.key_outlined),
              isTextHidden: true,
              hintText: 'Пароль от 6 символов',
            ),
            const SizedBox(height: 32),
            AppElevatedButton(
              text: 'Авторизоваться',
              onPressed: () {
                ref.read(navigationManagerProvider).go('/contests');
              },
            ),
            const SizedBox(height: 16),
            Text(
              'Забыли пароль? Для восстановления пароля обратитесь в учебное заведение',
              textAlign: TextAlign.center,
              style: theme.textTheme.bodySmall?.copyWith(
                color: AppColors.textSecondary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

final _emailTextController = Provider.autoDispose<TextEditingController>(
  (ref) => TextEditingController(),
);

final _passwordTextController = Provider.autoDispose<TextEditingController>(
  (ref) => TextEditingController(),
);
