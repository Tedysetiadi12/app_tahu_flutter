import 'package:app_tahhu/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_untility.dart';


class OnboardingBottom extends StatelessWidget {
  const OnboardingBottom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        right: TSizes.defaulSpace,
        bottom: TDeviceUtils.getBottomNavigationBarHeight(),
        child: ElevatedButton(
            onPressed: () =>OnboardingController.instance.nextPage(),
            style: ElevatedButton.styleFrom(shape: const CircleBorder(), backgroundColor: Colors.black),
            child: const Icon(Iconsax.arrow_right_3)));
  }
}