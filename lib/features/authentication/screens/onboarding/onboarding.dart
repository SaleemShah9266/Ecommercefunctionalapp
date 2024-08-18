import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'package:t_store/features/authentication/screens/onboarding/controller/onboarding_controller.dart';
import 'package:t_store/features/authentication/screens/onboarding/onboarding.dart';
import 'package:t_store/features/authentication/screens/onboarding/widgets/OnBoardingNextButton.dart';
import 'package:t_store/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:t_store/features/authentication/screens/onboarding/widgets/onboarding_pages.dart';
import 'package:t_store/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:t_store/utils/constants/TColors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/divices/device_utility.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class OnBoardingScreen extends StatelessWidget {
  const  OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());

    return Scaffold(
      body: Stack(
        children: [



          /// Horizantal scrollable page

          PageView(
            controller: controller.pageController ,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              onBoardingPage(
                image: TImages.Bone,
                title: TTexts.onBoarding1,
                subTitle: TTexts.onBoarding11,

              ),

              onBoardingPage(
                image: TImages.Btwo,
                title: TTexts.onBoarding2,
                subTitle: TTexts.onBoarding22,

              ),
              onBoardingPage(
                image: TImages.Bthree,
                title: TTexts.onBoarding3
                ,
                subTitle: TTexts.onBoarding33,

              ),
            ],
          ),

          /// skip button
          OnBoardingSkip(),

          /// dot navigation smoothpageindicator

          OnBoardingDotNavigation(),

          /// circular Buttom

          OnBoardingNextButton()
        ],
      ),
    );
  }
}










