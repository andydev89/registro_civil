import 'package:flutter/material.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/presentation/theme/theme.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_icon_button.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_label.dart';

class CircleAvatarCardWidget extends StatelessWidget {
  const CircleAvatarCardWidget({
    required this.image,
    required this.title,
    this.onPressedCheck,
    this.onPressedView,
    super.key,
  });
  final String title;
  final Image image;
  final void Function()? onPressedCheck;
  final void Function()? onPressedView;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 80),
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            color: Colors.grey.shade200,
            shadows: const <BoxShadow>[
              BoxShadow(
                color: Colors.black26,
                blurRadius: 5,
                spreadRadius: 1,
                offset: Offset(0, 5),
              ),
              BoxShadow(
                color: Color.fromRGBO(217, 210, 200, 0.51),
                offset: Offset(6, 6),
                blurRadius: 16,
              ),
              BoxShadow(
                color: Color.fromRGBO(255, 255, 255, 0.83),
                offset: Offset(-6, -6),
                blurRadius: 16,
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2.5),
                child: PrimaryLabel(
                  title,
                  color: primaryColor,
                  maxlines: 3,
                  fontSize: 20,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
              ).verticalPadding(10),
            ],
          ),
        ),
        AspectRatio(
          aspectRatio: 1,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.circle,
              image: DecorationImage(
                image: image.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
