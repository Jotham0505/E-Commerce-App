import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TCircularImage extends StatelessWidget{
  const TCircularImage({super.key, required this.img, this.width = 50, this.height = 50, this.backgroundcolor, this.padding = TSizes.sm, this.isNetworkImage = false, this.fit = BoxFit.cover, this.overlarColor});
  final String img;
  final double ? width;
  final double ? height;
  final Color ? backgroundcolor;
  final double padding;
  final bool isNetworkImage;
  final BoxFit? fit;
  final Color ? overlarColor;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
     height: height,
     width: width,
     padding: EdgeInsets.all(padding),
     decoration: BoxDecoration(
      color: backgroundcolor ?? (THelperFunctions.isDarkMode(context)? TColors.black : TColors.white),
      borderRadius: BorderRadius.circular(100),
     ),
     child: Center(
      child: Image(
        image: isNetworkImage ? NetworkImage(img): AssetImage(img) as ImageProvider,
        fit: fit,
        color: overlarColor,
      ),
     ),
    );
  }
}