import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../constants/resources/app_colors.dart';

class RatingBarWidget extends StatelessWidget {
  final double rate;
  final double iconSize;
  const RatingBarWidget({Key? key, required this.rate, required this.iconSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      itemSize: iconSize,
      initialRating: rate,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemPadding: EdgeInsets.zero,
      itemBuilder: (context, _) => const Icon(
        Icons.star,
        color: AppColors.kRed,
      ),
      onRatingUpdate: (rating) {
        print(rating);
      },
    );
  }
}
