import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_untility.dart';
import '../../../../../utils/helpers/helpers_function.dart';



class OnBoardingPage extends StatelessWidget {
  
  const OnBoardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subTilte,
  });

  final String image, title, subTilte;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(TSizes.defaulSpace),
      child: Column(
        children: [
          Image(
            width: THelperFunction.screenHeight() * 0.8,
            height: THelperFunction.screenHeight() * 0.6,
            image: AssetImage(image),
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: TSizes.spaceBtwItems),
          Text(
            subTilte,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
