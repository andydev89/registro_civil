import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dropdown_alert/model/data_alert.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oxidized/oxidized.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/enum/services/services_type.dart';
import 'package:registro_civil_apk/data/enum/simple_certificate/relationship_simple_certificate_enum.dart';
import 'package:registro_civil_apk/data/enum/validators/validations_message_enum.dart';
import 'package:registro_civil_apk/data/models/simple_certificate/simple_certificate_model.dart';
import 'package:registro_civil_apk/data/providers/simple_certificate/simple_certificate_provider.dart';
import 'package:registro_civil_apk/data/utils/alert_methods.dart';
import 'package:registro_civil_apk/data/utils/validators.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_async_button.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_check_box.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_dropdown.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_nui_field.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_text_field.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';

class SimpleCertificateFirstStepFamiliarPage extends ConsumerWidget {
  const SimpleCertificateFirstStepFamiliarPage({
    required this.typeSimpleCertificate,
    super.key,
  });
  final TypeSimpleCertificateEnum typeSimpleCertificate;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    return SimpleCertificateFirstStepFamiliarModelFormBuilder(
      initState: (context, formModel) =>
          formModel.conadisModelForm.conadisControl.updateValue(false),
      builder: (context, formModel, child) {
        final isCanadis = ValueNotifier(
          formModel.conadisModelForm.conadisControl.value ?? false,
        );
        formModel.nuiControl.valueChanges.listen((event) async {
          final success = await validateNuiAsync(event, ref);
          if (success == null) return;
          success
              ? formModel.nuiControl
                  .removeError(ValidationsMessageEnum.invalidDni.toText)
              : formModel.nuiControl
                  .setErrors({ValidationsMessageEnum.invalidDni.toText: true});
        });
        return Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: LayoutBuilder(
              builder: (context, constraints) => SingleChildScrollView(
                child: Container(
                  constraints: BoxConstraints(minHeight: constraints.maxHeight),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      PrimaryText(l10n.numeroCedFam),
                      PrimaryReactiveNuiField(
                        formControl: formModel.nuiControl,
                        hintText: '${l10n.escriba}...',
                      ),
                      Row(
                        children: [
                          Flexible(
                            child: PrimaryReactiveDropdown<
                                RelationshipSimpleCertificateEnum>(
                              formControl: formModel.relationshipControl,
                              items: RelationshipSimpleCertificateEnum.list,
                              label: l10n.parentezco,
                              hintText: '${l10n.seleccione}...',
                            ),
                          ),
                        ],
                      ),
                      PrimaryReactiveCheckBox(
                        formControl: formModel.conadisModelForm.conadisControl,
                        label: l10n.tieneCarConadis,
                        onChanged: (value) =>
                            isCanadis.value = value.value ?? false,
                      ),
                      ValueListenableBuilder<bool>(
                        valueListenable: isCanadis,
                        builder: (_, value, __) {
                          return Visibility(
                            visible: value,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const PrimaryText('No. CONADIS'),
                                PrimaryReactiveTextField(
                                  formControl: formModel
                                      .conadisModelForm.conadisNumberControl,
                                  hintText: '01234567',
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    FilteringTextInputFormatter.digitsOnly,
                                    LengthLimitingTextInputFormatter(8),
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ],
                  ).horizontalPadding(20),
                ),
              ),
            ),
          ),
          bottomNavigationBar:
              ReactiveSimpleCertificateFirstStepFamiliarModelFormConsumer(
            builder: (context, formModel, child) => PrimaryAsyncButton(
              title: l10n.aceptar,
              onPressed: formModel.form.valid
                  ? () => ref
                      .read(simpleCertificateProvider.notifier)
                      .simpleCertificateFamiliar(
                        familiarModel: formModel.model,
                        type: typeSimpleCertificate,
                      )
                      .when(
                        ok: (response) => context.navigateTo(
                          SimpleCertificateSecondStepRoute(
                            simpleCertificateResponse: response,
                          ),
                        ),
                        err: (error) => showAlert(
                          error.translate(context),
                          TypeAlert.error,
                        ),
                      )
                  : null,
            ).symmetricPadding(10, 30),
          ),
        );
      },
    );
  }
}
