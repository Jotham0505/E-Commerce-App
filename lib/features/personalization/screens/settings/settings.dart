import 'package:ecommerce/common/widgets/appbar/app_bar.dart';
import 'package:ecommerce/common/widgets/custom%20shapes/containers/primary_header_container.dart';
import 'package:ecommerce/common/widgets/icons/t_circullar_icons.dart';
import 'package:ecommerce/common/widgets/images/TcircularImage.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ecommerce/Navigation_menu.dart';

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
                    child: ListTile(
                      leading: Container(
                        child: Image(
                          image: AssetImage(TImages.user),
                          width: 50,
                          height: 50,
                        ),
                      ),
                      title: Text(
                        'Jotham Emmanuel Cheeran',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      subtitle: Text(
                        'jothamemmanuelcheeran@gmail.com',
                        style: Theme.of(context).textTheme.bodySmall
                      ),
                    ),
                  ),
                  
                ],
              ),
            ),

            // Body
          ],
        ),
      ),
    );
  }
}
