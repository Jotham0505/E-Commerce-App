import 'package:flutter/material.dart';

class TCircularImage extends StatelessWidget{
  const TCircularImage({super.key, required this.img, this.width = 50, this.height = 50});
  final String img;
  final double ? width;
  final double ? height;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Image(
        image: AssetImage(img),
        width: width,
        height: height,
      ),
    );
  }
}