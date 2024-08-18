import 'package:flutter/cupertino.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:t_store/features/authentication/screens/onboarding/controller/onboarding_controller.dart';
import 'package:t_store/utils/constants/TColors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/divices/device_utility.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    final dark = THelperFunctions.isDarkMode(context);


    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationHeight() + 40,
      left: TSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(activeDotColor: dark ? TColors.light : TColors.dark, dotWidth: 16, dotHeight: 12),
      ),
    );
  }
}