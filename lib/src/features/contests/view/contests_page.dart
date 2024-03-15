import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_system/src/features/contests/di/providers.dart';
import 'package:test_system/src/features/contests/view/widgets/contest_widget.dart';

class ContestsPage extends ConsumerWidget {
  const ContestsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: ref.watch(contestsProvider).when(
              data: (contests) {
                return SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
                        for (final contest in contests)
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: ContestWidget(contest: contest),
                          ),
                      ],
                    ),
                  ),
                );
              },
              error: (e, s) => Center(child: Text('Ошибка номер $e $s')),
              loading: () => const Center(child: CircularProgressIndicator()),
            ),
      ),
    );
  }
}
