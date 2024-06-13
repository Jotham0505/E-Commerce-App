import 'package:ecommerce/common/widgets/custom%20shapes/containers/circular%20_container.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TSingleAddress extends StatelessWidget {
  const TSingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TCircularContainer(
            padding: EdgeInsets.all(TSizes.md),
            width: double.infinity,
            showBorder: true,
            backgroundColor: selectedAddress ? TColors.primary.withOpacity(0.5) : Colors.transparent ,
            borderColor: selectedAddress ? Colors.transparent : dark ? TColors.darkerGrey : TColors.grey,
            margin: EdgeInsets.only(bottom: TSizes.spaceBtwItems),
            child: Stack(
              children: [
                Positioned(
                  right: 5,
                  top: 0,
                  child: Icon(
                    selectedAddress ? Iconsax.tick_circle5 : null,
                    color: selectedAddress ? dark ? TColors.light : TColors.dark : null
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'John Doe',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    SizedBox(
                      height: TSizes.sm/2,
                    ),
                    Text(
                      '+123 893 7890',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: TSizes.sm/2,
                    ),
                    Text(
                      '82356 Timmy Coves, South end Street, 16232, South Africa',
                     softWrap: true,
                    ),
                    SizedBox(
                      height: TSizes.sm/2,
                    )
                  ],
                )
              ],
            ),
          );
  }
}

