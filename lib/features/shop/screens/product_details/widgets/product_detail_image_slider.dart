import 'package:ecommerce/common/widgets/appbar/app_bar.dart';
import 'package:ecommerce/common/widgets/carousel%20banner/rounded_image_banner.dart';
import 'package:ecommerce/common/widgets/custom%20shapes/curved%20shapes/curved_edges_widget.dart';
import 'package:ecommerce/common/widgets/icons/t_circullar_icons.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TProductDetailSlider extends StatelessWidget {
  const TProductDetailSlider({
    super.key,

  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TCurvedEdgeswidget(
      child: Container(
        color: dark ? TColors.darkerGrey : TColors.light,
        child: Stack(
          children: [
            // main large image
            SizedBox(
              height: 400,
              child: Padding(
                padding:
                    const EdgeInsets.all(TSizes.productImageRadius*2),
                child: Center(
                  child: Image(
                    image: AssetImage(TImages.productImage1),
                  ),
                ),
              ),
            ),

            // Image Slider
            Positioned(
              right: 0,
              bottom: 30,
              left: 20,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: AlwaysScrollableScrollPhysics(),
                    itemBuilder: (_, index) => TRoundedImage(
                          width: 70,
                          border: Border.all(color: TColors.primary),
                          backgroundColor:
                              dark ? TColors.dark : TColors.white,
                          padding: EdgeInsets.all(TSizes.sm),
                          ImageUrl: TImages.productImage3,
                          applyImageRadius: true,
                          borderRadius: 20,
                        ),
                    separatorBuilder: (_, __) => const SizedBox(
                          width: TSizes.spaceBtwItems,
                        ),
                    itemCount: 6),
              ),
            ),
            

          // app bar icons

          TAppBar(
            showbackArrow: true,
            actions: [
              TCircularIcon(icon: Iconsax.heart5, onPressed: (){}, color: Colors.red,iconsize: 11,)
            ],
          )
          ],
        ),
      ),
    );
  }
}