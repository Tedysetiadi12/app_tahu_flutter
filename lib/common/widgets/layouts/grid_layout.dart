import 'package:app_tahhu/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TGridLayout extends StatelessWidget {
  final int itemCount;
  final double mainAxisExtent;
  final bool isHorizontal;
  final IndexedWidgetBuilder itemBuilder;

  const TGridLayout({
    super.key,
    required this.itemCount,
    required this.mainAxisExtent,
    required this.itemBuilder,
    this.isHorizontal = false, // ✅ Tambahkan parameter untuk mendeteksi mode horizontal
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: isHorizontal ? 1 : 2,
        mainAxisExtent: mainAxisExtent,
        mainAxisSpacing: TSizes.gridViewSpacing,
        crossAxisSpacing: TSizes.gridViewSpacing,
      ),
      itemCount: itemCount, // ✅ Tambahkan itemCount agar tidak error
      itemBuilder: itemBuilder,
    );
  }
}
