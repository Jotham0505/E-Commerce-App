import 'package:ecommerce/common/widgets/custom%20shapes/containers/circular%20_container.dart';
import 'package:ecommerce/common/widgets/texts/product_title.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Price and sale price

        Row(
          children: [
            // sale tag
            TCircularContainer(
              height: 25,
              width: 40,
              radius: TSizes.sm,
              padding: EdgeInsets.symmetric(
                  horizontal: TSizes.sm, vertical: TSizes.xs),
              backgroundColor: TColors.secondary.withOpacity(0.8),
              child: Text(
                '25%',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: Colors.black),
              ),
            ),

            SizedBox(
              width: TSizes.spaceBtwItems,
            ),      
            // price
            Text(
              '\$250',
              style: Theme.of(context).textTheme.headlineMedium
            ),
            SizedBox(
              width: TSizes.spaceBtwItems,
            ),
          ],
        ),

        // title
        TproductTitleText(
          text: "Green Nike Air shoes",
        )

        //stock status

       
        // brand



      ],
    );
  }
}