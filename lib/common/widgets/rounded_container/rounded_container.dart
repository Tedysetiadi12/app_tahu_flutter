import 'package:app_tahhu/utils/constants/colors.dart';
import 'package:app_tahhu/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';


class TRoundedContainer extends StatelessWidget {
  const TRoundedContainer({super.key, 
  this.width, 
  this.height, 
  this.radius = TSizes.radiusLg, 
  this.child,  
  this.showBoerder = false,  
  this.borderColor = TColors.borderPrimary, 
  this.backgroundColor = TColors.textWhite, 
  this.padding, 
  this.margin
  });

  final double? width;
  final double? height;
  final double radius;
  final Widget? child;
  final bool showBoerder;
  final Color borderColor;
  final Color backgroundColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
        border: showBoerder ? Border.all(color: borderColor) : null
      ),
      child: child,
    );
  }
}