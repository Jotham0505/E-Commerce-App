import 'package:ecommerce/common/widgets/icons/t_circullar_icons.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TProductQuantityWithAddandRemove extends StatelessWidget {
  const TProductQuantityWithAddandRemove({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        TCircularIcon(
      icon: Iconsax.minus,
      onPressed: (){},
      color: dark ? TColors.white : TColors.black,
      width: 32,
      height: 32,
      backgroundColor: dark ? TColors.darkerGrey : TColors.light,
      iconsize: 15,
    ),
    SizedBox(
      width: TSizes.spaceBtwItems,
    ),
    Text('2',style: Theme.of(context).textTheme.titleSmall,),
    SizedBox(
      width: TSizes.spaceBtwItems,
    ),
    TCircularIcon(
      icon: Iconsax.add,
      onPressed: (){},
      color: dark ? TColors.white : TColors.black,
      width: 32,
      height: 32,
      backgroundColor:TColors.primary,
      iconsize: 15,
    ),
      ],
    );
  }
}
