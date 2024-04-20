import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/device/device_utility.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class onBoardingNetButton extends StatelessWidget {
  const onBoardingNetButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      right: TSizes.defaultSpace,
      child: ElevatedButton(
        onPressed: (){},
        child: Icon(
          Icons.keyboard_arrow_right_sharp
        ),
        style: ElevatedButton.styleFrom(shape: CircleBorder(), backgroundColor: dark? TColors.primary: Colors.black),
      ),
    );
  }
}

