import 'package:ecommerce/common/widgets/custom%20shapes/containers/circular%20_container.dart';
import 'package:ecommerce/common/widgets/texts/product_title.dart';
import 'package:ecommerce/common/widgets/texts/section_Heading.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class TPRoductAttribute extends StatelessWidget {
  const TPRoductAttribute({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        // Selected Pricing

        TCircularContainer(
          padding: EdgeInsets.all(TSizes.md),
          radius: 20,
          height: 110,
          width: 350,
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Column(
            children: [
              // Title, price and stock status
              Row(
                children: [
                  TSectionHeading(title: 'Variation',showActionButton: false,),
                  SizedBox(width: TSizes.spaceBtwItems,),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                           TproductTitleText(
                            text: 'Price: ',
                            smallSize: true,
                          ),
                          // actual price
                          Text(
                            '\$25',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          SizedBox(
                            width: TSizes.spaceBtwItems,
                          ),
                          Text('\$20',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w600))
                        ],
                      ),
                      // stock
                      Row(
                        children: [
                          TproductTitleText(text: 'Stock: ',smallSize: true,),
                          Text('In Stock',style: Theme.of(context).textTheme.titleMedium,)
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              // Variation description 
              TproductTitleText(
                text: 'This is the description of the product and it can go upto maximum of 4 lines',
                maxLines: 4,
                smallSize: true,
              )
            ],
          ),
        ),

        SizedBox(
          height: TSizes.spaceBtwItems,
        ),

        // ATtributes
        Column(
          children: [
            TSectionHeading(title: "Colors", showActionButton: false,),
            SizedBox(
              height: TSizes.spaceBtwItems/2,
            ),
            ChoiceChip(label: Text('Green'), selected: true)
          ],
        )
      ],
    );
  }
}
