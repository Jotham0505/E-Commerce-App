import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';


class TCircularIcon extends StatelessWidget {
  const TCircularIcon({
    super.key,
    this.dark = true, required this.icon, this.iconsize, required this.onPressed, required this.color, this.width = 25, this.height = 25, this.backgroundColor,
  });

  final bool dark;
  final IconData icon;
  final double? iconsize;
  final VoidCallback onPressed;
  final Color color;
  final double width;
  final double height;
  final Color ? backgroundColor;
  

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: backgroundColor != null ? backgroundColor! : dark ? TColors.black.withOpacity(0.9) : TColors.white.withOpacity(0.9),
      ),
      child: IconButton(icon: Icon(icon),onPressed: onPressed,iconSize: iconsize,color: color),
    );
  }
}