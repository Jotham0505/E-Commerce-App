import 'package:ecommerce/common/widgets/icons/t_circullar_icons.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TBottomAddToCart extends StatelessWidget {
  const TBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: TSizes.defaultSpace, vertical: TSizes.defaultSpace/2),
      decoration: BoxDecoration(
        color: dark ? TColors.darkerGrey : TColors.light,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(TSizes.cardRadiusLg),
          topRight: Radius.circular(TSizes.cardRadiusLg)
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              TCircularIcon(
                width: 40,
                height: 40,
                icon: Iconsax.minus,
                onPressed: (){},
                color: TColors.white,
              ),
              SizedBox(width: TSizes.spaceBtwItems,),
              Text('2', style: Theme.of(context).textTheme.titleSmall,),
              SizedBox(width: TSizes.spaceBtwItems,),
              TCircularIcon(
                width: 40,
                height: 40,
                icon: Iconsax.add,
                onPressed: (){},
                color: TColors.white,
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text("Add To Cart"),
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(TSizes.md),
              backgroundColor: TColors.black,
              side: BorderSide(color: TColors.black)
            ),
          ),
        ],
      ),
    );
  }
}