import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/styles/TShadowStyle.dart';
import 'package:t_store/features/authentication/screens/Home/Custom_widgets_shapes/TRoundedBanners.dart';
import 'package:t_store/features/authentication/screens/Home/carts/TCircularIcon.dart';
import 'package:t_store/features/authentication/screens/Home/carts/TProductPriceText.dart';
import 'package:t_store/features/authentication/screens/Home/carts/TRoundedContainer.dart';
import 'package:t_store/features/authentication/screens/Home/product/TProductTitleText.dart';
import 'package:t_store/utils/constants/TColors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: (){},
      child: Container(
        width: 180,
        padding: EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? TColors.darkGrey : TColors.white,
        ),
        child: Column(
          children: [
            ///Thumnail , wishlist button, Discount tag
      
           TRoundedContainer(
             height: 180,
             padding: EdgeInsets.all(TSizes.sm),
             backgroundColor: dark ? TColors.dark : TColors.light,
      
             child: Stack(
               children: [
                 ///---- Thumbnain Images
      
                 TRoundedImage(imageUrl: TImages.productImage1, applyImageRadius: true,),
      
                 Positioned(
                   top: 12,
      
      
                   child: TRoundedContainer(
                     radius: TSizes.sm,
                     backgroundColor: TColors.secondary.withOpacity(0.8),
                     padding: EdgeInsets.symmetric(horizontal: TSizes.sm,vertical: TSizes.sm),
                     child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black),),
                   ),
                 ),
      
                 ///---Favourite icon
                 Positioned(
                   top: 0,
                     right: 0,
                     child: TCircularIcon(icon: Iconsax.heart5, color: Colors.red,)),
      
               ],
             ),
           ),
            SizedBox(height:  TSizes.spaceBtwItems / 2),
            /// --- Details
            Padding(padding: EdgeInsets.only(
              left: TSizes.sm
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TProductTitleText(title: "Green Nike Air Shoes", smallSize: true,),
                SizedBox(height:  TSizes.spaceBtwItems / 2),
                Row(
                  children: [
                    Text('Nike', overflow: TextOverflow.ellipsis, maxLines: 1,style: Theme.of(context).textTheme.labelMedium,),
                    SizedBox(width: TSizes.xs,),
                    Icon(Iconsax.verify5, color: TColors.primary, size: TSizes.iconxs,)
                  ],
                ),
                // Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ///prices
                    
                    TProductPriceText( isLarge: true, price: '35.0',),
                    Container(
                      decoration: BoxDecoration(
                        color: TColors.dark,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(TSizes.cardRadiusMd),
                          bottomRight: Radius.circular(TSizes.productImageRadius),
                        ),
                      ),
                      child: SizedBox(
                        width: TSizes.iconlg * 1.2,
                        height: TSizes.iconlg * 1.2,
                        child: Center(child: Icon(Iconsax.add,color: TColors.white,),),
                      ),
                    )
      
                  ],
                )
      
              ],
            ),
      
            ),
      
      
      
          ],
        ),
      ),
    );
  }
}


