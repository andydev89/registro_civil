import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/core/gen/assets.gen.dart';
import 'package:registro_civil_apk/data/enum/routes_enum.dart';
import 'package:registro_civil_apk/data/methods/methods.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/theme/theme.dart';
import 'package:registro_civil_apk/presentation/widgets/background_widget.dart';
import 'package:registro_civil_apk/presentation/pages/home/widgets/logo_bottom_sheet.dart';
import 'package:registro_civil_apk/presentation/widgets/button_drawer_home_widget.dart';
import 'package:registro_civil_apk/presentation/widgets/identity/registro_civil_logo.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_label.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({
    super.key,
    this.backgroundColor,
    this.beforeConfiguracion = const [],
    this.afterConfiguracion = const [],
    this.enunciadoColor,
    this.color,
  });
  final Color? backgroundColor;
  final List<Widget> beforeConfiguracion;
  final List<Widget> afterConfiguracion;
  final Color? enunciadoColor;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Drawer(
      backgroundColor: backgroundColor,
      width: MediaQuery.of(context).size.width,
      child: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Assets.img.general.backgroundAuth.image().image,
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              blue.withOpacity(0.7),
              BlendMode.srcOver,
            ),
          ),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const RegistroCivilLogo().symmetricPadding(20, 40),
                  const DrawerUserData(),
                  const Divider(
                    thickness: 1,
                    color: Colors.white,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ButtonDrawerHomeWidget(
                        icono: Icons.home_outlined,
                        titulo: l10n.inicio,
                        onPressed: () => irAYBorrarAnterior(
                          context,
                          ruta: RoutesEnum.nuestrosServicios,
                        ),
                      ),
                      ButtonDrawerHomeWidget(
                        icono: Icons.person_outline,
                        titulo: l10n.miPerfil,
                        onPressed: () {},
                      ),
                      ButtonDrawerHomeWidget(
                        icono: Icons.description_outlined,
                        titulo: l10n.misTramites,
                        onPressed: () {},
                      ),
                      ButtonDrawerHomeWidget(
                        icono: Icons.calendar_month_outlined,
                        titulo: l10n.misTurnos,
                        onPressed: () {},
                      ),
                      ButtonDrawerHomeWidget(
                        icono: Icons.settings_outlined,
                        titulo: l10n.configuracion,
                        onPressed: () {},
                      ),
                      ButtonDrawerHomeWidget(
                        icono: Icons.help_outline_outlined,
                        titulo: l10n.ayuda,
                        onPressed: () {},
                      ),
                      ButtonDrawerHomeWidget(
                        icono: Icons.logout_outlined,
                        titulo: l10n.cerrSesion,
                        onPressed: () => irAYBorrarAnterior(
                          context,
                          ruta: RoutesEnum.loginCedula,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const LogoBottomSheet(
                backgroundColor: Colors.transparent,
              ),
            ],
          ).horizontalPadding(20),
        ),
      ),
    );
  }
}

class DrawerUserData extends StatelessWidget {
  const DrawerUserData({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const CircleAvatar(
          child: Icon(Icons.person),
        ),
        Expanded(
          child: PrimaryLabel(
            '${l10n.hola}, Luis Pérez Pérez',
            fontSize: 20,
            fontWeight: FontWeight.bold,
            maxlines: 1,
          ).horizontalPadding(3),
        ),
        Badge(
          label: const PrimaryLabel(
            '2',
            fontSize: 10,
          ),
          child: IconButton(
            icon: const Icon(
              Icons.notifications_outlined,
              color: Colors.white,
              size: 35,
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
