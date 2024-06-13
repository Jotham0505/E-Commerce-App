import 'package:ecommerce/common/widgets/carousel%20banner/rounded_image_banner.dart';
import 'package:ecommerce/common/widgets/texts/product_title.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/image_strings.dart';

class TCartItem extends StatelessWidget {
  const TCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //Image
        TRoundedImage(
          ImageUrl: TImages.productImage1,
          width: 60,
          height: 60,
          padding: EdgeInsets.all(TSizes.sm),
          backgroundColor: THelperFunctions.isDarkMode(context) ? TColors.darkerGrey : TColors.grey,
        ),
        SizedBox(
          width: TSizes.spaceBtwItems,
        ),

        // Title,PRice and Size
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row( 
                children: [
                  Text(
                    'Nike',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Iconsax.verify5,
                    color: TColors.primary,
                    size: TSizes.iconXs,
                  )
                ],
              ),
              Flexible(
                child: TproductTitleText(
                  text: "Black Sports Shoes",
                  maxLines: 1,
                  smallSize: true,
                ),
              ),
        
              // Attributes
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: 'Color ',style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(text: 'Green ',style: Theme.of(context).textTheme.bodyLarge),
                    TextSpan(text: 'Size  ',style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(text: 'UK 8 ',style: Theme.of(context).textTheme.bodyLarge),
                  ]
                )
              )
            ],
          ),
        )
      ],
    );
  }
}