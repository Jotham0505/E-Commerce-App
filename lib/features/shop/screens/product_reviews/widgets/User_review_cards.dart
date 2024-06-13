import 'package:ecommerce/common/widgets/custom%20shapes/containers/circular%20_container.dart';
import 'package:ecommerce/features/shop/screens/product_reviews/widgets/rating_star.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class TUserReviewCard extends StatelessWidget {
  const TUserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children : [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(TImages.user),
                ),
                SizedBox(
                  width: TSizes.spaceBtwItems,
                ),
                Text(
                  'John Doe',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
          ],
        ),
        SizedBox(
          height: 10,
        ),

        // Review

        Row(
          children: [
            TRatingBarIndicator(rating: 4),
            SizedBox(
             width: TSizes.spaceBtwItems,
            ),
            Text('01 Nov, 2023', style: Theme.of(context).textTheme.bodyMedium,),
          ],
        ),
        SizedBox(
          height: TSizes.spaceBtwSections ,
        ),
        ReadMoreText(
          'The staff was great. The receptionists were very helpful and answered all our questions. The room was clean and bright, and the room service was always on time. Will be coming back! Thank you so much.',
          trimLines: 1,
          trimMode: TrimMode.Line,
          trimCollapsedText: 'show more',
          trimExpandedText: 'show less',
          lessStyle: TextStyle(fontWeight: FontWeight.w700,fontSize: 12,color: TColors.primary),
          moreStyle: TextStyle(fontWeight: FontWeight.w700,fontSize: 12,color: TColors.primary),
        ),

        SizedBox(
          height: TSizes.spaceBtwItems,
        ),

        TCircularContainer(
          radius: 20,
          height: 200,
          width: double.infinity,
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Padding(
            padding: EdgeInsets.all(TSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("T's Store", style: Theme.of(context).textTheme.titleMedium,),
                    Text("02 Nov, 2023", style: Theme.of(context).textTheme.bodyMedium,),
                  ],
                ),
                SizedBox(height: TSizes.spaceBtwItems,),
                ReadMoreText(
          'The staff was great. The receptionists were very helpful and answered all our questions. The room was clean and bright, and the room service was always on time. Will be coming back! Thank you so much.',
          trimLines: 1,
          trimMode: TrimMode.Line,
          trimCollapsedText: 'show more',
          trimExpandedText: 'show less',
          lessStyle: TextStyle(fontWeight: FontWeight.w700,fontSize: 12,color: TColors.primary),
          moreStyle: TextStyle(fontWeight: FontWeight.w700,fontSize: 12,color: TColors.primary),
        ),
              ],
            ),
          ),
        ),
        SizedBox(height: TSizes.spaceBtwSections,)
      ],
    );
  }
}