import 'package:flutter/material.dart';

class IconContainerAuthWidget extends StatelessWidget {
  const IconContainerAuthWidget({
    super.key,
    required this.url,
    required this.height,
    required this.width,
  });
  final String url;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    //const size = width;
    const widthHeight = 180.0;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width, vertical: height * 1.1),
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
            width: width,
            height: height,
            fit: BoxFit.cover,
            //color: colorB,
          ),
        ),
      ),
    );
  }
}
