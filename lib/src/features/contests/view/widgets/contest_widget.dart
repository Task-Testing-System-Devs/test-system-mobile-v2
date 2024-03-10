import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_system/src/shared/assets/app_assets.dart';
import 'package:test_system/src/shared/routing/di/providers.dart';
import 'package:test_system/src/shared/widgets/complexity_widget.dart';
import 'package:test_system/src/shared/widgets/universal_asset_image.dart';

import '../../../../shared/colors/colors.dart';
import '../../models/contest.dart';

class ContestWidget extends ConsumerWidget {
  const ContestWidget({
    super.key,
    required this.contest,
  });

  final Contest contest;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);

    return GestureDetector(
      onTap: () => ref.read(navigationManagerProvider).go(
            '/contests/contest/${contest.id}',
          ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: AppColors.card,
          boxShadow: [
            BoxShadow(
              color: Colors.grey[300]!,
              offset: const Offset(0, 1),
              blurRadius: 5,
            )
          ],
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          contest.name,
                          style: theme.textTheme.bodyLarge,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'Решить до ${contest.endDate.day}.${contest.endDate.month}.${contest.endDate.year}',
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: AppColors.textSecondary,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Сложность',
                          style: theme.textTheme.bodyLarge,
                        ),
                        const SizedBox(height: 4),
                        ComplexityWidget(complexity: contest.complexity),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Языки',
                          style: theme.textTheme.bodyLarge,
                        ),
                        const SizedBox(height: 4),
                        Row(
                          children: List.generate(
                            3,
                            (index) => index < contest.languages.length
                                ? Padding(
                                    padding: const EdgeInsets.only(right: 8),
                                    child: UniversalAssetImage(
                                      contest.languages.elementAt(index).asset,
                                    ),
                                  )
                                : const SizedBox(),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(width: 24),
                Image.asset(AppBanners.assetContest),
              ],
            ),
            // const SizedBox(height: 24),
            // AppElevatedButton(
            //   buttonSize: ButtonSize.medium,
            //   text: 'Решить',
            //   onPressed: () {},
            // )
          ],
        ),
      ),
    );
  }
}
