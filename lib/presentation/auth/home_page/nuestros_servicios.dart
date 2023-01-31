import 'package:badges/badges.dart' as badges;
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/auth/home_page/widgets/shadows_widget.dart';
import 'package:registro_civil_apk/presentation/auth/widgets/text_form_field_auth.dart';
import 'package:registro_civil_apk/presentation/widgets_generales/texto_widget.dart';

class ServiciosPage extends StatelessWidget {
  const ServiciosPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            bottom: -200,
            right: -150,
            child: Transform.rotate(
              angle: -0.8,
              child: Image.asset(
                'assets/img/general/huella.png',
                height: 500,
                fit: BoxFit.fitHeight,
                color: Colors.grey.shade300,
              ),
            ),
          ),
          CustomScrollView(
            slivers: [
              appBar(context),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20, top: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextoWidget(
                        l10n.nueServicios,
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                sliver: SliverToBoxAdapter(
                  child: TextFormFieldAuth(
                    label: l10n.buscar,
                    colorLabel: Colors.grey,
                    suffixIcon: Icons.search,
                    colorSuffixIcon: Colors.grey,
                    borderColor: Theme.of(context).primaryColor,
                    padding: 15,
                  ),
                ),
              ),
              SliverGrid.count(
                crossAxisCount: 3,
                mainAxisSpacing: 8,
                children: [
                  element(
                    context,
                    titulo: l10n.ageTurnos,
                    icono: Icons.calendar_month,
                  ),
                  element(
                    context,
                    titulo: l10n.segLinea,
                    icono: FluentSystemIcons
                        .ic_fluent_font_space_tracking_in_filled,
                  ),
                  element(
                    context,
                    titulo: l10n.cerFirElectronica,
                    icono: FluentSystemIcons.ic_fluent_signature_filled,
                  ),
                  element(
                    context,
                    titulo: l10n.cedIdentidad,
                    icono: Ionicons.card,
                  ),
                  element(
                    context,
                    titulo: l10n.pasaporte,
                    icono: Icons.airplanemode_active,
                  ),
                  element(
                    context,
                    titulo: l10n.cerSimples,
                    icono: FluentSystemIcons.ic_fluent_document_filled,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      bottomSheet: Container(
        height: 60,
        width: double.maxFinite,
        color: Theme.of(context).primaryColor.withOpacity(0.99),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset('assets/img/general/footer.png'),
            const Padding(
              padding: EdgeInsets.only(right: 15),
              child: TextoWidget(
                'apps.registrocivil.gob.ec',
                color: Colors.blue,
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding element(
    BuildContext context, {
    required String titulo,
    required IconData icono,
  }) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Column(
        children: [
          const SizedBox(height: 10),
          ShadowsWidget(
            child: Icon(
              icono,
              size: 50,
              color: Theme.of(context).primaryColor,
            ),
          ),
          const SizedBox(height: 10),
          TextoWidget(
            titulo,
            color: Theme.of(context).primaryColor,
            fontSize: 15,
            shadows: [
              Shadow(
                blurRadius: 10,
                color: Colors.grey.shade500,
                offset: const Offset(0, 5),
              ),
            ],
          ),
        ],
      ),
    );
  }

  SliverAppBar appBar(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      centerTitle: true,
      backgroundColor: Theme.of(context).primaryColor,
      expandedHeight: 130,
      flexibleSpace: FlexibleSpaceBar(
        background: ClipRRect(
          borderRadius: const BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
          child: Stack(
            children: [
              Image.asset(
                'assets/img/general/background_auth.png',
                width: double.maxFinite,
                fit: BoxFit.fill,
              ),
              Positioned.fill(
                child: Container(
                  width: double.maxFinite,
                  height: double.maxFinite,
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
          ),
        ),
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ],
            ),
            Image.asset(
              'assets/img/general/logo.png',
              width: MediaQuery.of(context).size.width * 0.6,
              height: 100,
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
                ),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
          ],
        ),
      ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(100),
        ),
      ),
    );
  }
}
