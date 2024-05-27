import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TCartCounterIcon extends StatelessWidget {
  const TCartCounterIcon({
    super.key, required this.onPressed, this.IconColor = Colors.white,
  });

  final VoidCallback onPressed;
  final Color ? IconColor;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Stack(
      children: [
        IconButton(onPressed: onPressed, icon: Icon(Iconsax.shopping_bag, color: dark ? Colors.white : Colors.black,)),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: dark ? Colors.white: Colors.black.withOpacity(0.5),
              borderRadius: BorderRadius.circular(100)
            ),
            child: Center(
              child: Text(
                '2',
                style: TextStyle(
                  color: IconColor,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}