import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_system/src/features/submissions/di/providers.dart';
import 'package:test_system/src/features/submissions/view/widgets/submission_widget.dart';

class SubmissionsPage extends ConsumerWidget {
  const SubmissionsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: ref.watch(submissionsProvider).when(
              data: (submissions) {
                if (submissions.isEmpty) {
                  return const Center(
                    child: Text(
                      'Вы еще не решали задачи. Самое время этим заняться!',
                      textAlign: TextAlign.center,
                    ),
                  );
                }
                return SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
                        for (final submission in submissions)
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: SubmissionWidget(
                              submission: submission,
                            ),
                          ),
                      ],
                    ),
                  ),
                );
              },
              error: (e, s) {
                return Center(
                  child: Text('$e $s'),
                );
              },
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
            ),
      ),
    );
  }
}
