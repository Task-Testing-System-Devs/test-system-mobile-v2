import 'package:flutter/material.dart';
import 'package:test_system/src/features/contests/models/contest.dart';
import 'package:test_system/src/shared/enums/programming_language.dart';
import 'package:test_system/src/shared/widgets/complexity_widget.dart';
import 'package:test_system/src/features/contests/view/widgets/contest_widget.dart';

class ContestsPage extends StatelessWidget {
  const ContestsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                for (final complexity in Complexity.values)
                  for (final lang in ProgrammingLanguage.values)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: ContestWidget(
                        contest: Contest(
                          id: '',
                          name: 'Test contest',
                          endDate: DateTime.now(),
                          complexity: complexity,
                          languages: <ProgrammingLanguage>[lang],
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
