import 'package:flutter/material.dart';
import 'package:test_system/src/shared/colors/colors.dart';

/// Enum for choosing button size. Large - height 56, medium - height 48, small - height 32.
enum ButtonSize {
  large,
  medium,
  small,
}

/// A enum responsible for button state. common is the usual state of the button, loading is the
/// loading state (with a circular progress indicator) and disabled is the disabled state.
enum ButtonState {
  common,
  loading,
  disabled,
}

class AppElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;
  final ButtonSize buttonSize;
  final ButtonState buttonState;

  const AppElevatedButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.color = AppColors.primary,
    this.buttonSize = ButtonSize.large,
    this.buttonState = ButtonState.common,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _height,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 0.0,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          backgroundColor: buttonState == ButtonState.disabled
              ? AppColors.actionDisabled
              : color,
        ),
        child: _child(context),
      ),
    );
  }

  double get _height {
    switch (buttonSize) {
      case ButtonSize.large:
        return 56;
      case ButtonSize.medium:
        return 48;
      case ButtonSize.small:
        return 32;
    }
  }

  Widget _child(BuildContext context) {
    if (buttonState == ButtonState.loading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
    return Text(
      text,
      style: Theme.of(context).textTheme.titleLarge?.copyWith(
            color: AppColors.textOn,
          ),
    );
  }
}
