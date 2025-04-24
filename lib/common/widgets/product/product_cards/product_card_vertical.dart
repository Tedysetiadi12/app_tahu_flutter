import 'package:app_tahhu/common/styles/shadows.dart';
import 'package:app_tahhu/common/widgets/icon_cicle/icon_circle.dart';
import 'package:app_tahhu/common/widgets/rounded_container/rounded_container.dart';
import 'package:app_tahhu/common/widgets/rounded_image/rounded_image.dart';
import 'package:app_tahhu/common/widgets/text/product_title_text.dart';
import 'package:app_tahhu/utils/constants/colors.dart';
import 'package:app_tahhu/utils/constants/image_string.dart';
import 'package:app_tahhu/utils/constants/sizes.dart';
import 'package:app_tahhu/utils/helpers/helpers_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return GestureDetector(
      onTap: (){},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? TColors.darkerGrey : TColors.textWhite,
        ),
        child: Column(
          children: [
            // BAGIAN GAMBAR
            TRoundedContainer(
              height: 180,
              backgroundColor: dark ? TColors.dark : TColors.light,
              child: Stack(
                children: [
                  const TRoundedImage(
                    imageUrl: TImages.product1,
                    fit: BoxFit.fitWidth,
                    height: 180,
                    applyImageRadius: true,
                  ),
                  Positioned(
                    top: 12,
                    left: 8,
                    child: TRoundedContainer(
                      radius: TSizes.sm,
                      backgroundColor: TColors.secondary.withOpacity(0.9),
                      padding: const EdgeInsets.symmetric(
                          horizontal: TSizes.sm, vertical: TSizes.xs),
                      child: Text(
                        '10 coins',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: TColors.black),
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 8,
                    right: 8,
                    child: IconCircle(icon: Iconsax.heart5, color: Colors.red),
                  ),
                ],
              ),
            ),

            const SizedBox(height: TSizes.spaceBtwItems / 2),

            // BAGIAN TEKS
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: TSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TProductTitleText(
                    title: "2 Liter Minyak Baru",
                    smallSize: true,
                  ),
                  const SizedBox(height: TSizes.sm),
                  Text(
                    "Tukar dengan 4 Liter Minyak Jelantah",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    softWrap: true,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  const SizedBox(height: TSizes.sm),
                ],
              ),
            ),

            // BAGIAN TOMBOL "TUKAR"
            Padding(
              padding: const EdgeInsets.only(
                  left: TSizes.sm, right: TSizes.sm, bottom: TSizes.sm),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "Tersedia: 5 Unit",
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(color: TColors.gray),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Tambahkan aksi tukar di sini
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: TColors.primary,
                      padding: const EdgeInsets.symmetric(
                          horizontal: TSizes.md, vertical: TSizes.xs),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 3,
                    ),
                    child: Text(
                      "Tukar",
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                          color: TColors.textWhite,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
