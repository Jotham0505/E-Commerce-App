import 'package:ecommerce/common/widgets/appbar/app_bar.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class ProductReviewScreen extends StatelessWidget {
  const ProductReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // APP BAR 
      appBar: TAppBar(
        title: Text("Ratings and Reviews"),
        leadingIcon: Icons.arrow_back,
      ),

      // BODY 
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              Text('Getting customers to write positive reviews about your company is very beneficial but can also be challenging'),
              SizedBox(height: TSizes.spaceBtwItems,),

              // Overall Product Details
              Row(
                children: [
                  Text('4.8', style: Theme.of(context).textTheme.displayLarge,),
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text('5', style: Theme.of(context).textTheme.bodyMedium,),
                            Expanded(
                              child: SizedBox(
                                width: TDeviceUtils.getScreenWidth(context) * 0.5,
                                child: LinearProgressIndicator(
                                  value: 0.5,
                                  minHeight: 25,
                                  backgroundColor: TColors.grey,
                                  valueColor: AlwaysStoppedAnimation(TColors.primary,),
                                  borderRadius: BorderRadius.circular(7), 
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),

    );
  }
}