import 'package:ecommerce/features/authentication/screens/fgt_password/reset_password.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Headings

              Text(
                TTexts.forgetPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(
                height: TSizes.spaceBtwItems,
              ),

              Text(
                TTexts.forgetPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
              ),
              SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              // text field
              TextFormField(
                decoration: InputDecoration(
                    labelText: TTexts.email, prefixIcon: Icon(Icons.email)),
              ),
              SizedBox(
                height: TSizes.spaceBtwItems,
              ),

              // submite button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.off(() => ResetPassword()),
                  child: Text(TTexts.submit),
                ),
              ),
            ],
          ),
        ));
  }
}
