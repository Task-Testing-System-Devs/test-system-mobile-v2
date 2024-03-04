import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_system/src/features/auth/view/auth_page.dart';
import 'package:test_system/src/features/submissions/model/submission.dart';
import 'package:test_system/src/shared/enums/programming_language.dart';
import 'package:test_system/src/shared/theme/color_scheme.dart';
import 'package:test_system/src/shared/theme/text_theme.dart';
import 'package:test_system/src/shared/widgets/app_text_field.dart';
import 'package:test_system/src/shared/widgets/complexity_widget.dart';
import 'package:test_system/src/shared/widgets/contest_widget.dart';
import 'package:test_system/src/shared/widgets/submission_widget.dart';

import 'src/shared/widgets/task_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        theme: ThemeData(
          textTheme: AppTextTheme.light,
          colorScheme: AppColorScheme.light,
        ),
        home: const AuthPage(),
        // home: Scaffold(
        //   backgroundColor: AppColorScheme.surface,
        //   body: SingleChildScrollView(
        //     child: Column(
        //       children: [
        //         const SizedBox(height: 56),
        //         ContestWidget(
        //           name: 'Контест для практики',
        //           endDate: DateTime.now(),
        //           complexity: Complexity.veryHard,
        //           languages: const [
        //             ProgrammingLanguage.python,
        //             ProgrammingLanguage.dart,
        //             ProgrammingLanguage.cPlusPlus
        //           ],
        //         ),
        //         const SizedBox(height: 16),
        //         TaskWidget(
        //           name: 'Задача номер 1',
        //           endDate: DateTime.now(),
        //           complexity: Complexity.easy,
        //           languages: const [
        //             ProgrammingLanguage.cSharp,
        //             ProgrammingLanguage.swift,
        //             ProgrammingLanguage.ruby
        //           ],
        //         ),
        //         const SizedBox(height: 16),
        //         const SubmissionWidget(
        //           submission: Submission(
        //             id: '703',
        //             status: 'OK',
        //             //errorTest: '0',
        //             code: 'a = int(input())',
        //             language: ProgrammingLanguage.python,
        //             usedMemory: 1.2,
        //             usedTime: 1.2,
        //           ),
        //         ),
        //         const SizedBox(height: 16),
        //         const SubmissionWidget(
        //           submission: Submission(
        //             id: '302',
        //             status: 'WA',
        //             errorTest: '0',
        //             code: 'a = int(input())',
        //             language: ProgrammingLanguage.kotlin,
        //             usedMemory: 5.2,
        //             usedTime: 0.54,
        //           ),
        //         ),
        //         const SizedBox(height: 32),
        //         Container(
        //           color: Colors.white,
        //           child: AppTextField(
        //             controller: TextEditingController(),
        //             leading: const Icon(Icons.add),
        //             hintText: 'Testing',
        //           ),
        //         ),
        //         const SizedBox(
        //           height: 43,
        //         )
        //       ],
        //     ),
        //   ),
        // ),
      ),
    );
  }
}
