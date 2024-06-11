import 'package:ecommerce/common/styles/shadows.dart';
import 'package:ecommerce/common/widgets/carousel%20banner/rounded_image_banner.dart';
import 'package:ecommerce/common/widgets/custom%20shapes/containers/circular%20_container.dart';
import 'package:ecommerce/common/widgets/icons/t_circullar_icons.dart';
import 'package:ecommerce/common/widgets/texts/product_title.dart';
import 'package:ecommerce/features/shop/screens/product_details/product_details.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TProductVertical extends StatelessWidget {
  const TProductVertical({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final dark = THelperFunctions.isDarkMode(context);;

    return GestureDetector(
      onTap: () => Get.to(() => ProductDetailScreen()),
      child: Container(
        width: 180,
        padding: EdgeInsets.all(1),
        decoration: BoxDecoration(
            boxShadow: [TShadowStyle.verticalProductShadow],
            borderRadius: BorderRadius.circular(TSizes.productImageRadius),
            color: dark
                ? TColors.darkerGrey
                : TColors.white
        ),
        child: Column(
          children: [
            // Thumbnail, wishlist button, discount icon
            TCircularContainer(
              
              radius: TSizes.cardRadiusLg,
              backgroundColor: dark
                  ? TColors.dark
                  : TColors.light,
              height: 260,
              padding: EdgeInsets.all(TSizes.sm),
              child: Stack(
                children: [
                  TRoundedImage(
                    borderRadius: TSizes.sm,
                    ImageUrl: TImages.productImage1,
                    applyImageRadius: true,
                  ),

    
                  TCircularContainer(
                    height: 25,
                    width: 40,
                    radius: TSizes.sm,
                    padding: EdgeInsets.symmetric(horizontal: TSizes.sm, vertical: TSizes.xs),
                    backgroundColor: TColors.secondary.withOpacity(0.8),
                    child: Text(
                      '25%',
                      style: Theme.of(context).textTheme.labelLarge!.apply(color: Colors.black),
                    ),
                  ),
                  
                  // thumnail, like button and discount tag
                  Positioned(child: TCircularIcon(dark: dark, icon: Iconsax.heart5, onPressed: () {  },iconsize: 11, color: Colors.red,), top: 0, right: 0,),
                  
                  
                  // details
                  Positioned(
                    bottom: 10,
                    child: Padding(
                      padding: EdgeInsets.all(TSizes.sm),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TproductTitleText(
                            text: 'Nike Air Shoes',
                            maxLines: 2,
                            smallSize: true,
                          ),
                          SizedBox(
                            height: TSizes.spaceBtwItems / 2,
                          ),
                          Row(
                            children: [
                              Text(
                                'Nike',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: Theme.of(context).textTheme.labelMedium,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Iconsax.verify5,
                                color: TColors.primary,
                                size: TSizes.iconXs,
                              )
                            ],
                          ),
                  
                          SizedBox(
                            height: 10
                          ),
                  
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '\$35.5',
                                style: Theme.of(context).textTheme.headlineMedium,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                              SizedBox(
                                width: 45,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: dark ? TColors.white : TColors.dark,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(TSizes.cardRadiusMd),
                                    bottomRight: Radius.circular(TSizes.productImageRadius)
                                  ),
                                ),
                                child: SizedBox(
                                  width: TSizes.iconLg * 1.2,
                                  height: TSizes.iconLg * 1.2,
                                  child: Center(
                                    child: IconButton( icon : Icon(Iconsax.add), color: dark? TColors.dark : TColors.white,onPressed: (){},),
                                  ),
                                ),
                              )
                            ],
                          ),   
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}



