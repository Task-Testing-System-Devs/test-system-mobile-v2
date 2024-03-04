import 'package:flutter/material.dart';

import '../colors/colors.dart';

class TextInfoWidget extends StatelessWidget {
  const TextInfoWidget({
    super.key,
    required this.primary,
    required this.secondary,
  });

  /// Главный текст
  final String primary;

  /// Вторичный текст
  final String secondary;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          primary,
          style: theme.textTheme.bodyMedium,
        ),
        const SizedBox(height: 4),
        Text(
          secondary,
          style: theme.textTheme.bodySmall?.copyWith(
            color: AppColors.textSecondary,
          ),
        ),
      ],
    );
  }
}
