import 'package:app_tahhu/common/styles/spacing_style.dart';
import 'package:app_tahhu/utils/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../navigatiom_menu.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_string.dart';
import '../../../../utils/constants/sizes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: TSizes.lg),
                  const Image(
                    height: 100,
                    width: 100,
                    image: AssetImage(TImages.lightImages)),
                  const SizedBox(height: TSizes.sm),
                  Text(Ttexts.onBoardingTitle1, style: Theme.of(context).textTheme.headlineMedium),
                  const SizedBox(height: TSizes.sm),
                  Text(Ttexts.onBoardingTitle2, style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),
              Form(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.direct_right),
                        labelText: "Email"
                      ),
                    ),
                    const SizedBox(height: TSizes.spaceBtwInputFields,),

                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.password_check),
                        labelText: "Password",
                        suffixIcon: Icon(Iconsax.eye_slash),
                      ),
                    ),
                    const SizedBox(height: TSizes.spaceBtwInputFields / 2),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(value: true, onChanged: (value){}),
                            const Text("Ingatkan saya")
                          ],
                        ),
                        TextButton(
                          onPressed: (){}, 
                          child: const Text("Lupa Password?")),
                      ],
                    ),
                    const SizedBox(height: TSizes.spaceBtwSections),

                    // Tombol Sign In
                    SizedBox(
                      width: double.infinity, 
                      child: ElevatedButton(
                        onPressed: () => Get.to(()=> const NavigationMenu()), 
                        child: const Text("Sign In"),
                      ),
                    ),
                    const SizedBox(height: TSizes.spaceBtwItems),

                    // Tombol Buat Akun
                    SizedBox(
                      width: double.infinity, 
                      child: OutlinedButton(
                        onPressed: (){}, 
                        child: const Text("Create Account"),
                      ),
                    ),
                    const SizedBox(height: TSizes.spaceBtwSections),

                    // Login dengan Google
                    const Row(
                      children: [
                        Expanded(child: Divider(color: TColors.darkerGrey, thickness: 0.5)),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text("Atau"),
                        ),
                        Expanded(child: Divider(color: TColors.darkerGrey, thickness: 0.5)),
                      ],
                    ),
                    const SizedBox(height: TSizes.spaceBtwItems),

                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                        onPressed: () {}, 
                        icon: Image.asset(TImages.iconGoogle, height: 20), 
                        label: const Text("Login dengan Google"),
                        style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          side: const BorderSide(color: TColors.gray),
                        ),
                      ),
                    ),
                    const SizedBox(height: TSizes.spaceBtwItems),

                    // Teks "Daftarkan Mitra"
                    GestureDetector(
                      onTap: () {
                        print("Navigasi ke halaman mitra");
                      },
                      child: RichText(
                        text: TextSpan(
                          text: "Daftarkan Mitra ",
                          style: Theme.of(context).textTheme.bodyMedium,
                          children: [
                            TextSpan(
                              text: "dengan mengklik berikut",
                              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                color: TColors.primary,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: TSizes.spaceBtwSections),
                  ],
                ),
              )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
