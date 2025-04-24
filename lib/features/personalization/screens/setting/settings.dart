import 'package:app_tahhu/common/widgets/appbar/appbar.dart';
import 'package:app_tahhu/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:app_tahhu/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:app_tahhu/common/widgets/images/circular_image.dart';
import 'package:app_tahhu/common/widgets/tiles/setting_menu_tile.dart';
import 'package:app_tahhu/features/personalization/screens/profiles/profile_screen.dart';
import 'package:app_tahhu/utils/constants/colors.dart';
import 'package:app_tahhu/utils/constants/image_string.dart';
import 'package:app_tahhu/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
                child: Column(
              children: [
                TAppBar(
                    title: Text(
                  "Account",
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium
                      ?.copyWith(color: TColors.textWhite),
                )),
                const SizedBox(
                  height: TSizes.sm,
                ),
                ListTile(
                  leading: const TCircularImage(
                      image: TImages.user, width: 50, height: 50, padding: 0),
                  title: Text(
                    'Tedi Setiadi',
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .apply(color: TColors.textWhite),
                  ),
                  subtitle: Text(
                    'tedisetiadi744@gmail.com',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .apply(color: TColors.textWhite),
                  ),
                  trailing: IconButton(
                      onPressed: () => Get.to(() => const ProfileScreen()),
                      icon: const Icon(
                        Iconsax.edit,
                        color: TColors.textWhite,
                      )),
                ),
                const SizedBox(
                  height: TSizes.spaceBtwSections,
                )
              ],
            )),
            Padding(
              padding: EdgeInsets.all(TSizes.defaulSpace),
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start, // Tetap sejajar di kiri
                children: [
                  Row(
                    children: [
                      // Mendorong teks ke kanan
                      Text(
                        "Fitur Utama",
                        style: Theme.of(context).textTheme.headlineSmall!.apply(
                              color: const Color(0xFF000000),
                            ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10), // Beri jarak sebelum menu
                  const SettingMenuTile(
                    icon: Iconsax.safe_home,
                    title: "My Address",
                    subTitle: 'Atur alamat penjemputan minyak',
                  ),
                  const SettingMenuTile(
                    icon: Iconsax.shopping_cart,
                    title: "My Cart",
                    subTitle: "Lihat dan kelola barang di keranjang",
                  ),
                  const SettingMenuTile(
                    icon: Iconsax.bag_tick,
                    title: "My Orders",
                    subTitle: "Cek status pesanan Anda",
                  ),
                  const SettingMenuTile(
                    icon: Iconsax.notification,
                    title: "Notifications",
                    subTitle: "Kelola notifikasi Anda",
                  ),
                  const SettingMenuTile(
                    icon: Iconsax.security_card,
                    title: "Privacy & Security",
                    subTitle: "Kelola privasi dan keamanan akun",
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                        onPressed: () {}, child: const Text("Logout")),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
