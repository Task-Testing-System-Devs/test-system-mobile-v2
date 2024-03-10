import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_system/src/features/tasks/view/widgets/test_example_widget.dart';
import 'package:test_system/src/shared/colors/colors.dart';
import 'package:test_system/src/shared/widgets/app_elevated_button.dart';
import 'package:test_system/src/shared/widgets/text_info_widget.dart';

import '../../../shared/enums/programming_language.dart';
import '../../../shared/widgets/complexity_widget.dart';
import '../model/task.dart';
import '../model/test.dart';

class TaskPage extends ConsumerStatefulWidget {
  const TaskPage({super.key, required this.taskId});

  final String taskId;

  @override
  ConsumerState<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends ConsumerState<TaskPage> {
  final task = Task(
    id: '1',
    title: 'Test task',
    description:
        'Вы решаете самую простую задачу. Решите её наконец-то, и давайте уже расстанемся мирно.',
    examples: [
      const Test(input: '1 2', output: '3'),
      const Test(input: '1 2', output: '3'),
      const Test(input: '1 2', output: '3'),
    ],
    endDate: DateTime.now()..add(const Duration(days: 5)),
    languages: <ProgrammingLanguage>[ProgrammingLanguage.java],
    complexity: Complexity.hard,
    maxTime: 5.3,
    maxMemory: 2,
  );

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: AppColors.surface,
      appBar: AppBar(
        title: Text(
          task.title,
          style: theme.textTheme.headlineMedium,
        ),
      ),
      endDrawer: Column(
        children: [
          Container(
            height: 848,
            width: MediaQuery.sizeOf(context).width * 0.75,
            color: AppColors.surface,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (task.maxTime != null)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: TextInfoWidget(
                        primary: 'Ограничение по времени',
                        secondary: '${task.maxTime} с',
                      ),
                    ),
                  if (task.maxMemory != null)
                    TextInfoWidget(
                      primary: 'Ограничение по памяти',
                      secondary: '${task.maxMemory} МБ',
                    ),
                ],
              ),
            ),
            _Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Условие',
                    style: theme.textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 16),
                  Text(task.description),
                  const SizedBox(height: 16),
                  if (task.examples != null)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          for (int i = 0; i < task.examples!.length; ++i)
                            TestExampleWidget(
                              test: task.examples![i],
                              exampleNumber: i + 1,
                            ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
            _Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Язык', style: theme.textTheme.headlineMedium),
                  const SizedBox(height: 8),
                  DropdownButton<ProgrammingLanguage>(
                    value: ref.watch(_chosenLanguageProvider),
                    items: <DropdownMenuItem<ProgrammingLanguage>>[
                      ...ProgrammingLanguage.values
                          .map<DropdownMenuItem<ProgrammingLanguage>>(
                              (e) => DropdownMenuItem(
                                    value: e,
                                    child: Text(
                                      e.name,
                                      style: theme.textTheme.bodyMedium,
                                    ),
                                  ))
                    ],
                    onChanged: (value) {
                      ref.read(_chosenLanguageProvider.notifier).state = value;
                    },
                  ),
                ],
              ),
            ),
            _Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Ваше решение', style: theme.textTheme.headlineMedium),
                  const SizedBox(height: 8),
                  TextField(
                    controller: ref.watch(_codeControllerProvider),
                    maxLines: 10,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: AppElevatedButton(
                text: 'Отправить решение',
                onPressed: () {},
              ),
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}

class _Card extends StatelessWidget {
  const _Card({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.card,
      ),
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.only(bottom: 8),
      width: MediaQuery.sizeOf(context).width,
      child: child,
    );
  }
}

final _codeControllerProvider = Provider<TextEditingController>(
  (ref) => TextEditingController(),
);

final _chosenLanguageProvider = StateProvider<ProgrammingLanguage?>(
  (ref) => ProgrammingLanguage.cPlusPlus,
);
