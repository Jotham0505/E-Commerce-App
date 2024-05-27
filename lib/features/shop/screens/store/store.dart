import 'package:ecommerce/common/brnads/brand_name.dart';
import 'package:ecommerce/common/widgets/appbar/app_bar.dart';
import 'package:ecommerce/common/widgets/appbar/tabbar.dart';
import 'package:ecommerce/common/widgets/custom%20shapes/containers/circular%20_container.dart';
import 'package:ecommerce/common/widgets/custom%20shapes/containers/searchbar_container.dart';
import 'package:ecommerce/common/widgets/layout/grid_layout.dart';
import 'package:ecommerce/common/widgets/products/cart_menu_icon.dart';
import 'package:ecommerce/common/widgets/products/product_card/vertical_product.dart';
import 'package:ecommerce/common/widgets/texts/section_Heading.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:iconsax/iconsax.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: TAppBar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            TCartCounterIcon(onPressed: () {}, IconColor: Colors.black),
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: THelperFunctions.isDarkMode(context)
                    ? TColors.dark
                    : TColors.white,
                expandedHeight: 440,

                flexibleSpace: Padding(
                  padding: EdgeInsets.all(TSizes.defaultSpace),
                  child: ListView(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: [
                      // Search bar
                      SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),
                      TSearchContainer(
                        text: 'Search in store',
                        showBorder: true,
                        showBackground: false,
                        searchbarSize: 0,
                      ),
                      SizedBox(
                        height: TSizes.spaceBtwSections,
                      ),

                      // Featured brands
                      TSectionHeading(
                        title: "Featured Brands",
                        onPressed: () {},
                      ),
                      SizedBox(
                        height: TSizes.spaceBtwItems / 1.5,
                      ),
                      TGridLayout(
                        itemCount: 4,
                        mainAxisExtent: 88,
                        itemBuilder: (_, index) {
                          return GestureDetector(
                            onTap: () {},
                            child: TCircularContainer(
                              height: 56,
                              width: 56,
                              radius: 10,
                              padding: EdgeInsets.all(TSizes.sm),
                              showBorder: true,
                              borderColor: TColors.lightGrey,
                              backgroundColor: Colors.transparent,
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
                                        borderRadius:
                                            BorderRadius.circular(100),
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
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                // Tabs

                bottom: TTabBar(
                  tabs: [
                    Tab(
                      child: Text(
                        'Sports',
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Furniture',
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Electronics',
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Clothes',
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Cosmetics',
                      ),
                    ),
                  ],
                ),
              )
            ];
          },
          body: TabBarView(
            children: [
              ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [Padding(
                  padding: EdgeInsets.all(TSizes.defaultSpace),
                  child: Column(
                    children: [
                      //Brands
                      TBrandShowcase(
                        images: [
                          TImages.productImage3,
                          TImages.productImage2,
                          TImages.productImage1
                        ],
                      ),
                      TBrandShowcase(
                        images: [
                          TImages.productImage3,
                          TImages.productImage2,
                          TImages.productImage1
                        ],
                      ),
              
                      //Products
                      TSectionHeading(title: 'You might like',onPressed: (){},),
                      SizedBox(height: TSizes.spaceBtwItems,),
              
                      TGridLayout(itemCount: 4, itemBuilder: (_,context) => TProductVertical()),
                      SizedBox(
                        height: TSizes.spaceBtwSections,
                      )
                      
                    ],
                  ),
                ),
                ]
              )
            ],
          ),
        ),
      ),
    );
  }
}

