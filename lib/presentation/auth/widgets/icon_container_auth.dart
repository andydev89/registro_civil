import 'package:flutter/material.dart';

class IconContainerAuthWidget extends StatelessWidget {
  const IconContainerAuthWidget({
    super.key,
    required this.url,
    this.size = 40.0,
    this.widthHeight = 180.0,
  });
  final String url;
  final double size;
  final double widthHeight;

  @override
  Widget build(BuildContext context) {
    const colorB = Color.fromRGBO(13, 29, 47, 1);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size, vertical: size * 1.2),
      child: Container(
        height: widthHeight,
        width: widthHeight,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: const Color.fromRGBO(204, 204, 204, 1),
            width: 5,
          ),
        ),
        child: Center(
          child: Image.asset(
            url,
            // width: size,
            // height: size,
            fit: BoxFit.cover,
            color: colorB,
          ),
        ),
      ),
    );
  }
}
