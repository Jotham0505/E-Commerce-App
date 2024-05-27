import 'package:ecommerce/common/widgets/custom%20shapes/containers/circular%20_container.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';


class TBrandShowcase extends StatelessWidget {
  const TBrandShowcase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return TCircularContainer(
      height: 190,
      width: 325,
      radius: 10,
      showBorder: true,
      borderColor: TColors.darkGrey,
      backgroundColor: Colors.transparent,
      padding: EdgeInsets.all(TSizes.md),
      margin: EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Column(
        children: [
          // Brand with product count
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Row(
              children: [
                // Icon
                Flexible(
                  child: Container(
                    width: 40,
                    height: 40,
                    padding: EdgeInsets.all(TSizes.sm),
                    decoration: BoxDecoration(
                      color:
                          THelperFunctions.isDarkMode(context)
                              ? TColors.black
                              : TColors.white,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Image(
                      image: AssetImage(TImages.clothIcon),
                      color:
                          THelperFunctions.isDarkMode(context)
                              ? TColors.white
                              : TColors.dark,
                    ),
                  ),
                ),
                SizedBox(
                  width: TSizes.spaceBtwItems / 2,
                ),

                // TExt
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment:
                        CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 3.5, left: 5),
                        child: Row(
                          children: [
                            Text(
                              'Nike',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Iconsax.verify5,
                              color: TColors.primary,
                              size: TSizes.iconXs,
                            )
                          ],
                        ),
                      ),
                      Text(
                        '256 Products',
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),

          // brand top 3 product images
          Row(
            children: 
             (images.map((image) => brandTopProductImageWidget(image, context))).toList()
            
          )
        ],
      ),
    );
  }
}

Widget brandTopProductImageWidget(String image, context){
  return Expanded(
    child: TCircularContainer(
      height: 90,
      width: 70,
      radius: 10,
      padding: EdgeInsets.all(TSizes.md),
      backgroundColor: THelperFunctions.isDarkMode(context) ? TColors.dark : TColors.white,
      margin: EdgeInsets.only(right: TSizes.sm),
      child: Image(image: AssetImage(image), fit: BoxFit.contain,),
    ),
  );
}
