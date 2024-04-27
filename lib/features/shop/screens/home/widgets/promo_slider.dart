import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/common/widgets/carousel%20banner/rounded_image_banner.dart';
import 'package:ecommerce/common/widgets/custom%20shapes/containers/circular%20_container.dart';
import 'package:ecommerce/features/shop/controllers/home_controller.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ecommerce/features/shop/controllers/home_controller.dart';

class TPromoSlider extends StatelessWidget {
  const TPromoSlider({
    super.key, required this.Banners,
  });

  final List<Widget> Banners;
  

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Padding(
      padding: const EdgeInsets.all(TSizes.defaultSpace),
      child: Column(
        children: [
          CarouselSlider(
            items: Banners,
            options: CarouselOptions(
              viewportFraction: 1,
              onPageChanged: (index, _) => controller.updatePageIndicator(index)
            ),
          ),
          SizedBox(
            height: TSizes.spaceBtwItems,
          ),
          Obx(
            () => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for(int i = 0; i < 3; i++)
                TCircularContainer(height: 4, width: 20,backgroundColor: controller.carouselCurrentIndex.value == i ? TColors.primary : TColors.grey,margin: EdgeInsets.only(right: 10),),
              ],
            ),
          )
        ],
      ),
    );
  }
}