import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';


class TRoundedImage extends StatelessWidget {
  const TRoundedImage({
    super.key, required this.ImageUrl, required this.applyImageRadius,  this.backgroundColor, this.onpressed,
  });

  final String ImageUrl;
  final bool applyImageRadius;
  final Color ? backgroundColor;
  final VoidCallback ? onpressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed,
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: applyImageRadius ? BorderRadius.circular(TSizes.md) : BorderRadius.circular(0),
        ),
        child: ClipRRect(child: Image(image: AssetImage(ImageUrl),fit: BoxFit.contain),borderRadius: BorderRadius.circular(TSizes.md),),
      ),
    );
  }
}
