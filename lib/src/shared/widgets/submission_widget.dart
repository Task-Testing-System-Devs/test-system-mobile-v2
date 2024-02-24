import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_system/src/shared/widgets/text_info_widget.dart';
import 'package:test_system/src/shared/widgets/universal_asset_image.dart';

import '../../features/submissions/model/submission.dart';
import '../colors/color_scheme.dart';

class SubmissionWidget extends StatefulWidget {
  final Submission submission;

  const SubmissionWidget({
    Key? key,
    required this.submission,
  }) : super(key: key);

  @override
  State<SubmissionWidget> createState() => _SubmissionWidgetState();
}

class _SubmissionWidgetState extends State<SubmissionWidget> {
  bool isCodeShown = false;
  var currentIcon = const Icon(Icons.keyboard_arrow_down);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: AppColorScheme.card,
          boxShadow: [
            BoxShadow(
              color: Colors.grey[300]!,
              offset: const Offset(0, 1),
              blurRadius: 5,
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'ID: ${widget.submission.id}',
                        style: theme.textTheme.headlineMedium,
                      ),
                      const SizedBox(height: 8),
                      TextInfoWidget(
                        primary: 'Время исполнения',
                        secondary: '${widget.submission.usedTime} c',
                      ),
                      const SizedBox(height: 8),
                      TextInfoWidget(
                        primary: 'Память',
                        secondary: '${widget.submission.usedMemory} МБ',
                      ),
                      const SizedBox(height: 8),
                      TextInfoWidget(
                        primary: 'Статус',
                        secondary: widget.submission.status,
                      ),
                      if (widget.submission.errorTest != null)
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: TextInfoWidget(
                            primary: 'Ошибка на тесте',
                            secondary: '${widget.submission.errorTest}',
                          ),
                        ),
                    ],
                  ),
                  UniversalAssetImage(
                    widget.submission.language.asset,
                    height: 36,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Исходный код',
                    style: theme.textTheme.bodyLarge,
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        isCodeShown = !isCodeShown;
                        if (isCodeShown) {
                          currentIcon = const Icon(Icons.keyboard_arrow_up);
                        } else {
                          currentIcon = const Icon(Icons.keyboard_arrow_down);
                        }
                      });
                    },
                    icon: currentIcon,
                  ),
                ],
              ),
              Visibility(
                visible: isCodeShown,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Clipboard.setData(
                          ClipboardData(text: widget.submission.code),
                        );
                      },
                      child: Text(
                        'Копировать',
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: AppColorScheme.primary,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(widget.submission.code),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
