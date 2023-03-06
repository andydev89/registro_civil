import 'package:flutter/material.dart';
import 'package:registro_civil_apk/presentation/widgets/background_widget.dart';
import 'package:registro_civil_apk/presentation/widgets/logo_widget.dart';

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
        Background(
          fit: fit,
          width: width,
          height: height,
        ),
        Positioned.fill(
          top: 25,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const LogoWidget(),
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
