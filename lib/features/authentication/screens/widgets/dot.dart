import 'package:ecommerce/features/authentication/controllers/onborading_controller.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/device/device_utility.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class onBoardingDotNavigator extends StatelessWidget {
  const onBoardingDotNavigator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(onBoardingController());
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
      left: 10,
      bottom: TDeviceUtils.getBottomNavigationBarHeight() ,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(
          activeDotColor: dark? TColors.light: TColors.dark,
          dotHeight: 6
        ),
      ),
    );
  }
}
