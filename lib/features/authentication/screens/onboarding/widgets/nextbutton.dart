import 'package:ecommerce/features/authentication/controllers/onborading_controller.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/device/device_utility.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class onBoardingNetButton extends StatelessWidget {
  const onBoardingNetButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(onBoardingController());
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: 40,
      right: 15,
      child: ElevatedButton(
        onPressed: () => controller.nextPage(),
        child: Icon(
          Icons.keyboard_arrow_right_sharp,
          size: 20,
        ),
        style: ElevatedButton.styleFrom(shape: CircleBorder(), backgroundColor: dark? TColors.primary: Colors.black),
      ),
    );
  }
}

