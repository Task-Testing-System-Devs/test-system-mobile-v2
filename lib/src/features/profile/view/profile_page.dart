import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_system/src/features/profile/di/providers.dart';
import 'package:test_system/src/features/profile/view/widgets/profile_card.dart';
import 'package:test_system/src/services/storage/di/providers.dart';
import 'package:test_system/src/shared/assets/app_banners.dart';
import 'package:test_system/src/shared/colors/colors.dart';
import 'package:test_system/src/shared/routing/di/providers.dart';
import 'package:test_system/src/shared/widgets/app_elevated_button.dart';
import 'package:test_system/src/shared/widgets/universal_asset_image.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: AppColors.surface,
      appBar: AppBar(
        title: Text(
          'Профиль',
          style: theme.textTheme.headlineMedium,
        ),
      ),
      body: SafeArea(
        child: ref.watch(profileProvider).when(
              data: (profile) {
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          UniversalAssetImage(AppBanners.guys1),
                          UniversalAssetImage(AppBanners.guys2),
                        ],
                      ),
                      ProfileCard(profile: profile),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: AppElevatedButton(
                          text: 'Выйти',
                          onPressed: () {
                            ref.read(secureStorageServiceProvider).setToken('');
                            ref.read(navigationManagerProvider).go('/auth');
                          },
                        ),
                      )
                    ],
                  ),
                );
              },
              error: (e, s) => Center(
                child: Text('$e $s'),
              ),
              loading: () => const Center(child: CircularProgressIndicator()),
            ),
      ),
    );
  }
}
