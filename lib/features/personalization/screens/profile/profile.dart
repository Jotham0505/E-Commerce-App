import 'package:ecommerce/common/widgets/appbar/app_bar.dart';
import 'package:ecommerce/common/widgets/images/TcircularImage.dart';
import 'package:ecommerce/common/widgets/texts/section_Heading.dart';
import 'package:ecommerce/features/personalization/screens/profile/widgets/TProfileMenu.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: TAppBar(
        showbackArrow: true,
        title: Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // Profile Pic
              Center(
                child: Column(
                  children: [
                    TCircularImage(img: TImages.user,width: 80,height: 80,),
                    TextButton(onPressed: (){}, child: Text('Change Profile Picture'))
                  ],
                ),
              ),

              // Details
              SizedBox(
                height: TSizes.defaultSpace/2,
              ),
              Divider(),
              SizedBox(
                height: TSizes.defaultSpace,
              ),
              TSectionHeading(
                title: 'Profile Information',
                showActionButton: false,
              ),
              SizedBox(
                height: TSizes.spaceBtwItems,
              ),

              TProfileMenu(title: 'Name', value: 'Jotham Cheeran',onpressed: (){},) ,// In personalization folder, under profile folder and widgets
              TProfileMenu(title: 'Username', value: 'Jotham_Cheeran',onpressed: (){},) ,

              SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              Divider(),
              SizedBox(
                height: TSizes.spaceBtwItems,
              ),

              TSectionHeading(title: 'Personal Information',showActionButton: false,),
              SizedBox(
                height: TSizes.spaceBtwItems,
              ),
               TProfileMenu(title: 'User ID', value: '45689',onpressed: (){},icon: Iconsax.copy,) ,
                TProfileMenu(title: 'E-mail', value: 'jothamcheeran@gmail.com',onpressed: (){},) ,
                 TProfileMenu(title: 'Phone Number', value: '123456789',onpressed: (){},) ,
                  TProfileMenu(title: 'Gender', value: 'Male',onpressed: (){},) ,
                   TProfileMenu(title: 'Date of Birth', value: '05/05/2004',onpressed: (){},) ,
            
            Divider(),
            SizedBox(
              height: TSizes.spaceBtwItems,
            ),

            Center(
              child: TextButton(
                child: Text('Delete Account',style: TextStyle(color: Colors.red),),
                onPressed: (){},
              ),
            )
            ],

          ),
        )
      ),
    );
  }
}

