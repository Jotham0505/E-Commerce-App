import 'package:ecommerce/common/widgets/appbar/app_bar.dart';
import 'package:ecommerce/features/shop/screens/product_reviews/widgets/User_review_cards.dart';
import 'package:ecommerce/features/shop/screens/product_reviews/widgets/progress_indicator_and_rating.dart';
import 'package:ecommerce/features/shop/screens/product_reviews/widgets/rating_progress.dart';
import 'package:ecommerce/features/shop/screens/product_reviews/widgets/rating_star.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class ProductReviewScreen extends StatelessWidget {
  const ProductReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // APP BAR
      appBar: TAppBar(
        title: Text("Ratings and Reviews"),
        showbackArrow: true,
      ),

      // BODY
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  'Getting customers to write positive reviews about your company is very beneficial but can also be challenging'),
              SizedBox(
                height: TSizes.spaceBtwItems,
              ),

              // Overall Product Details
              TOverallProgressRating(), // This is using a widget inside of a widget
              // This widget is under the widgets in the product details folder


              TRatingBarIndicator(rating: 3.5,),

              Text('12,611', style: Theme.of(context).textTheme.bodySmall,),
              SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              TUserReviewCard(),
              TUserReviewCard(),
              TUserReviewCard(),
              TUserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}

