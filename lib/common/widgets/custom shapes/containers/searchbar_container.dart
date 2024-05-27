import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/device/device_utility.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';


class TSearchContainer extends StatelessWidget {
  const TSearchContainer({
    super.key, required this.text, this.icon, this.showBackground = true, this.showBorder = true, required this.searchbarSize,
  });

  final String text;
  final IconData ? icon;
  final bool showBackground, showBorder;
  final double searchbarSize;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: searchbarSize),
      child: Container(
        width: TDeviceUtils.getScreenWidth(context),
    
        padding: EdgeInsets.all(TSizes.md),
        decoration: BoxDecoration(
          color: showBackground ? dark?  TColors.dark : TColors.light : Colors.transparent,
          borderRadius: BorderRadius.circular(TSizes.cardRadiusLg),
          border: showBorder ? Border.all(color: TColors.grey) : null,
        ),
        child: Row(
          children: [
            Icon(Iconsax.search_normal, color: Colors.grey,),
            SizedBox(width: TSizes.spaceBtwItems,),
            Text(
              text,
              style: Theme.of(context).textTheme.bodySmall,
            )
          ],
        ),
      ),
    );
  }
}