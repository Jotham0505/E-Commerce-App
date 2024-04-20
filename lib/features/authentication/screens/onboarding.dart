
import 'package:ecommerce/features/authentication/controllers/onborading_controller.dart';
import 'package:ecommerce/features/authentication/screens/widgets/nextbutton.dart';
import 'package:ecommerce/features/authentication/screens/widgets/skip.dart';
import 'package:ecommerce/features/authentication/screens/widgets/onboarding_page.dart';
import 'package:ecommerce/features/authentication/screens/widgets/dot.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(onBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          // Horizontal Scrollable pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            
            children: [
              OnBoardingPage(
                  image: TImages.onBoardingImage1,
                  title: TTexts.onBoardingTitle1,
                  subTiile: TTexts.onBoardingSubTitle1),
              OnBoardingPage(
                  image: TImages.onBoardingImage2,
                  title: TTexts.onBoardingTitle2,
                  subTiile: TTexts.onBoardingSubTitle2),
              OnBoardingPage(
                  image: TImages.onBoardingImage3,
                  title: TTexts.onBoardingTitle3,
                  subTiile: TTexts.onBoardingSubTitle3),
            ],
          ),
          // Skip Button
          onBoardingSkip(),
          // Dot navigation smoothhpageindicator
          onBoardingDotNavigator(),
          // Circular button
          onBoardingNetButton()
        ],
      ),
    );
  }
}


