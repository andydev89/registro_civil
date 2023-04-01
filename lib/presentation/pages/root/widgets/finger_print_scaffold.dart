import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:registro_civil_apk/core/gen/assets.gen.dart';
import 'package:registro_civil_apk/data/providers/auth_providers.dart';
import 'package:registro_civil_apk/presentation/pages/root/widgets/finger_print_background.dart';
import 'package:registro_civil_apk/presentation/pages/root/widgets/root_app_bar.dart';
import 'package:registro_civil_apk/presentation/pages/root/widgets/root_drawer.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_icon_button.dart';
import 'package:registro_civil_apk/presentation/widgets/dialogs/dialogs.dart';
import 'package:registro_civil_apk/presentation/widgets/identity/logo_bottom_sheet.dart';
import 'package:registro_civil_apk/presentation/widgets/status/show_only_in_loggedin_status.dart';

class FingerPrintScaffold extends StatelessWidget {
  const FingerPrintScaffold({
    super.key,
    required this.body,
    this.persistentFooterButtons,
  });
  final Widget body;
  final List<Widget>? persistentFooterButtons;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        dividerColor: Colors.transparent,
      ),
      child: Scaffold(
        appBar: const RootAppBar(),
        drawer: const RootDrawer(),
        body: Stack(
          children: [
            const FingerPrintBackground(),
            body,
            ShowOnlyInLoggedInStatus(
              child: Padding(
                padding: const EdgeInsets.only(top: 90),
                child: Align(
                  alignment: Alignment.topRight,
                  child: PrimaryIconButton(
                    width: 30,
                    height: 40,
                    icon: Assets.svg.checkDocument.svg(),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(100),
                      ),
                    ),
                    onPressed: () => showOffersDialog(context),
                  ),
                ),
              ),
            ),
          ],
        ),
        persistentFooterButtons: persistentFooterButtons,
        bottomNavigationBar: const LogoBottomSheet(),
      ),
    );
  }
}
