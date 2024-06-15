import 'package:ecommerce/common/widgets/custom%20shapes/containers/circular%20_container.dart';
import 'package:ecommerce/common/widgets/texts/section_Heading.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class TBillingPaymentSection extends StatelessWidget {
  const TBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        TSectionHeading(title: 'Payment Method', buttonTitle: 'Change',onPressed: (){},),
        SizedBox(height: TSizes.spaceBtwItems/2,),

        Row(
          children: [
            TCircularContainer(
              width: 60,
              height: 35,
              backgroundColor: dark ? TColors.light : TColors.white,
              padding: EdgeInsets.all(TSizes.sm),
              child: Image(
                image: AssetImage(TImages.paypal),
                fit: BoxFit.contain,
              ),
            ),

            SizedBox(width: TSizes.spaceBtwItems/2,),

            Text('Paypal',style: Theme.of(context).textTheme.bodyLarge,)
          ],
        )
      ],
    );
  }
}