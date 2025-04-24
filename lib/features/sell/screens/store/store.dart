import 'package:app_tahhu/common/widgets/appbar/appbar.dart';
import 'package:app_tahhu/common/widgets/icon_cicle/counter_icon_cart.dart';
import 'package:app_tahhu/common/widgets/layouts/grid_layout.dart';
import 'package:app_tahhu/common/widgets/product/product_cards/product_card_horizontal.dart';
import 'package:app_tahhu/common/widgets/product/product_cards/product_card_vertical.dart';
import 'package:app_tahhu/utils/constants/colors.dart';
import 'package:app_tahhu/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            pinned: true,
            floating: true,
            backgroundColor: Colors.white,
            automaticallyImplyLeading: false,
            title: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 7), // ✅ Tambahkan padding
              child: Text(
                'Penukaran',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            actions: [
              Padding(
                padding:
                    const EdgeInsets.only(right: 20), // ✅ Tambahkan jarak kanan
                child: TCartCounterIcon(
                  onPressed: () {},
                  color: TColors.black,
                ),
              ),
            ],
          ),
        ],
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: TSizes.defaulSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 🔥 Header dengan View All
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Produk Tersedia",
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  TextButton(
                    onPressed: () {
                      // TODO: Aksi untuk melihat semua produk
                    },
                    child: Text(
                      "View All",
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge
                          ?.copyWith(color: TColors.primary),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: TSizes.sm),
              // 🔥 Grid Produk tanpa Overflow
              TGridLayout(
                itemCount: 6,
                isHorizontal: true,
                mainAxisExtent: 140, // ✅ Ukuran vertikal lebih tinggi
                itemBuilder: (_, index) => const TProductCardHorizontal(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
