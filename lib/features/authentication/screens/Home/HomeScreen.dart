import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/AppBar/AppBar.dart';
import 'package:t_store/common/AppBar/TCartCounter.dart';
import 'package:t_store/features/authentication/screens/Home/Custom_widgets_shapes/THomeCategories.dart';
import 'package:t_store/features/authentication/screens/Home/Custom_widgets_shapes/TPrimary_Heaader_Container.dart';
import 'package:t_store/features/authentication/screens/Home/Custom_widgets_shapes/TPromoSlider.dart';
import 'package:t_store/features/authentication/screens/Home/Custom_widgets_shapes/TRoundedBanners.dart';
import 'package:t_store/features/authentication/screens/Home/Custom_widgets_shapes/TSearchContainer.dart';
import 'package:t_store/features/authentication/screens/Home/Custom_widgets_shapes/TSectionHeading.dart';
import 'package:t_store/features/authentication/screens/Home/Custom_widgets_shapes/TVerticalImageText.dart';
import 'package:t_store/features/authentication/screens/Home/Custom_widgets_shapes/circularContainer.dart';
import 'package:t_store/features/authentication/screens/Home/HomeScreen.dart';

import 'package:t_store/utils/constants/TColors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/divices/device_utility.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  ///---Appbar text
                  TAppBar(
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          TTexts.homeAppBarTitle,
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .apply(color: TColors.grey),
                        ),
                        Text(
                          TTexts.homeAppbarSubTitle,
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .apply(color: TColors.white),
                        )
                      ],
                    ),
                    action: [
                      TCartCounter(
                        onPressed: () {},
                        iconColor: TColors.white,
                      ),
                    ],
                  ),

                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  /// Search container

                  TSearchContainer(text: 'Search in Store'),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  /// --- Heading--
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        TSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        SizedBox(
                          height: TSizes.spaceBtwItems,
                        ),

                        /// --- Categories--
                        THomeCategories(),
                      ],
                    ),
                  )
                ],
              ),
            ),

            ///---- Body banner

            Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: TPromoSlider(banners: [TImages.promoBanner1, TImages.promoBanner2, TImages.promoBanner3],),
            ),
          ],
        ),
      ),
    );
  }
}


