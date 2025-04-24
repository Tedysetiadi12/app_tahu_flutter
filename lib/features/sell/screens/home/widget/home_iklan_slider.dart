import 'package:app_tahhu/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:app_tahhu/features/sell/controllers/home_controller.dart';
import 'package:app_tahhu/utils/constants/colors.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/widgets/rounded_image/rounded_image.dart';
import '../../../../../utils/constants/image_string.dart';
import '../../../../../utils/constants/sizes.dart';

class TIklanSlider extends StatelessWidget {
  const TIklanSlider({
    super.key, required this.banners,
  });
 final List<String> banners;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        const SizedBox(height: TSizes.md - 10),
        SizedBox(
          width: double.infinity,
          height: 160,
          child: CarouselSlider(
            options: CarouselOptions(
                onPageChanged: (index, _) =>
                    controller.updatePageIndicator(index),
                viewportFraction: 1),
            items: banners.map((url) => TRoundedImage(width: double.infinity,
                fit: BoxFit.cover,imageUrl: url),).toList(),
          ),
        ),
        const SizedBox(
          height: TSizes.md,
        ),
        Align(
          alignment: Alignment.center,
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min, // Agar tidak melebar
              children: [
                for (int i = 0; i < banners.length; i++)
                  TCircularContainer(
                    width: 20,
                    height: 4,
                    margin: const EdgeInsets.only(right: 10),
                    backgroundColor: controller.CarouselCurrentIndex.value == i
                        ? TColors.primary
                        : const Color.fromARGB(255, 124, 124, 124),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
