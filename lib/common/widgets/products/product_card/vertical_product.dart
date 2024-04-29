import 'package:ecommerce/common/styles/shadows.dart';
import 'package:ecommerce/common/widgets/carousel%20banner/rounded_image_banner.dart';
import 'package:ecommerce/common/widgets/custom%20shapes/containers/circular%20_container.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TProductVertical extends StatelessWidget {
  const TProductVertical({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final dark = THelperFunctions.isDarkMode(context);;

    return Container(
      width: 180,
      padding: EdgeInsets.all(1),
      decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark
              ? TColors.darkerGrey
              : TColors.white
      ),
      child: Column(
        children: [
          // Thumbnail, wishlist button, discount icon
          TCircularContainer(
            radius: TSizes.cardRadiusLg,
            backgroundColor: dark
                ? TColors.dark
                : TColors.light,
            height: 180,
            padding: EdgeInsets.all(TSizes.sm),
            child: Stack(
              children: [
                TRoundedImage(
                  ImageUrl: TImages.productImage1,
                  applyImageRadius: true,
                ),

                TCircularContainer(
                  height: 25,
                  width: 40,
                  radius: TSizes.sm,
                  padding: EdgeInsets.symmetric(horizontal: TSizes.sm, vertical: TSizes.xs),
                  backgroundColor: TColors.secondary.withOpacity(0.8),
                  child: Text(
                    '25%',
                    style: Theme.of(context).textTheme.labelLarge!.apply(color: Colors.black),
                  ),
                ),

                TCircularIcon(dark: dark)

              ],
            ),
          )
        ],
      ),
    );
  }
}

class TCircularIcon extends StatelessWidget {
  const TCircularIcon({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: dark ? TColors.black.withOpacity(0.9) : TColors.white.withOpacity(0.9),
      ),
      child: IconButton(icon: Icon(Iconsax.heart5),onPressed: (){},),
    );
  }
}