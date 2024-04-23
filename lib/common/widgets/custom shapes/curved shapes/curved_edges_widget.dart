import 'package:ecommerce/common/widgets/custom%20shapes/curved%20shapes/curved_edges.dart';
import 'package:flutter/material.dart';


class TCurvedEdgeswidget extends StatelessWidget {
  const TCurvedEdgeswidget({
    super.key, this.child,
  });

  final Widget ? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TCustomCurvedEdges(),
      child: child
    );
  }
}