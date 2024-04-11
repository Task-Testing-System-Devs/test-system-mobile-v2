import 'package:flutter/material.dart';

class AppSnackBar extends StatelessWidget {
  const AppSnackBar({
    this.message,
    super.key,
  });

  final String? message;

  static void show(
    BuildContext context, {
    String? message,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.green,
        duration: const Duration(seconds: 3),
        content: AppSnackBar(message: message),
      ),
    );
  }

  static void hide(BuildContext context) {
    ScaffoldMessenger.of(context)
        .hideCurrentSnackBar(reason: SnackBarClosedReason.action);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Text(
      message ?? '',
      textAlign: TextAlign.center,
      style: theme.textTheme.bodySmall?.copyWith(
        color: theme.colorScheme.onPrimary,
      ),
    );
  }
}
