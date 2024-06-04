import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';


class TRoundedImage extends StatelessWidget {
  const TRoundedImage({
    super.key, required this.ImageUrl, this.applyImageRadius = true,  this.backgroundColor, this.onpressed, this.isNetworkImage = false, this.width, this.height, this.padding, this.fit = BoxFit.contain, this.border, this.borderRadius = TSizes.sm,
  });

  final String ImageUrl;
  final bool applyImageRadius;
  final Color ? backgroundColor;
  final VoidCallback ? onpressed;
  final bool isNetworkImage;
  final double ? width,height;
  final EdgeInsetsGeometry ? padding;
  final BoxFit ? fit;
  final BoxBorder ? border;
  final double ? borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius!),
          border: border
        ),
        child: ClipRRect(
          child: Image(
              image: isNetworkImage
                  ? NetworkImage(ImageUrl)
                  : AssetImage(ImageUrl) as ImageProvider,
              fit: fit),
          borderRadius: applyImageRadius ? BorderRadius.circular(borderRadius!) : BorderRadius.zero,
        ),
      ),
    );
  }
}
