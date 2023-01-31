import 'package:flutter/material.dart';

class IconContainerAuthWidget extends StatelessWidget {
  const IconContainerAuthWidget({
    super.key,
    required this.url,
  });
  final String url;

  @override
  Widget build(BuildContext context) {
    const size = 40.0;
    const colorB = Color.fromRGBO(13, 29, 47, 1);
    const widthHeight = 180.0;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: size,vertical: size*1.5),
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
            width: size,
            height: size,
            fit: BoxFit.cover,
            color: colorB,
          ),
        ),
      ),
    );
  }
}
