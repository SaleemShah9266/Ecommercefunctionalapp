import 'package:flutter/material.dart';
import 'package:t_store/common/AppBar/AppBar.dart';
import 'package:t_store/common/AppBar/TCartCounter.dart';
import 'package:t_store/features/authentication/screens/Home/Custom_widgets_shapes/TSearchContainer.dart';
import 'package:t_store/features/authentication/screens/Home/Custom_widgets_shapes/TSectionHeading.dart';
import 'package:t_store/features/authentication/screens/Home/Layout/GridLayOut.dart';
import 'package:t_store/features/authentication/screens/Home/carts/TRoundedContainer.dart';
import 'package:t_store/features/authentication/screens/Home/store/TBrandTitleText.dart';
import 'package:t_store/features/authentication/screens/Home/store/TBrandTitleTextWithVerifiedIcon.dart';
import 'package:t_store/features/authentication/screens/Home/store/TCircularImage.dart';
import 'package:t_store/utils/constants/TColors.dart';
import 'package:t_store/utils/constants/enums.dart';
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
            expandedHeight: 600,

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

                 TGridLayOut(itemCount: 4, mainAxisExtent: 88, itemBuilder: (_, index){
                   return  GestureDetector(
                     onTap: (){},
                     child: TRoundedContainer(

                       padding: EdgeInsets.all(TSizes.sm),
                       showBorder: true,
                       backgroundColor: Colors.transparent,
                       child: Row(
                         children: [
                           ///---Icon
                           Flexible(
                             child: TCircularImage(
                               isNetworkImage: false,
                               image: TImages.mobileIcon,
                               backgroundColor: Colors.transparent,
                               overlayColor: THelperFunctions.isDarkMode(context)? TColors.white: TColors.black,
                             ),
                           ),
                           SizedBox(width: TSizes.spaceBtwItems /1.5,),

                           ///---text
                           Expanded(
                             child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 //
                             
                                 TBrandTitleWithVerifiedIcon(title: 'Nike',brandTextSize: TextSizes.large, ),
                                 Text('256 products',
                                   overflow: TextOverflow.ellipsis,
                                   style: Theme.of(context).textTheme.labelMedium,
                                 )
                               ],
                             ),
                           ),

                         ],
                       ),
                     ),
                   );

                 })
                ],
              ),
            ),

          ),


        ];
      } ,body:Container() ,),
    );
  }
}

