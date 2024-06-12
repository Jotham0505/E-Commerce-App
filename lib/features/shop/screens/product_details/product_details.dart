import 'package:ecommerce/common/widgets/appbar/app_bar.dart';
import 'package:ecommerce/common/widgets/carousel%20banner/rounded_image_banner.dart';
import 'package:ecommerce/common/widgets/custom%20shapes/curved%20shapes/curved_edges_widget.dart';
import 'package:ecommerce/common/widgets/icons/t_circullar_icons.dart';
import 'package:ecommerce/common/widgets/texts/section_Heading.dart';
import 'package:ecommerce/features/shop/screens/product_details/widgets/bottom_add_to_cart.dart';
import 'package:ecommerce/features/shop/screens/product_details/widgets/product_attributr.dart';
import 'package:ecommerce/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:ecommerce/features/shop/screens/product_details/widgets/product_meta_data_widget.dart';
import 'package:ecommerce/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:ecommerce/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // product Image slider
            TProductDetailSlider(), // Under the widget floder in the product details folder in the product screen

            // Product details

            Padding(
              padding: EdgeInsets.only(
                  right: TSizes.defaultSpace,
                  left: TSizes.defaultSpace,
                  bottom: TSizes.defaultSpace),
              child: Column(
                children: [
                  // Rating and share button
                  TRatingandShare(),

                  // Price, title, stock and brand
                  TProductMetaData(),

                  // attributes,
                  TPRoductAttribute(),

                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  //checkout button,
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Checkout"),
                    ),
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),


                  // description
                  TSectionHeading(title: "Description",showActionButton: false,), 
                  SizedBox(height: TSizes.spaceBtwItems,),
                  ReadMoreText(
                    'This is the Nike Air Shoes, which is made of the finest quality and is mainly used running.Some othe features that help this product stand out is its unique water proof.',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show More',
                    trimExpandedText: 'Show Less',
                    moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                  // reviewers
                  Divider(),
                  SizedBox(height: TSizes.spaceBtwItems,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TSectionHeading(title: 'Reviews(199)', showActionButton: false,onPressed: (){}),
                      IconButton(icon: Icon(Iconsax.arrow_right), onPressed: () => Get.to(()=> ProductReviewScreen()),)
                    ],
                  ),
                  SizedBox(height: TSizes.spaceBtwSections,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
