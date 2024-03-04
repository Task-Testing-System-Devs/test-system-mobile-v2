import 'package:flutter/material.dart';
import 'package:test_system/src/features/submissions/model/submission.dart';
import 'package:test_system/src/features/submissions/view/widgets/submission_widget.dart';

import '../../../shared/enums/programming_language.dart';

class SubmissionsPage extends StatelessWidget {
  const SubmissionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                for (int i = 0; i < ProgrammingLanguage.values.length; ++i)
                  for (final language in ProgrammingLanguage.values)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: SubmissionWidget(
                        submission: Submission(
                          id: '${i + 1}',
                          code: 'a = int(input())',
                          language: language,
                          status: 'OK',
                          usedTime: 2.5,
                          usedMemory: 5.4,
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
