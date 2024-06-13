import 'package:ecommerce/features/shop/screens/product_reviews/widgets/progress_indicator_and_rating.dart';
import 'package:flutter/material.dart';

class TOverallProgressRating extends StatelessWidget {
  const TOverallProgressRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 3,child: Text('4.8', style: Theme.of(context).textTheme.displayLarge,)),
        Expanded(
          flex: 7,
          child: Column(
            children: [
              TRatingProgressIndicator(text: '5', value: 1.0,),
              TRatingProgressIndicator(text: '4', value: 0.9,),
              TRatingProgressIndicator(text: '3', value: 0.7,),
              TRatingProgressIndicator(text: '2', value: 0.5,),
              TRatingProgressIndicator(text: '1', value: 0.3,),
            ],
          ),
        )
      ],
    );
  }
}
