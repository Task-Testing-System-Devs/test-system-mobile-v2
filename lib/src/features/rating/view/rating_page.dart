import 'package:flutter/material.dart';
import 'package:test_system/src/features/rating/view/widgets/rating_widget.dart';

class RatingPage extends StatelessWidget {
  const RatingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Продвигайтесь по рейтингу, решая задачи',
                  style: theme.textTheme.headlineLarge,
                ),
                const SizedBox(height: 16),
                for (int i = 0; i < 20; ++i)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: RatingWidget(
                      position: i + 1,
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
