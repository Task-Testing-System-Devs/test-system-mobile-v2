import 'package:flutter/material.dart';
import 'package:test_system/src/shared/colors/colors.dart';
import 'package:test_system/src/shared/widgets/text_info_widget.dart';

import '../../model/profile.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
    required this.profile,
  }) : super(key: key);

  final Profile profile;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

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
            '${profile.firstName} ${profile.lastName}',
            style: theme.textTheme.displaySmall,
            overflow: TextOverflow.fade,
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (profile.department != null && profile.group != null)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: TextInfoWidget(
                      primary: profile.department!,
                      secondary: profile.group!,
                    ),
                  ),
                TextInfoWidget(
                  primary: 'Почта',
                  secondary: profile.email,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
