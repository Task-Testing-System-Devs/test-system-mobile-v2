import 'package:flutter/material.dart';
import 'package:test_system/src/features/tasks/model/task.dart';
import 'package:test_system/src/features/tasks/model/test.dart';
import 'package:test_system/src/features/tasks/view/widgets/task_widget.dart';
import 'package:test_system/src/shared/widgets/complexity_widget.dart';

import '../../../shared/enums/programming_language.dart';

class TasksPage extends StatelessWidget {
  const TasksPage({super.key, required this.contestId});

  final String contestId;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Решайте задачи',
          style: theme.textTheme.headlineMedium,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (int i = 0; i < 20; ++i)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: TaskWidget(
                      contestId: contestId,
                      task: Task(
                        id: '1',
                        title: 'Test task',
                        description: 'Вы решаете ебучую поебень!',
                        examples: [
                          const Test(input: '1 2', output: '3'),
                        ],
                        endDate: DateTime.now()..add(const Duration(days: 5)),
                        languages: <ProgrammingLanguage>[
                          ProgrammingLanguage.java
                        ],
                        complexity: Complexity.hard,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
