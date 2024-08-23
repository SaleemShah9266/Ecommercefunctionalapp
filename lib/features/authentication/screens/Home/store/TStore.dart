import 'package:flutter/material.dart';
import 'package:t_store/common/AppBar/AppBar.dart';
import 'package:t_store/common/AppBar/TCartCounter.dart';
import 'package:t_store/features/authentication/screens/Home/Custom_widgets_shapes/TSearchContainer.dart';
import 'package:t_store/features/authentication/screens/Home/Custom_widgets_shapes/TSectionHeading.dart';
import 'package:t_store/features/authentication/screens/Home/carts/TRoundedContainer.dart';
import 'package:t_store/utils/constants/TColors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';


class StoreScreen extends StatelessWidget {
  const StoreScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text('Store', style: Theme.of(context).textTheme.headlineMedium,),
        action: [
          TCartCounter(onPressed: (){},iconColor:TColors.black,)
        ],
      ),
      body: NestedScrollView(headerSliverBuilder:(_, innerBoxIsScrolled){
        return[
          SliverAppBar(
            automaticallyImplyLeading: false,
            pinned: true,
            floating: true,
            backgroundColor: THelperFunctions.isDarkMode(context) ? TColors.black : TColors.white,
            expandedHeight: 440,

            flexibleSpace: Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  ///---search bar
                  SizedBox(height: TSizes.spaceBtwItems,),
                  TSearchContainer(text: 'Search in store', showBorder: true, showBackground: false,padding: EdgeInsets.zero,),
                  SizedBox(height: TSizes.spaceBtwSections,),

                  ///--- Feature Brands
                  TSectionHeading(title: 'Feature Brands', onPressed: (){},),
                  SizedBox(height: TSizes.spaceBtwItems /1.5,),

                  TRoundedContainer(
                    padding: EdgeInsets.all(TSizes.sm),
                    showBorder: true,
                    backgroundColor: Colors.transparent,
                    child: Row(
                      children: [
                        ///---Icon
                        Container(
                          width: 56,
                          height: 56,
                          padding: EdgeInsets.all(TSizes.sm),
                          decoration: BoxDecoration(
                            color: THelperFunctions.isDarkMode(context) ? TColors.black : TColors.white,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Image(
                            image: AssetImage(TImages.sportIcon),
                            color: THelperFunctions.isDarkMode(context) ? TColors.white : TColors.dark,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),

          )


        ];
      } ,body:Container() ,),
    );
  }
}
