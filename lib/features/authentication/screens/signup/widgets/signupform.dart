import 'package:ecommerce/common/widgets/login_signup/LoginForm_divider.dart';
import 'package:ecommerce/common/widgets/login_signup/social_button.dart';
import 'package:ecommerce/features/authentication/screens/signup/verify_email.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants/text_strings.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  // Firstname
                  decoration: InputDecoration(
                      labelText: TTexts.firstName,
                      prefixIcon: Icon(Icons.person)),
                ),
              ),
              SizedBox(
                width: TSizes.spaceBtwInputFields,
              ),
              Expanded(
                child: TextFormField(
                  // lastname
                  decoration: InputDecoration(
                      labelText: TTexts.lastName,
                      prefixIcon: Icon(
                        Icons.person,
                      )),
                ),
              ),
            ],
          ),
          SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),
          TextFormField(
            // username
            decoration: InputDecoration(
                labelText: TTexts.username,
                prefixIcon: Icon(Icons.person_add)),
          ),
          SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),
          TextFormField(
            // E-Mail
            decoration: InputDecoration(
                labelText: TTexts.email, prefixIcon: Icon(Icons.email)),
          ),
          SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),
          TextFormField(
            //Phone number
            decoration: InputDecoration(
                labelText: TTexts.phoneNo,
                prefixIcon: Icon(Icons.phone)),
          ),
          SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),
          TextFormField(
            // PAssword
            decoration: InputDecoration(
                prefix: Icon(Icons.password),
                labelText: TTexts.password,
                prefixIcon: Icon(Icons.person_add),
                suffixIcon: Icon(Icons.remove_red_eye)),
          ),
          SizedBox(
            height: TSizes.spaceBtwSections,
          ),
          Row(
            children: [
              SizedBox(
                height: 24,
                width: 24,
                child: Checkbox(
                  value: true,
                  onChanged: (values) {},
                ),
              ),
              SizedBox(
                width: 6,
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                        text: '${TTexts.iAgreeTo} ',
                        style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(
                        text: TTexts.privacyPolicy,
                        style: Theme.of(context).textTheme.bodyMedium!.apply(
                            color: dark ? TColors.white : TColors.primary,
                            decoration: TextDecoration.underline,
                            decorationColor:
                                dark ? TColors.white : TColors.primary)),
                    TextSpan(
                        text: ' ${TTexts.and} ',
                        style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(
                        text: TTexts.termsOfUse,
                        style: Theme.of(context).textTheme.bodyMedium!.apply(
                            color: dark ? TColors.white : TColors.primary,
                            decoration: TextDecoration.underline,
                            decorationColor:
                                dark ? TColors.white : TColors.primary)),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: TSizes.spaceBtwItems,
          ),
          // Sigup Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(() => VerifyEmailScreen()),
              child: Text(
                TTexts.createAccount
              ),
            ),
          ),

          SizedBox(
            height: TSizes.spaceBtwItems,
          ),

          // Divider 

          loginDivider(data: 'Or Signup with'),

          SizedBox(
            height: TSizes.spaceBtwItems,
          ),

          SocialButton()
        ],
      ),
    );
  }
}
