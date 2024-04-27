import 'package:ecommerce/common/widgets/appbar/app_bar.dart';
import 'package:ecommerce/common/widgets/custom%20shapes/containers/circular%20_container.dart';
import 'package:ecommerce/common/widgets/custom%20shapes/containers/searchbar_container.dart';
import 'package:ecommerce/common/widgets/custom%20shapes/curved%20shapes/curved_edges.dart';
import 'package:ecommerce/common/widgets/custom%20shapes/curved%20shapes/curved_edges_widget.dart';
import 'package:ecommerce/common/widgets/horizontal%20image%20widget/Horizontal_Image.dart';
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
                  horizontalListViewwidget(), // horizontal List view circular items aalso the heading which consists of the the appbar is in this widget
                  
                ],
              ),
            ),

            // Body 
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Container(
                decoration: BoxDecoration(  

                ),
                child: ClipRRect(child: Image(image: AssetImage(TImages.promoBanner1),fit: BoxFit.cover),borderRadius: BorderRadius.circular(TSizes.md),),
              ),
            )

          ],
        ),
      ),
    );
  }
}









