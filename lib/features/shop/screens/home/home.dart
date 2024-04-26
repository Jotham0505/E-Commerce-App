import 'package:ecommerce/common/widgets/appbar/app_bar.dart';
import 'package:ecommerce/common/widgets/custom%20shapes/containers/circular%20_container.dart';
import 'package:ecommerce/common/widgets/custom%20shapes/containers/searchbar_container.dart';
import 'package:ecommerce/common/widgets/custom%20shapes/curved%20shapes/curved_edges.dart';
import 'package:ecommerce/common/widgets/custom%20shapes/curved%20shapes/curved_edges_widget.dart';
import 'package:ecommerce/common/widgets/products_cart/cart_menu_icon.dart';
import 'package:ecommerce/common/widgets/texts/section_Heading.dart';
import 'package:ecommerce/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ecommerce/utils/device/device_utility.dart';

import '../../../../common/widgets/custom shapes/containers/primary_header_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  ThemeAppBar(), // APPBAR 

                  SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  // SEARCH BAR 
                  TSearchContainer(text: 'Search in Store',),
                  SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),


                  // CATEGORIES

                  Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Column(
                      children: [
                        TSectionHeading(title: 'Popular Categories',showActionButton: true,),
                        SizedBox(
                          height: 1,
                        ),

                        // Scroallbale items 
                        
                        SizedBox(
                          height: 60,
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemBuilder: (_, index){
                              return Column(
                                children: [
                                  Container(
                                    height: 56,
                                    width: 56,
                                    padding: EdgeInsets.all(TSizes.md),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(100)
                                    ),
                                    child: Image(
                                      image: AssetImage(TImages.shoeIcon),
                                    ),
                                  ),
                                  
                                ],
                              );
                            },
                            itemCount: 8,
                            scrollDirection: Axis.horizontal,
                          ),
                        ),

                      ],
                    ),
                  ),

                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}







