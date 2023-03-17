import 'package:flutter/material.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_icon_button.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';

class CircleAvatarCardWidget extends StatelessWidget {
  const CircleAvatarCardWidget({
    required this.image,
    required this.title,
    this.onPressedCheck,
    this.onPressedView,
    super.key,
  });
  final Widget Function(double) image;
  final String title;
  final void Function()? onPressedCheck;
  final void Function()? onPressedView;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final radius = size.width * 0.9;
    return Stack(
      children: [
        Positioned(
          top: -size.height * 0.1,
          left: 0,
          right: 0,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: Card(
              color: const Color.fromRGBO(245, 245, 245, 1),
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
              child: Container(
                padding: EdgeInsets.only(top: size.height * 0.25),
                height: size.height * 0.4,
                width: size.width * 0.7,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      child: PrimaryText(
                        title,
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          PrimaryIconButton(
                            width: 55,
                            height: 55,
                            icon: const Icon(
                              Icons.check_circle,
                              color: Colors.white,
                            ),
                            onPressed: onPressedCheck,
                          ),
                          PrimaryIconButton(
                            width: 55,
                            height: 55,
                            icon: const Icon(
                              Icons.remove_red_eye,
                              color: Colors.white,
                            ),
                            onPressed: onPressedView,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: -radius * 0.3,
          left: 0,
          right: 0,
          child: Container(
            width: size.width * 0.8,
            decoration: const BoxDecoration(shape: BoxShape.circle),
            child: image.call(size.width*0.8),
          ),
        ),
      ],
    );
  }
}
