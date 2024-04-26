import 'package:ecommerce/common/widgets/custom%20shapes/containers/circular%20_container.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';

import '../curved shapes/curved_edges_widget.dart';


class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key, required this.child,
  });

    final Widget child;
  @override
  Widget build(BuildContext context) {
    return TCurvedEdgeswidget(
      child: Container(
        color: TColors.primary,
        padding: EdgeInsets.all(0),
        child: SizedBox(
          height: 350,
          child: Stack(
            children: [
              Positioned(
                child: TCircularContainer(
                  backgroundColor: TColors.textWhite.withOpacity(0.1),
                ),
                top: -150,
                right: -250,
              ),
              Positioned(
                child: TCircularContainer(
                  backgroundColor: TColors.textWhite.withOpacity(0.1),
                ),
                top: 100,
                right: -300,
              ),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
