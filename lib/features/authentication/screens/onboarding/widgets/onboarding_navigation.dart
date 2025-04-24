import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_untility.dart';
import '../../../controllers/onboarding/onboarding_controller.dart';

class OnBoardingNavigator extends StatelessWidget {
  const OnBoardingNavigator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    return Positioned(
        bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
        left: TSizes.defaulSpace,
        child: SmoothPageIndicator(
          controller: controller.pageController,
          count: 3,
          onDotClicked: controller.dotNavigationClick,
          effect: const ExpandingDotsEffect(
              activeDotColor: TColors.dark, dotHeight: 6),
        ));
  }
}
