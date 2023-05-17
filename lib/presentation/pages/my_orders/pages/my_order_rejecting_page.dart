import 'package:flutter/material.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/widgets/widgets.dart';

class MyOrderRejectingPage extends StatelessWidget {
  const MyOrderRejectingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return RejectInformationFormBuilder(
      builder: (_, form, __) {
        return PrimaryScaffold(
          title: l10n.rechazarInf,
          subtitle: l10n.completeInformacionSolicitada,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PrimaryReactiveDropdown(
                formControl: form.rejectReasonControl,
                items: OrdersRejectingReasonType.values,
                label: l10n.causasRec,
              ).verticalPadding(20),
              PrimaryText(
                l10n.observaciones,
              ),
              PrimaryReactiveTextAreaField<String>(
                formControl: form.rejectDescriptionControl,
                hintText: '${l10n.escriba}...',
              ),
            ],
          ),
          bottomNavigationBar: ReactiveRejectInformationFormConsumer(
            builder: (_, form, __) {
              return PrimaryButton(
                title: l10n.aceptar,
                onPressed: form.form.valid ? () {} : null,
              );
            },
          ),
        );
      },
    );
  }
}
