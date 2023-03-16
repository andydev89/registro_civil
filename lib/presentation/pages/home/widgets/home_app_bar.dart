import 'package:flutter/material.dart';
import 'package:registro_civil_apk/core/gen/assets.gen.dart';
import 'package:registro_civil_apk/presentation/theme/theme.dart';
import 'package:registro_civil_apk/presentation/widgets/identity/registro_civil_logo.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_label.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(100),
      child: DecoratedBox(
        decoration: ShapeDecoration(
          image: DecorationImage(
            image: Assets.png.backgroundAuth.image().image,
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              blue.withOpacity(0.7),
              BlendMode.srcOver,
            ),
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () => Scaffold.of(context).openDrawer(),
                  child: Assets.svg.menu.svg(),
                ),
                const Flexible(child: RegistroCivilLogo()),
                Badge(
                  label: const PrimaryLabel(
                    '2',
                    fontSize: 10,
                  ),
                  child: Assets.svg.bell.svg(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
