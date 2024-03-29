import 'package:flutter/material.dart';
import 'package:test_system/src/shared/colors/colors.dart';

enum Complexity {
  veryEasy,
  easy,
  medium,
  hard,
  veryHard;

  static Complexity fromNumber(int number) {
    switch (number) {
      case 1:
        return Complexity.veryEasy;
      case 2:
        return Complexity.easy;
      case 3:
        return Complexity.medium;
      case 4:
        return Complexity.hard;
      case 5:
        return Complexity.veryHard;
      default:
        return Complexity.medium;
    }
  }
}

class ComplexityWidget extends StatelessWidget {
  const ComplexityWidget({
    required this.complexity,
    super.key,
  });

  final Complexity complexity;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        5,
        (index) => _CircleWidget(index, complexity),
      ),
    );
  }
}

class _CircleWidget extends StatelessWidget {
  const _CircleWidget(this.index, this.complexity);

  final int index;
  final Complexity complexity;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20.0,
      height: 20.0,
      margin: const EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: _color,
      ),
    );
  }

  Color get _color {
    switch ((index, complexity)) {
      case (0, Complexity.veryEasy):
        return AppColors.green;
      case (0, Complexity.easy):
      case (1, Complexity.easy):
      case (0, Complexity.medium):
      case (1, Complexity.medium):
      case (2, Complexity.medium):
        return AppColors.orange;
      case (0, Complexity.hard):
      case (1, Complexity.hard):
      case (2, Complexity.hard):
      case (3, Complexity.hard):
      case (0, Complexity.veryHard):
      case (1, Complexity.veryHard):
      case (2, Complexity.veryHard):
      case (3, Complexity.veryHard):
      case (4, Complexity.veryHard):
        return AppColors.red;
      default:
        return AppColors.surface;
    }
  }
}
