import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:registro_civil_apk/core/gen/assets.gen.dart';
import 'package:registro_civil_apk/data/riverpod/declaration/auth_riverpod.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/widgets/cards/translucent_card.dart';
import 'package:registro_civil_apk/presentation/pages/auth/widgets/circular_icon_auth.dart';
import 'package:registro_civil_apk/presentation/providers/auth_provider.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_button.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_text_button.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_label.dart';

class Step2Page extends ConsumerWidget {
  const Step2Page({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final cargoData = ref.watch(authStepper2Data);
    return WillPopScope(
      onWillPop: () {
        ref.read(stepperIndexProvider.notifier).index--;
        return Future(() => true);
      },
      child: ScrollableContent(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: PrimaryLabel(
                l10n.capIdenDigBiometrica,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircularIconAuth(
                  padding: 35,
                  bottomLabbel: l10n.rostro,
                  child: Assets.svg.faceId.svg(
                    width: 30,
                    height: 30,
                    fit: BoxFit.cover,
                  ),
                ),
                CircularIconAuth(
                  padding: 15,
                  bottomLabbel: l10n.rosCedula,
                  child: Column(
                    children: [
                      Assets.svg.faceId.svg(
                        width: 30,
                        height: 30,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Assets.svg.cedula2.svg(
                        width: 30,
                        height: 30,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                PrimaryButton(
                  title: cargoData ? l10n.siguiente : l10n.escanear,
                  onPressed: () {
                    //TODO escanear rostro
                  },
                ),
                PrimaryTextButton(
                  title: l10n.salPaso,
                  onPressed: () {
                    ref.read(stepperIndexProvider.notifier).index++;
                    context.navigateTo(const Step3Route());
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
