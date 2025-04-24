import 'package:app_tahhu/common/widgets/appbar/appbar.dart';
import 'package:app_tahhu/common/widgets/images/circular_image.dart';
import 'package:app_tahhu/features/personalization/screens/profiles/widget/profile_menu.dart';
import 'package:app_tahhu/utils/constants/image_string.dart';
import 'package:app_tahhu/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        showBackArrow: true,
        title: Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaulSpace),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const TCircularImage(
                      image: TImages.user,
                      width: 80,
                      height: 80,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text("Change Profile Picture"))
                  ],
                ),
              ),
              const SizedBox(height: TSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              Row(
                children: [
                  // Mendorong teks ke kanan
                  Text(
                    "Profile Infomasi",
                    style: Theme.of(context).textTheme.headlineSmall!.apply(
                          color: const Color(0xFF000000),
                        ),
                  ),
                ],
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              TProfileMenu(
                title: 'Nama',
                value: 'Tedi Setiadi',
                onPressed: () {},
              ),
              TProfileMenu(
                title: 'Email',
                value: 'tedisetiadi744@gmail.com',
                onPressed: () {},
              ),
              TProfileMenu(
                title: 'Nama',
                value: 'Tedi Setiadi',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
