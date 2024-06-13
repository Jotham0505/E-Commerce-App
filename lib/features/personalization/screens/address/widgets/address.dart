import 'package:ecommerce/common/widgets/appbar/app_bar.dart';
import 'package:ecommerce/features/personalization/screens/address/widgets/add_new_address.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';


class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.to(
          () => AddNewAddressScreen(),
        ),
        child: Icon(Iconsax.add, color: TColors.white,),
        backgroundColor: TColors.primary,
      ),
      appBar: TAppBar(
        showbackArrow: true,
        title: Text('Addresses', style: Theme.of(context).textTheme.headlineSmall,),
      ),
    );
  }
}