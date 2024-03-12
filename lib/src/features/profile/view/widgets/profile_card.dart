import 'package:flutter/material.dart';
import 'package:test_system/src/shared/colors/colors.dart';

class ProfileCard extends StatelessWidget {
  final ThemeData theme;
  const ProfileCard({Key? key, required this.theme}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.card,
      ),
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.only(bottom: 8),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Your Name",
            style: theme.textTheme.displaySmall,
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("test"),
                const SizedBox(height: 16),
                Text(
                  "Почта:",
                  style: theme.textTheme.bodyMedium,
                ),
                const SizedBox(height: 16),
                Text(
                  "test@edu.hse.ru",
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}