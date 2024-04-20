import 'package:ecommerce/features/authentication/screens/signup/signup.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants/text_strings.dart';

class Login_form extends StatelessWidget {
  const Login_form({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            //email
            decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.keyboard_double_arrow_right_outlined,
                ),
                labelText: TTexts.email),
          ),
          SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),
          TextFormField(
            // password
            decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.password,
                ),
                labelText: TTexts.password,
                suffixIcon: Icon(Icons.remove_red_eye_outlined)),
          ),
          SizedBox(
            height: TSizes.spaceBtwInputFields / 2,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // Remeber me
            children: [
              Row(
                children: [
                  Checkbox(value: true, onChanged: ((value) {})),
                  Text(TTexts.rememberMe),
                ],
              ),
              TextButton(
                  onPressed: () {},
                  child:
                      Text(TTexts.forgetPassword)) // forgot password
            ],
          ),
          SizedBox(
            height: TSizes.spaceBtwSections,
          ),

          // Sign in button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(TTexts.signIn),
            ),
          ),
          SizedBox(
            height: TSizes.spaceBtwInputFields, 
          ),
          // Create Account 
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Get.to(() => SignupScreen());
              },
              child: Text(TTexts.createAccount),
            ),
          ),
          SizedBox(
            height: TSizes.spaceBtwSections,
          )
        ],
      ),
    );
  }
}