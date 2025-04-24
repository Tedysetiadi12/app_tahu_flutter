import 'package:app_tahhu/utils/constants/colors.dart';
import 'package:app_tahhu/utils/constants/sizes.dart';
import 'package:app_tahhu/utils/helpers/helpers_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class IconCircle extends StatelessWidget {
  const IconCircle({
    super.key,
    this.width, this.height, 
    this.size = TSizes.lg, 
    this.color, 
    required this.icon, 
    this.backgroundColor , 
    this.onPressed,
  });

  final double? width, height, size;
  final Color? color;
  final IconData icon;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: backgroundColor != null
          ? backgroundColor! 
          : THelperFunction.isDarkMode(context)
            ? TColors.black.withOpacity(0.9)
            : TColors.textWhite.withOpacity(0.9),
      ),
      child: IconButton(onPressed: onPressed, icon: Icon(icon, color: color, size: size)),
    );
  }
}
