import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_system/src/features/tasks/model/task.dart';
import 'package:test_system/src/shared/routing/di/providers.dart';

import '../../../../shared/assets/app_assets.dart';
import '../../../../shared/colors/colors.dart';
import '../../../../shared/widgets/complexity_widget.dart';
import '../../../../shared/widgets/universal_asset_image.dart';

class TaskWidget extends ConsumerWidget {
  const TaskWidget({
    super.key,
    required this.contestId,
    required this.task,
  });

  final int contestId;
  final Task task;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);

    return GestureDetector(
      onTap: () => ref.read(navigationManagerProvider).go(
            '/contests/$contestId/${task.id}',
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
            ),
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
                          task.title,
                          style: theme.textTheme.bodyLarge,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'Решить до ${task.finishTime?.day}.${task.finishTime?.month}.${task.finishTime?.year}',
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: AppColors.textSecondary,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    // Column(
                    //   crossAxisAlignment: CrossAxisAlignment.start,
                    //   children: <Widget>[
                    //     Text(
                    //       'Сложность',
                    //       style: theme.textTheme.bodyLarge,
                    //     ),
                    //     const SizedBox(height: 4),
                    //     ComplexityWidget(
                    //       complexity: task.complexity,
                    //     ),
                    //   ],
                    // ),
                    // const SizedBox(height: 8),
                    // Column(
                    //   crossAxisAlignment: CrossAxisAlignment.start,
                    //   children: <Widget>[
                    //     Text(
                    //       'Языки',
                    //       style: theme.textTheme.bodyLarge,
                    //     ),
                    //     const SizedBox(height: 4),
                    //     Row(
                    //       children: List.generate(
                    //         3,
                    //         (index) => index < task.languages.length
                    //             ? Padding(
                    //                 padding: const EdgeInsets.only(right: 8),
                    //                 child: UniversalAssetImage(
                    //                   task.languages.elementAt(index).asset,
                    //                 ),
                    //               )
                    //             : const SizedBox(),
                    //       ),
                    //     )
                    //   ],
                    // ),
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
