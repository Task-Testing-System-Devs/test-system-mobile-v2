
import 'package:flutter/material.dart';

import '../../model/test.dart';

class TestExampleWidget extends StatelessWidget {
  const TestExampleWidget({
    required this.test,
    required this.exampleNumber,
    super.key,
  });

  final Test test;
  final int exampleNumber;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Пример $exampleNumber',
            style: theme.textTheme.headlineSmall,
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ввод',
                      style: theme.textTheme.headlineSmall,
                    ),
                    const SizedBox(height: 4),
                    Text(test.input),
                  ],
                ),
              ),
              const SizedBox(width: 32),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Вывод',
                      style: theme.textTheme.headlineSmall,
                    ),
                    const SizedBox(height: 4),
                    Text(test.output),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
