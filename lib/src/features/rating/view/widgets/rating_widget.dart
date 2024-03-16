import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_system/src/features/rating/model/rating.dart';
import 'package:test_system/src/shared/colors/colors.dart';

class RatingWidget extends StatelessWidget {
  RatingWidget({
    required this.position,
    required this.rating,
    super.key,
  }) : color = switch (position) {
          1 => AppColors.gold,
          2 => AppColors.silver,
          3 => AppColors.bronze,
          _ => AppColors.surface,
        };

  final Color color;
  final int position;
  final Rating rating;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.card,
      ),
      height: 52,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8),
                bottomLeft: Radius.circular(8),
              ),
              color: color,
            ),
            height: 52,
            width: 52,
            child: Center(
              child: Text('$position'),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              rating.userShortInfo.fullName,
              overflow: TextOverflow.fade,
            ),
          ),
          const SizedBox(width: 16),
        ],
      ),
    );
  }
}
