import 'package:ecommerce/common/widgets/appbar/app_bar.dart';
import 'package:ecommerce/common/widgets/custom%20shapes/containers/circular%20_container.dart';
import 'package:ecommerce/common/widgets/custom%20shapes/curved%20shapes/curved_edges.dart';
import 'package:ecommerce/common/widgets/custom%20shapes/curved%20shapes/curved_edges_widget.dart';
import 'package:ecommerce/common/widgets/products_cart/cart_menu_icon.dart';
import 'package:ecommerce/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/custom shapes/containers/primary_header_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  ThemeAppBar()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



