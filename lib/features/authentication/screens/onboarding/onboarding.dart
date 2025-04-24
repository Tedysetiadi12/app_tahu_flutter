import 'package:app_tahhu/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:app_tahhu/features/authentication/screens/onboarding/widgets/onboarding_navigation.dart';
import 'package:app_tahhu/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:app_tahhu/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:app_tahhu/features/authentication/screens/onboarding/widgets/onboardong_next_bottom.dart';
import 'package:app_tahhu/utils/constants/colors.dart';
import 'package:app_tahhu/utils/constants/image_string.dart';
import 'package:app_tahhu/utils/constants/sizes.dart';
import 'package:app_tahhu/utils/constants/text_string.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());

    return Scaffold(
      body: Stack(
        children: [
          // PageView dengan controller
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: TImages.onBorading1,
                title: Ttexts.onBoardingTitle1,
                subTilte: Ttexts.onBoardingTitle1,
              ),
              OnBoardingPage(
                image: TImages.onBorading2,
                title: Ttexts.onBoardingTitle2,
                subTilte: Ttexts.onBoardingTitle2,
              ),
              OnBoardingPage(
                image: TImages.onBorading3,
                title: Ttexts.onBoardingTitle3,
                subTilte: Ttexts.onBoardingTitle3,
              ),
            ],
          ),
          // Skip Button
          const OnBoardingSkip(),
          // Dot Navigator
          const OnBoardingNavigator(),
          // Next Button
          const OnboardingBottom(),
        ],
      ),
    );
  }
}
