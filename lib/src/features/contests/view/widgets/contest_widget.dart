import 'package:flutter/material.dart';
import 'package:test_system/src/shared/assets/app_assets.dart';
import 'package:test_system/src/shared/widgets/complexity_widget.dart';
import 'package:test_system/src/shared/widgets/universal_asset_image.dart';

import '../../../../shared/colors/colors.dart';
import '../../../../shared/enums/programming_language.dart';

class ContestWidget extends StatelessWidget {
  const ContestWidget({
    super.key,
    required this.name,
    required this.endDate,
    required this.complexity,
    required this.languages,
  });

  final String name;
  final DateTime endDate;
  final Complexity complexity;
  final List<ProgrammingLanguage> languages;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: AppColors.card,
        boxShadow: [
          BoxShadow(
            color: Colors.grey[300]!,
            offset: const Offset(0, 1),
            blurRadius: 5,
          )
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        name,
                        style: theme.textTheme.bodyLarge,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Решить до ${endDate.day}.${endDate.month}.${endDate.year}',
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: AppColors.textSecondary,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Сложность',
                        style: theme.textTheme.bodyLarge,
                      ),
                      const SizedBox(height: 4),
                      ComplexityWidget(
                        complexity: complexity,
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Языки',
                        style: theme.textTheme.bodyLarge,
                      ),
                      const SizedBox(height: 4),
                      Row(
                        children: List.generate(
                          3,
                          (index) => index < languages.length
                              ? Padding(
                                  padding: const EdgeInsets.only(right: 8),
                                  child: UniversalAssetImage(
                                    languages.elementAt(index).asset,
                                  ),
                                )
                              : const SizedBox(),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(width: 24),
              Image.asset(AppBanners.assetContest),
            ],
          ),
          // const SizedBox(height: 24),
          // AppElevatedButton(
          //   buttonSize: ButtonSize.medium,
          //   text: 'Решить',
          //   onPressed: () {},
          // )
        ],
      ),
    );
  }
}
