import 'package:ecommerce/common/widgets/appbar/app_bar.dart';
import 'package:ecommerce/common/widgets/icons/t_circullar_icons.dart';
import 'package:ecommerce/common/widgets/layout/grid_layout.dart';
import 'package:ecommerce/common/widgets/products/product_card/vertical_product.dart';
import 'package:ecommerce/features/shop/screens/home/home.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class FavouriteScreeen extends StatelessWidget {
  const FavouriteScreeen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text(
          'Wishlist',
          style: Theme.of(context).textTheme.headlineMedium,
          
        ),
        actions: [
          TCircularIcon(
            onPressed: () => Get.to(HomeScreen()),
            icon: Iconsax.add, color: Colors.white,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(0),
          child: Column(
            children: [
              TGridLayout(
                itemCount: 6,
                itemBuilder: (_,index) => TProductVertical(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}