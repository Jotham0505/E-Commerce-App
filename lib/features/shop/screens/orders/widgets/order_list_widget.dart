import 'package:ecommerce/common/widgets/custom%20shapes/containers/circular%20_container.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TorderListScreen extends StatelessWidget {
  const TorderListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TCircularContainer(
      padding: EdgeInsets.all(TSizes.md),
      showBorder: true,
      backgroundColor: dark ? TColors.dark : TColors.light,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Icon(Iconsax.ship),
              SizedBox(width: TSizes.spaceBtwItems/2,),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Processing', style: Theme.of(context).textTheme.bodyLarge!. apply(color: TColors.primary, fontWeightDelta: 1,)),
                    Text('07 Nov, 2023', style: Theme.of(context).textTheme.headlineSmall,)
                  ],
                ),
              ),
              IconButton(onPressed: (){}, icon: Icon(Iconsax.arrow_right_34, size: TSizes.iconSm,)),
            ],
          ),
         Row(
            children: [
              Icon(Iconsax.ship),
              SizedBox(width: TSizes.spaceBtwItems/2,),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Processing', style: Theme.of(context).textTheme.bodyLarge!. apply(color: TColors.primary, fontWeightDelta: 1,)),
                    Text('07 Nov, 2023', style: Theme.of(context).textTheme.headlineSmall,)
                  ],
                ),
              ),
              IconButton(onPressed: (){}, icon: Icon(Iconsax.arrow_right_34, size: TSizes.iconSm,)),
            ],
          ),
        ],
      ),
    );
  }
}