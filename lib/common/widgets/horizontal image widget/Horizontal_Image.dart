import 'package:ecommerce/common/widgets/texts/section_Heading.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class horizontalListViewwidget extends StatelessWidget {
  const horizontalListViewwidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Padding(
      padding: EdgeInsets.only(left: 30),
      child: Column(
        children: [
          TSectionHeading(title: 'Popular Categories',showActionButton: true,),
          SizedBox(
            height: 1,
          ),

          // Scroallbale items 
          
          SizedBox(
            height: 60,
            child: ListView.separated(
              padding: EdgeInsets.symmetric(vertical: 2),
              shrinkWrap: true,
              itemBuilder: (_, index){
                return Column(
                  children: [
                    Container(
                      height: 56,
                      width: 56,
                      padding: EdgeInsets.all(TSizes.md),
                      decoration: BoxDecoration(
                        color: dark ? TColors.dark : TColors.white,
                        borderRadius: BorderRadius.circular(100)
                      ),
                      child: Image(
                        image: AssetImage(TImages.shoeIcon,),
                        color: dark ? TColors.white : TColors.dark,
                      ),
                    ),
                    
                  ],
                );
              },
              itemCount: 8,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (BuildContext context, int index) => SizedBox(width: 10,),
            ),
          ),

        ],
      ),
    );
  }
}