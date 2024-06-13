import 'package:ecommerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class TRatingBarIndicator extends StatelessWidget {
  const TRatingBarIndicator({
    super.key, required this.rating, this.itemSize , this.unratedColor = TColors.grey, this.primaryColor = TColors.primary,
  });

  final double rating;
  final double ? itemSize;
  final Color  ? unratedColor;
  final Color ? primaryColor;

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      itemBuilder: (_, __) => Icon(
        Icons.star,
        color: primaryColor,
      ),
      rating: rating,
      itemSize: 20,
      unratedColor: unratedColor,
    );
  }
}
