import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:t_store/features/authentication/screens/Home/Custom_widgets_shapes/HomeController.dart';
import 'package:t_store/features/authentication/screens/Home/Custom_widgets_shapes/TRoundedBanners.dart';
import 'package:t_store/features/authentication/screens/Home/Custom_widgets_shapes/circularContainer.dart';
import 'package:t_store/utils/constants/TColors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
class TPromoSlider extends StatelessWidget {
  const TPromoSlider({
    super.key,
    required this.banners,
  });
  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(Homecontroller());
    return Column(

      children: [

        CarouselSlider(

          options: CarouselOptions(
            onPageChanged: (index, _) => controller.updatePageIndicator(index),
            viewportFraction: 1,),

          items:banners.map((Url) => TRoundedImage(imageUrl: Url)).toList(),

        ),
        SizedBox(height: TSizes.spaceBtwItems,),
        Obx(
            ()=>
       Center(
         child: Row(
           mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for(int i = 0; i < banners.length; i++

                )
                  TCircularContainer(
                    width: 20,
                    height: 5,
                    margin: EdgeInsets.only(right: 10),
                    backgroundColor:controller.carousalCurrentIndex.value == i ? TColors.primary : TColors.grey,
                  ),
              ],
            ),
       ),
        ),

      ],
    );
  }
}




