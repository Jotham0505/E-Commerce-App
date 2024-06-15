import 'package:ecommerce/common/widgets/appbar/app_bar.dart';
import 'package:ecommerce/common/widgets/custom%20shapes/containers/primary_header_container.dart';
import 'package:ecommerce/common/widgets/icons/t_circullar_icons.dart';
import 'package:ecommerce/common/widgets/images/TcircularImage.dart';
import 'package:ecommerce/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:ecommerce/common/widgets/list_tiles/userprofiletile.dart';
import 'package:ecommerce/common/widgets/texts/section_Heading.dart';
import 'package:ecommerce/features/personalization/screens/address/widgets/address.dart';
import 'package:ecommerce/features/personalization/screens/profile/profile.dart';
import 'package:ecommerce/features/shop/screens/cart/Cart_screem.dart';
import 'package:ecommerce/features/shop/screens/checkout/checkout_screen.dart';
import 'package:ecommerce/features/shop/screens/orders/order_screen.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ecommerce/Navigation_menu.dart';
import 'package:iconsax/iconsax.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header

            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  TAppBar(
                    title: Text(
                      'Account',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: TColors.white),
                    ),
                  ),
                  

                  // USER PROFILE CARD

                  Padding(
                    padding: EdgeInsets.only(bottom: 25),
                    child: TUserProfileTile(onpressed: () => Get.to(() => ProfileScreen()),),
                  ),
                  
                ],
              ),
            ),

            // Body
            Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  TSectionHeading(title: 'Account Settings',showActionButton: false,),
                  SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  TSettingMenuTile(icon: Iconsax.safe_home, title: 'My Addresses', subtitle: 'Set shopping delivery address', onpressed: () => Get.to(() => UserAddressScreen()),),
                  TSettingMenuTile(icon: Iconsax.shopping_cart, title: 'My Cart', subtitle: 'Add, remove products and move to checkout', onpressed: () => Get.to(() => CartScreen()),),
                  TSettingMenuTile(icon: Iconsax.bag_tick, title: 'My Orders', subtitle: 'In-progress and completed order', onpressed: () => Get.to(() => OrderScreen()),),
                  TSettingMenuTile(icon: Iconsax.bank, title: 'Bank Account', subtitle: 'Withdraw balance to registered bank account', onpressed: (){},),
                  TSettingMenuTile(icon: Iconsax.discount_shape, title: 'My Coupons', subtitle: 'List of all the discounted coupons', onpressed: (){},),
                  TSettingMenuTile(icon: Iconsax.notification, title: 'My Notifications', subtitle: 'Set any kind of notification messages', onpressed: (){},),
                  TSettingMenuTile(icon: Iconsax.security_card, title: 'Account Privacy', subtitle: 'Manage data usage and connected accounts', onpressed: (){},),

                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  TSectionHeading(title: 'App Settings',showActionButton: false,),
                  SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  TSettingMenuTile(icon: Iconsax.document_upload, title: 'Load Data', subtitle: 'Upload data to your Cloud Firebase', onpressed: (){},),
                   TSettingMenuTile(icon: Iconsax.location, title: 'Geolocation', subtitle: 'Set recommendation based on location', trailing: Switch(value: true,onChanged: (value){},),),
                    TSettingMenuTile(icon: Iconsax.security_user, title: 'Safe Mode', subtitle: 'Search result is safe for all ages', trailing: Switch(value: false, onChanged: (value){}),),
                     TSettingMenuTile(icon: Iconsax.image, title: 'HD Image Quality', subtitle: 'Upload data to your Cloud Firebase', trailing: Switch(value: false, onChanged: (value){}),),
                  

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


