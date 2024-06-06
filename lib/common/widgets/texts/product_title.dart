import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TproductTitleText extends StatelessWidget {
  const TproductTitleText({
    super.key,
    required this.text, this.smallSize = false, this.maxLines = 2,
  });

  final String text;
  final bool smallSize;
  final int maxLines;

  @override
  Widget build(BuildContext context) { // ECommernce PRoduct title description 
    return Padding(
      padding:  const EdgeInsets.only(left: TSizes.sm),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 140, left: 20),
            child: Text(
              text,
              style: smallSize ? Theme.of(context).textTheme.labelLarge : Theme.of(context).textTheme.titleSmall,
              overflow: TextOverflow.ellipsis,
              maxLines: maxLines,
              textAlign: TextAlign.center
              ,
            ),
          ),
        ],
      ),
    );
  }
}