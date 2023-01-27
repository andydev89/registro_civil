import 'package:flutter/material.dart';

class BackgroundAuth extends StatelessWidget {
  const BackgroundAuth({
    super.key,
    this.height,
    this.width,
    this.fit,
    required this.child,
  });
  final double? width;
  final double? height;
  final BoxFit? fit;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Image.asset(
          'assets/img/auth/background_auth.png',
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
        Positioned.fill(
          top: 25,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: size.height * .18,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/img/general/logo.png',
                      width: size.width * .7,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: size.width * .85,
                height: size.height * .70,
                decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: const BorderRadius.all(Radius.circular(25)),
                ),
                child: child,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
