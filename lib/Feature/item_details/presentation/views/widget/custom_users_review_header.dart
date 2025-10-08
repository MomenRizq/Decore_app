import 'package:decore_app/core/utils/app_theme.dart';
import 'package:flutter/material.dart';

class CustomUserReviewsHeader extends StatelessWidget {
  final double totalStars;
  final double filledStars;
  final Color filledColor;
  final Color emptyColor;
  final double starSize;

  const CustomUserReviewsHeader({
    super.key,
    this.totalStars = 5,
    this.filledStars = 4,
    this.filledColor = AppTheme.primaryColor,
    this.emptyColor = AppTheme.primaryColor,
    this.starSize = 20,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Users reviews',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.black54,
            fontSize: 16,
          ),
        ),
        Row(
          children: List.generate(totalStars.toInt(), (index) {
            return Icon(
              index < filledStars ? Icons.star : Icons.star_border,
              color: filledColor,
              size: starSize,
            );
          }),
        ),
      ],
    );
  }
}
