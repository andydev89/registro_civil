import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/enum/marriage_celebration/nui_type.dart';
import 'package:registro_civil_apk/data/models/auth/auth.dart';
import 'package:registro_civil_apk/data/models/electronic_signature/electronic_signature.dart';
import 'package:registro_civil_apk/data/models/marriage_celebration/marriage_celebration_model.dart';
import 'package:registro_civil_apk/data/providers/marriage_celebration/marriage_celebration_provider.dart';
import 'package:registro_civil_apk/data/providers/providers.dart';
import 'package:registro_civil_apk/data/utils/validators.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/pages/marriage_celebration/utils/marriage_celebration_util.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_button.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_nui_field.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_text_field.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';

class ElectronicSignaturePersonalPage extends ConsumerWidget {
  const ElectronicSignaturePersonalPage({
    super.key,
    required this.citizen,
    this.operation = Crud.create,
  });
  final CitizenModel citizen;
  final Crud operation;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    return ESignaturePersonalModelFormBuilder(
      builder: (context, form, child) => Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PrimaryText(l10n.nombreApe),
            PrimaryReactiveTextField(
              readOnly: true,
              formControl: form.fullNameControl,
              textCapitalization: TextCapitalization.words,
            ),
            PrimaryText(l10n.correoE),
            PrimaryReactiveTextField(
              readOnly: true,
              formControl: form.emailControl,
            ),
          ],
        ).horizontalPadding(20),
        bottomNavigationBar: ReactiveESignaturePersonalModelFormConsumer(
          builder: (_, form, __) {
            return PrimaryButton(
              title: l10n.siguiente,
              onPressed: operation.isRead
                  ? () {}
                  : null,
            );
          },
        ).symmetricPadding(10, 10),
      ),
    );
  }
}
