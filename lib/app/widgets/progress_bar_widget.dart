import 'package:flutter/material.dart';

import '../constants/resources/app_colors.dart';

class ProgressBarWidget extends StatelessWidget {
  final double max;
  final double current;
  final Color color;

  const ProgressBarWidget({
    Key? key,
    required this.max,
    required this.current,
    this.color = AppColors.kRed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, boxConstraints) {
        var x = boxConstraints.maxWidth;
        var percent = (current / max) * x;
        return Stack(
          children: [
            Container(
              width: x,
              height: 7,
              decoration: BoxDecoration(
                color: AppColors.kSecondary,
                borderRadius: BorderRadius.circular(35),
              ),
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              width: percent,
              height: 7,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(35),
              ),
            ),
          ],
        );
      },
    );
  }
}
