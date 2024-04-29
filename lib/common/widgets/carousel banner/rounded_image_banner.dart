import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';


class TRoundedImage extends StatelessWidget {
  const TRoundedImage({
    super.key, required this.ImageUrl, required this.applyImageRadius,  this.backgroundColor, this.onpressed, this.isNetworkImage = false,
  });

  final String ImageUrl;
  final bool applyImageRadius;
  final Color ? backgroundColor;
  final VoidCallback ? onpressed;
  final bool isNetworkImage;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed,
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: applyImageRadius ? BorderRadius.circular(TSizes.md) : BorderRadius.circular(TSizes.md),
        ),
        child: ClipRRect(child: Image(image: isNetworkImage ? NetworkImage(ImageUrl) : AssetImage(ImageUrl) as ImageProvider ,fit: BoxFit.contain),borderRadius: BorderRadius.circular(TSizes.md),),
      ),
    );
  }
}
