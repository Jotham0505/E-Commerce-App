import 'package:ecommerce/common/widgets/appbar/app_bar.dart';
import 'package:ecommerce/features/shop/screens/orders/widgets/order_list_widget.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text('My Orders',style: Theme.of(context).textTheme.headlineSmall,),
        showbackArrow: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),

        // ORders
        child: TorderListScreen(),
      ),
    );
  }
}