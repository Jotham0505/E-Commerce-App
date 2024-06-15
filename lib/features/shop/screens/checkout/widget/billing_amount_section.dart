import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TBillingAmountSection extends StatelessWidget {
  const TBillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Sub total
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Subtotal',style: Theme.of(context).textTheme.bodyMedium,),
            Text("\$256.0",style: Theme.of(context).textTheme.bodyMedium,),
          ],
        ),
        SizedBox(width: TSizes.spaceBtwItems/2,),

        // shipping fee 
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Shipping Fee',style: Theme.of(context).textTheme.bodyMedium,),
            Text("\$6.0",style: Theme.of(context).textTheme.labelLarge,),
          ],
        ),
        SizedBox(width: TSizes.spaceBtwItems/2,),

        // Tax Fee
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Tax Fee',style: Theme.of(context).textTheme.bodyMedium,),
            Text("\$2.0",style: Theme.of(context).textTheme.labelLarge,),
          ],
        ),
        SizedBox(width: TSizes.spaceBtwItems/2,),

        // Order Total
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Order Total',style: Theme.of(context).textTheme.bodyMedium,),
            Text("\$264.0",style: Theme.of(context).textTheme.titleMedium,),
          ],
        ),
        SizedBox(width: TSizes.spaceBtwItems/2,),

      ],
    );
  }
}