import 'package:flutter/material.dart';
import 'package:registro_civil_apk/core/gen/assets.gen.dart';

class Background extends StatelessWidget {
  const Background({
    super.key,
    this.fit,
    this.width,
    this.height,
  });
  final double? width;
  final double? height;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Assets.png.backgroundAuth.image(
          width: width ?? size.width,
          height: height ?? size.height,
          fit: fit ?? BoxFit.cover,
        ),
        Positioned(
          left: 0,
          top: 0,
          child: Container(
            width: width ?? size.width,
            height: height ?? size.height,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.center,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(13, 29, 47, 0.8),
                  Color.fromRGBO(49, 125, 220, 0.536),
                  Color.fromRGBO(29, 71, 123, 0.683675),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
