import 'package:flutter/material.dart';
import 'package:test_system/src/shared/enums/programming_language.dart';
import 'package:test_system/src/shared/widgets/contest_complexity.dart';
import 'package:test_system/src/shared/widgets/contest_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            children: [
              const ContestComplexityWidget(
                  complexity: ContestComplexity.veryEasy),
              const ContestComplexityWidget(complexity: ContestComplexity.easy),
              const ContestComplexityWidget(
                  complexity: ContestComplexity.medium),
              const ContestComplexityWidget(complexity: ContestComplexity.hard),
              const ContestComplexityWidget(
                  complexity: ContestComplexity.veryHard),
              const SizedBox(height: 16),
              ContestWidget(
                name: 'Контест для практики',
                endDate: DateTime.now(),
                complexity: ContestComplexity.veryHard,
                languages: const [ProgrammingLanguage.python, ProgrammingLanguage.dart, ProgrammingLanguage.cPlusPlus],
              )
            ],
          ),
        ),
      ),
    );
  }
}
