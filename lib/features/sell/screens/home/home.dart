import 'package:app_tahhu/common/widgets/appbar/appbar.dart';
import 'package:app_tahhu/common/widgets/custom_shapes/curved_edges/curved_edges.dart';
import 'package:app_tahhu/common/widgets/layouts/grid_layout.dart';
import 'package:app_tahhu/common/widgets/product/product_cards/product_card_vertical.dart';
import 'package:app_tahhu/features/sell/screens/home/widget/home_iklan_slider.dart';
import 'package:app_tahhu/features/sell/screens/home/widget/saldo_container.dart';
import 'package:app_tahhu/utils/constants/colors.dart';
import 'package:app_tahhu/utils/constants/image_string.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/custom_shapes/containers/circular_container.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import '../../../../common/widgets/rounded_image/rounded_image.dart';
import '../../../../utils/constants/text_string.dart';
import '../../../../utils/constants/sizes.dart';
import 'widget/appbar_container.dart';

class ScreenHomePage extends StatelessWidget {
  const ScreenHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// ======= APP BAR =======
                  const TAppBarUser(),

                  const SizedBox(height: 0), // Jarak antar elemen

                  /// ======= SALDO SECTION =======
                  const TSaldoContainer(),

                  const SizedBox(height: 10), // Jarak antar elemen
                  /// ======= FITURE SECTION =======
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Fitur Utama",
                          style: Theme.of(context).textTheme.bodyMedium!.apply(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              fontWeightDelta: 2),
                        ),
                        const SizedBox(height: 5),
                        LayoutBuilder(
                          builder: (context, constraints) {
                            double spacing =
                                constraints.maxWidth > 600 ? 50 : 20;

                            return Wrap(
                              spacing: spacing, // Mengikuti ukuran device
                              runSpacing: 10, // Jarak antar baris
                              alignment: WrapAlignment.center,
                              children: [
                                _buildFeatureCard(
                                  icon: Iconsax.repeat,
                                  title: "Uco",
                                  color: Colors.green.shade600,
                                  onTap: () => print("Tukar Minyak Diklik"),
                                ),
                                _buildFeatureCard(
                                  icon: Iconsax.book,
                                  title: "Tabungan",
                                  color: Colors.blue.shade600,
                                  onTap: () => print("Catatan Tabungan Diklik"),
                                ),
                                _buildFeatureCard(
                                  icon: Iconsax.calculator,
                                  title: "Kalkulator",
                                  color: Colors.orange.shade600,
                                  onTap: () => print("Kalkulator Diklik"),
                                ),
                                _buildFeatureCard(
                                  icon: Iconsax.video_play,
                                  title: "Hiburan TV",
                                  color: const Color.fromARGB(255, 110, 75, 75),
                                  onTap: () => print("Hiburan TV Diklik"),
                                ),
                              ],
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(TSizes.defaulSpace),
              child: Transform.translate(
                offset: const Offset(0, -25), // ⬅️ Geser ke atas sejauh 10px
                child: Column(
                  children: [
                    const TIklanSlider(
                      banners: [
                        TImages.benner2,
                        TImages.benner1,
                        TImages.benner2,
                      ],
                    ),

                    // 🔥 Judul + Tombol "View All"
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Penukaran", // 🔥 Judul
                          style:
                              Theme.of(context).textTheme.titleLarge!.copyWith(
                                    fontWeight: FontWeight.bold, // Buat tebal
                                  ),
                        ),
                        TextButton(
                          onPressed: () {
                            // TODO: Tambahkan navigasi ke halaman daftar penukaran
                          },
                          child: Text(
                            "View All",
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge!
                                .copyWith(
                                  color: Colors.blue, // 🔥 Warna tombol
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: TSizes.sm),
                    TGridLayout(
                      itemCount: 2,
                      mainAxisExtent: 320, // Ukuran vertikal lebih tinggi
                      itemBuilder: (_, index) => const TProductCardVertical(),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Widget untuk menampilkan Fitur dalam bentuk Card
  Widget _buildFeatureCard({
    required IconData icon,
    required String title,
    required Color color,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 60, // Lebih kecil
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle, // Bulat
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 4,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Center(
              child:
                  Icon(icon, size: 28, color: color), // Ukuran ikon disesuaikan
            ),
          ),
          const SizedBox(height: 4), // Jarak lebih kecil
          Text(
            title,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: TColors.textWhite,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
