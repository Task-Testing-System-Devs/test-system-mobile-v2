import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_system/src/features/rating/di/providers.dart';
import 'package:test_system/src/features/rating/view/widgets/rating_widget.dart';

class RatingPage extends ConsumerWidget {
  const RatingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: ref.watch(ratingByMarksProvider).when(
              data: (ratingList) {
                return SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Продвигайтесь по рейтингу, решая задачи',
                          style: theme.textTheme.headlineLarge,
                        ),
                        const SizedBox(height: 16),
                        for (int i = 0; i < ratingList.length; ++i)
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: RatingWidget(
                              position: i + 1,
                              rating: ratingList[i],
                            ),
                          ),
                      ],
                    ),
                  ),
                );
              },
              error: (e, s) => Center(child: Text('$e $s')),
              loading: () => const Center(child: CircularProgressIndicator()),
            ),
      ),
    );
  }
}
