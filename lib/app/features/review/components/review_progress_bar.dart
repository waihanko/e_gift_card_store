import 'package:flutter/material.dart';

import '../../../constants/resources/app_dimens.dart';
import '../../../widgets/progress_bar_widget.dart';
import '../../../widgets/text_view_widget.dart';

class ReviewProgressBar extends StatelessWidget {
  final String? number;
  final double currentRateProgress;

  const ReviewProgressBar({
    this.number,
    this.currentRateProgress = 0,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 15,
          child: TextViewWidget(
            number??"",
            textSize: AppDimens.textMedium,
            fontWeight: FontWeight.w700,
          ),
        ),
        Expanded(
          child: ProgressBarWidget(
            max: 1,
            current: currentRateProgress,
          ),
        ),
      ],
    );
  }
}
