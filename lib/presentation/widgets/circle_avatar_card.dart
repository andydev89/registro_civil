import 'package:flutter/material.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_icon_button.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';

class CircleAvatarCardWidget extends StatelessWidget {
  const CircleAvatarCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final radius = size.width * 0.5;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Stack(
            children: [
              Positioned(
                top: radius,
                left: 0,
                right: 0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Card(
                    color: const Color.fromRGBO(245, 245, 245, 1),
                    elevation: 5,
                    child: Container(
                      padding: EdgeInsets.only(top: size.height * 0.25),
                      color: Colors.amber,
                      height: size.height * 0.6,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 4),
                            child: PrimaryText(
                              'Certificado de nacimiento',
                              fontSize: 25,
                              color: Colors.black,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                PrimaryIconButton(
                                  width: 55,
                                  height: 55,
                                  icon: Icon(
                                    Icons.check_circle,
                                    color: Colors.white,
                                  ),
                                ),
                                PrimaryIconButton(
                                  icon: Icon(
                                    Icons.remove_red_eye,
                                    color: Colors.white,
                                  ),
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
                top: 20,
                left: 0,
                right: 0,
                child: CircleAvatar(
                  radius: size.width * 0.4,
                  backgroundColor: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
