import 'package:ecommerce/Navigation_menu.dart';
import 'package:ecommerce/common/widgets/appbar/app_bar.dart';
import 'package:ecommerce/common/widgets/custom%20shapes/containers/circular%20_container.dart';
import 'package:ecommerce/common/widgets/products/cart/coupon_widget.dart';
import 'package:ecommerce/common/widgets/success_screen/success_screen.dart';
import 'package:ecommerce/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:ecommerce/features/shop/screens/checkout/widget/billing_address_section.dart';
import 'package:ecommerce/features/shop/screens/checkout/widget/billing_amount_section.dart';
import 'package:ecommerce/features/shop/screens/checkout/widget/billing_payment_section.dart';
import 'package:ecommerce/features/shop/screens/orders/widgets/order_list_widget.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
        title: Text('Order Review',style: Theme.of(context).textTheme.headlineSmall,),
        showbackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // items in the cart
              TcartItems(showAddAndRemove: false,),
              SizedBox(height: TSizes.spaceBtwSections,),

              // coupon textfield
              TPromoCOde(),
              SizedBox(height: TSizes.spaceBtwSections,),

              // Billing Section 
              TCircularContainer(
                padding: EdgeInsets.all(TSizes.md),
                showBorder: true,
                backgroundColor: dark ? TColors.black : TColors.white,
                child: Column(
                  children: [
                    // Pricing
                    TBillingAmountSection(),
                    SizedBox(height: TSizes.spaceBtwItems,),


                    // Divider 
                    Divider(),
                    SizedBox(height: TSizes.spaceBtwItems,),

                    // Payment methods
                    TBillingPaymentSection(),
                    SizedBox(height: TSizes.spaceBtwItems,),

                    // Address
                    TBillingAddressSection()
                  ],
                ),
              )

            ],
          ),
        ),
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(onPressed: () => Get.to(() => SuccessScreen(image: TImages.successfulPaymentIcon, title: 'Payment Successful', subtitle: 'Your item will be shipped soon!!', onPressed: () => Get.offAll(() => NavigationMenu()),)), child: Text('Checkout  \$256.0',)),
      ),
    );
  }
}

