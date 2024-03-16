import 'package:flutter/material.dart';
import 'package:test_system/src/features/profile/view/widgets/profile_card.dart';
import 'package:test_system/src/shared/assets/app_banners.dart';
import 'package:test_system/src/shared/colors/colors.dart';
import 'package:test_system/src/shared/widgets/universal_asset_image.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: AppColors.surface,
      appBar: AppBar(
        title: Text(
          'Профиль',
          style: theme.textTheme.headlineMedium,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                UniversalAssetImage(AppBanners.guys1),
                UniversalAssetImage(AppBanners.guys2),
              ],
            ),
            ProfileCard(
              theme: theme,
            ),
          ],
        ),
      ),
    );
  }
}


