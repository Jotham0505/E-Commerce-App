import 'package:ecommerce/common/widgets/products/cart/Cart_item.dart';
import 'package:ecommerce/common/widgets/products/cart/add_remove_button.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TcartItems extends StatelessWidget {
  const TcartItems({super.key, this.showAddAndRemove = true});

  final bool showAddAndRemove;
  

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
          shrinkWrap: true,
          separatorBuilder: (_, __) => SizedBox(
            height: TSizes.spaceBtwSections,
          ),
          itemCount: 2,
          itemBuilder: (_, index) => Column(
            children: [
              TCartItem(), // in the common widget
              if(showAddAndRemove) 
              SizedBox(
                height: TSizes.spaceBtwItems,
              ),

              if(showAddAndRemove)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 70,
                      ),
                      TProductQuantityWithAddandRemove() 
                    ],
                  ),
                  Text("\$256",style: Theme.of(context).textTheme.titleLarge,)
                ],
              )
            ],
          ),
        );
  }
}