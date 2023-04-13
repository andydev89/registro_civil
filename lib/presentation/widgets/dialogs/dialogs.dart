import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/theme/theme.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_button.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/secondary_icon_button.dart';
import 'package:registro_civil_apk/presentation/widgets/cards/translucent_card.dart';
import 'package:registro_civil_apk/presentation/widgets/dialogs/offers_widget.dart';
import 'package:registro_civil_apk/presentation/widgets/dialogs/sliding_dialog.dart';
import 'package:registro_civil_apk/presentation/widgets/g_map.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_title.dart';

Future<T?> showAcceptCancelDialog<T>(
  BuildContext context, {
  required String title,
  required String message,
  void Function()? onAccept,
  void Function()? onCancel,
  bool automaticClose = true,
}) {
  final l10n = context.l10n;
  return showDialog<T?>(
    barrierColor: primaryColor.withOpacity(0.9),
    context: context,
    builder: (context) => Center(
      child: TranslucentCard(
        color: Theme.of(context).dialogBackgroundColor,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            PrimaryTitle(title: title),
            PrimaryText(
              message,
              color: Colors.black,
            ).verticalPadding(40),
            PrimaryButton(
              title: l10n.aceptar,
              onPressed: onAccept == null
                  ? null
                  : () {
                      Navigator.of(context).pop();
                      onAccept.call();
                    },
            ),
            PrimaryButton(
              title: l10n.cancelar,
              onPressed: onCancel == null && !automaticClose
                  ? null
                  : () {
                      if (automaticClose) Navigator.of(context).pop();
                      onCancel?.call();
                    },
            ).verticalPadding(10),
          ],
        ),
      ),
    ),
  );
}

Future<void> showContentDialog(
  BuildContext context, {
  required Widget content,
  Color? backgroundColor,
}) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        content: content,
        backgroundColor:
            backgroundColor ?? Theme.of(context).dialogBackgroundColor,
      );
    },
  );
}

Future<void> showOffersDialog(
  BuildContext context,
) async {
  await showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return SlidingDialog(
        child: (controller) => OffersWidget(
          controller: controller,
        ),
      );
    },
  );
}

Future<void> showMapPickerDialog(
  BuildContext context,
) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return Material(
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
            top: 100,
            bottom: 40,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              SecondaryIconButton(
                onPressed: () => context.popRoute(),
                icon: Icons.arrow_back,
              ),
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: const GMap(),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
