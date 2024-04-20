import 'package:ecommerce/common/styles/spacing_styles.dart';
import 'package:ecommerce/common/widgets.login_signup/social_button.dart';
import 'package:ecommerce/features/authentication/screens/login/widgets/login_form.dart';
import 'package:ecommerce/features/authentication/screens/login/widgets/login_header.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets.login_signup/LoginForm_divider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingwithAppBarHeight,
          child: Column(
            children: [
              // Logo, Title and subTitle
              Login_header(dark: dark),
              SizedBox(
                height: 14,
              ),
              // Login Form
              Login_form(),

              // Divider
              loginDivider(),

              SizedBox(
                height: TSizes.spaceBtwItems,
              ),

              // footer
              SocialButton()
            ],
          ),
        ),
      ),
    );
  }
}


