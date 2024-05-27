import 'package:ecommerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class TCircularContainer extends StatelessWidget {
  const TCircularContainer({
    super.key, this.width = 400 , this.height = 350, this.radius = 400, this.padding , this.child, this.backgroundColor = TColors.white, this.margin,this.showBorder = false, this.borderColor = Colors.black, this.borderWidth = 1.0
  });

  final double ? width;
  final double ? height;
  final double  radius; 
  final EdgeInsets ? padding;
  final Widget ? child;
  final Color backgroundColor;
  final EdgeInsets ?  margin;
  final bool showBorder;
  final Color borderColor; // color of the border
  final double borderWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
        border: showBorder ? Border.all(color: borderColor, width: borderWidth) : null,
      ),
      child: child,

    );
  }
}