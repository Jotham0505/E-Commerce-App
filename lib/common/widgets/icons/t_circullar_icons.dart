import 'package:ecommerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';


class TCircularIcon extends StatelessWidget {
  const TCircularIcon({
    super.key,
    this.dark = true, required this.icon, this.iconsize, required this.onPressed, required this.color,
  });

  final bool dark;
  final IconData icon;
  final double? iconsize;
  final VoidCallback onPressed;
  final Color color;
  

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      width: 25,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: dark ? TColors.black.withOpacity(0.9) : TColors.white.withOpacity(0.9),
      ),
      child: IconButton(icon: Icon(icon),onPressed: onPressed,iconSize: iconsize,color: color),
    );
  }
}