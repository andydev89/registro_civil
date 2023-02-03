import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:registro_civil_apk/presentation/widgets_generales/bottom_sheet_widget.dart';
import 'package:registro_civil_apk/presentation/widgets_generales/drawer_widget.dart';
import 'package:registro_civil_apk/presentation/widgets_generales/logo_widget.dart';
import 'package:registro_civil_apk/presentation/widgets_generales/texto_widget.dart';

class ScaffoldHomeWidget extends StatelessWidget {
  const ScaffoldHomeWidget({
    super.key,
    this.slivers = const [],
    this.bottomSheet,
    this.drawer,
    this.contentDrawer,
  });
  final List<Widget> slivers;
  final Widget? bottomSheet;
  final Widget? drawer;
  final List<Widget>? contentDrawer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: drawer ?? DrawerWidget(content: contentDrawer),
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
              ...slivers,
            ],
          ),
        ],
      ),
      bottomSheet: bottomSheet ?? const BottomSheetWidget(),
    );
  }

  SliverAppBar appBar(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      centerTitle: true,
      backgroundColor: Theme.of(context).primaryColor,
      expandedHeight: 130,
      leading: Container(),
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Builder(
                    builder: (context) => IconButton(
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      icon: const Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              LogoWidget(
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
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(30),
        ),
      ),
    );
  }
}
