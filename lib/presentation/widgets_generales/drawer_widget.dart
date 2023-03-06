import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:registro_civil_apk/data/enum/routes_enum.dart';
import 'package:registro_civil_apk/data/methods/methods.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/home_page/widgets/button_drawer_home_widget.dart';
import 'package:registro_civil_apk/presentation/widgets_generales/background_widget.dart';
import 'package:registro_civil_apk/presentation/widgets_generales/bottom_sheet_widget.dart';
import 'package:registro_civil_apk/presentation/widgets_generales/logo_widget.dart';
import 'package:registro_civil_apk/presentation/widgets_generales/texto_widget.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    super.key,
    this.backgroundColor,
    required this.content,
    this.beforeConfiguracion = const [],
    this.afterConfiguracion = const [],
    this.enunciadoColor,
    this.color,
  });
  final Color? backgroundColor;
  final List<Widget>? content;
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
      child: Stack(
        children: [
          const Background(),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: content ??
                  [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const LogoWidget(),
                          userData(l10n),
                          const Divider(
                            color: Colors.white,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Column(
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
                                  onPressed: () => irAYBorrarAnterior(context,
                                      ruta: RoutesEnum.loginCedula,),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const BottomSheetWidget(
                      backgroundColor: Colors.transparent,
                    ),
                  ],
            ),
          ),
        ],
      ),
    );
  }

  Row userData(AppLocalizations l10n) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CircleAvatar(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset('assets/img/general/sin_logo.png'),
          ),
        ),
        Expanded(
          child: TextoWidget(
            '${l10n.hola}, Luis Pérez Pérez',
            fontSize: 22,
            fontWeight: FontWeight.bold,
            maxlines: 1,
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ),
        badges.Badge(
          position: badges.BadgePosition.topEnd(top: 4, end: 8),
          badgeContent: const TextoWidget(
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
