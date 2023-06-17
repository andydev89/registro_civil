import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/core/gen/assets.gen.dart';
import 'package:registro_civil_apk/data/enum/commons/agreements_type.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/theme/theme.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_button.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/secondary_icon_button.dart';
import 'package:registro_civil_apk/presentation/widgets/cards/translucent_card.dart';
import 'package:registro_civil_apk/presentation/widgets/dialogs/offers_widget.dart';
import 'package:registro_civil_apk/presentation/widgets/dialogs/sliding_dialog.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_check_box.dart';
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
  List<Widget> Function(NavigatorState)? actions,
  Widget? title,
}) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        title: title,
        content: content,
        backgroundColor:
            backgroundColor ?? Theme.of(context).dialogBackgroundColor,
        actions: actions?.call(Navigator.of(context)),
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
  Future<void> Function(LatLng latLng)? onPicked, {
  bool automaticClose = false,
}) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          top: 100,
          bottom: 40,
        ),
        child: Material(
          color: Colors.transparent,
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
                  child: GMap(
                    onPicked: (latLng) {
                      onPicked?.call(latLng).then(
                        (value) {
                          if (automaticClose) {
                            context.popRoute();
                          }
                        },
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ).withRevealAnimation;
    },
  );
}

// crear un delete dialog con el delete en rojo
Future<void> showDeleteDialog(
  BuildContext context, {
  String? title,
  String? message,
  String? deleteText,
  String? cancelText,
  required void Function() onDelete,
}) {
  final l10n = context.l10n;
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        title: Row(
          children: [
            Assets.svg.error.svg(width: 24),
            const SizedBox(width: 10),
            PrimaryTitle(title: title ?? l10n.eliminar),
          ],
        ),
        content: PrimaryText(message ?? l10n.seguroeliminarresidence),
        actions: [
          Column(
            children: [
              PrimaryButton(
                onPressed: () {
                  context.popRoute();
                  onDelete.call();
                },
                title: deleteText ?? l10n.eliminar,
                backgroundColor: Colors.red,
              ),
              const SizedBox(height: 10),
              PrimaryButton(
                onPressed: () => context.popRoute(),
                title: cancelText ?? l10n.cancelar,
              ),
            ],
          ).symmetricPadding(10, 30),
        ],
      );
    },
  );
}

Future<bool?> showAceptAgreement(
  BuildContext context, {
  required AgreementType agreementType,
}) async {
  var condition = false;
  final l10n = context.l10n;

  return showDialog<bool>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return TermAndUseConditionsModelFormBuilder(
        builder: (context, formModel, _) {
          return WillPopScope(
            onWillPop: () {
              if (condition) {
                return Future.value(true);
              } else {
                return Future.value(false);
              }
            },
            child: AlertDialog(
              title: Row(
                children: [
                  Assets.svg.error.svg(width: 24, height: 24),
                  const SizedBox(width: 10),
                  PrimaryText(
                    l10n.advertencia,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(
                    child: SingleChildScrollView(
                      child: PrimaryText(
                        agreementType.translate(context),
                        overFlow: TextOverflow.visible,
                        textAlign: TextAlign.justify,
                        maxLines: null,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  PrimaryReactiveCheckBox(
                    label: l10n.aceptoAdv,
                    formControl: formModel.acceptControl,
                    overFlow: TextOverflow.visible,
                    maxLines: 5,
                  ),
                ],
              ),
              actions: [
                Column(
                  children: [
                    ReactiveTermAndUseConditionsModelFormConsumer(
                      builder: (_, formModel, __) {
                        return PrimaryButton(
                          title: l10n.siguiente,
                          onPressed: formModel.form.valid
                              ? () {
                                  condition = true;
                                  context.popRoute(true);
                                }
                              : null,
                        );
                      },
                    ),
                    const SizedBox(height: 10),
                    PrimaryButton(
                      title: l10n.cancelar,
                      onPressed: () {
                        condition = true;
                        context.popRoute(false);
                      },
                    ),
                  ],
                ).symmetricPadding(10, 30)
              ],
            ),
          );
        },
      );
    },
  );
}
