import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_system/src/features/contests/di/providers.dart';
import 'package:test_system/src/features/tasks/model/task.dart';
import 'package:test_system/src/features/tasks/model/test.dart';
import 'package:test_system/src/features/tasks/view/widgets/task_widget.dart';
import 'package:test_system/src/shared/widgets/complexity_widget.dart';

import '../../../shared/enums/programming_language.dart';

class TasksPage extends ConsumerWidget {
  const TasksPage({super.key, required this.contestId});

  final int contestId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Решайте задачи',
          style: theme.textTheme.headlineMedium,
        ),
      ),
      body: SafeArea(
        child: ref.watch(contestProvider(contestId)).when(
              data: (contest) {
                if (contest.tasks == null || contest.tasks!.isEmpty) {
                  return const Center(
                    child: Text('Задачи в контесте отсутствуют!'),
                  );
                }
                return SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        for (final task in contest.tasks!)
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: TaskWidget(
                              contestId: contestId,
                              task: task,
                            ),
                          ),
                      ],
                    ),
                  ),
                );
              },
              error: (e, s) => Center(
                child: Text('$e $s'),
              ),
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
            ),
      ),
    );
  }
}
