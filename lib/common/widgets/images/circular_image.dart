import 'package:flutter/material.dart';

class TCircularImage extends StatelessWidget {
  final String image;
  final double width;
  final double height;
  final double padding;

  const TCircularImage({
    Key? key,
    required this.image,
    this.width = 50,
    this.height = 50,
    this.padding = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(padding),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(width / 2),
        child: Image.asset(
          image,
          width: width,
          height: height,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
