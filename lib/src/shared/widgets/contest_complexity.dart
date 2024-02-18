import 'package:flutter/material.dart';
import 'package:test_system/src/shared/colors/color_scheme.dart';

enum ContestComplexity {
  veryEasy,
  easy,
  medium,
  hard,
  veryHard,
}

class ContestComplexityWidget extends StatelessWidget {
  const ContestComplexityWidget({
    required this.complexity,
    super.key,
  });

  final ContestComplexity complexity;

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
  final ContestComplexity complexity;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20.0,
      height: 20.0,
      margin: const EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: _color,
      ),
    );
  }

  Color get _color {
    switch ((index, complexity)) {
      case (0, ContestComplexity.veryEasy):
        return AppColorScheme.green;
      case (0, ContestComplexity.easy):
      case (1, ContestComplexity.easy):
      case (0, ContestComplexity.medium):
      case (1, ContestComplexity.medium):
      case (2, ContestComplexity.medium):
        return AppColorScheme.orange;
      case (0, ContestComplexity.hard):
      case (1, ContestComplexity.hard):
      case (2, ContestComplexity.hard):
      case (3, ContestComplexity.hard):
      case (0, ContestComplexity.veryHard):
      case (1, ContestComplexity.veryHard):
      case (2, ContestComplexity.veryHard):
      case (3, ContestComplexity.veryHard):
      case (4, ContestComplexity.veryHard):
        return AppColorScheme.red;
      default:
        return AppColorScheme.surface;
    }
  }
}
