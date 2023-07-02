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
import 'package:registro_civil_apk/presentation/widgets/commons_fetchers/commons_fetchers.dart';
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
    final init = operation.isRead;
    var alreadyStarter = false;
    return ESignaturePersonalModelFormBuilder(
      initState: (context, form) {
        form.fullNameControl?.value = '${citizen.nombres} ${citizen.apellidos}';
        // form.emailControl?.value = citizen.;


        /*if (operation.isRead) {
            formModel
              ..idDuplicateProcedureTypeControl.value =
              IdDuplicateProcedureType.values.firstWhere(
                    (element) => element == duplicate.type,
              )
              ..birthDateControl.value = duplicate.birthdate != null
                  ? DateFormat('yyyy-MM-dd').parse(duplicate.birthdate!)
                  : null
              ..nuiControl.value = duplicate.nui;
          }*/
        },
      builder: (context, form, child) => Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PrimaryReactiveTextField(
                readOnly: operation.isRead,
                label: l10n.nombreApe,
                formControl: form.fullNameControl,
                textCapitalization: TextCapitalization.words,
              ),
              PrimaryReactiveTextField(
                readOnly: operation.isRead,
                label: l10n.correoE,
                formControl: form.emailControl,
              ),
              PrimaryReactiveTextField(
                readOnly: operation.isRead,
                label: l10n.telefono,
                formControl: form.phoneControl,
              ),
              PrimaryReactiveTextField(
                readOnly: operation.isRead,
                label: l10n.direccion,
                formControl: form.addressControl,
              ),
              PrimaryReactiveTextField(
                readOnly: operation.isRead,
                label: l10n.codigoPostal,
                formControl: form.postalCodeControl,
              ),
              SelectElementFromApi(
                readOnly: operation.isRead,
                formControl: form.provinceControl,
                label: l10n.provincia,
                init: init && !alreadyStarter,
                /*initialValue: (data) => data?.firstWhere(
                      (element) => element.id == model.province.id,
                ),*/
                provider: provincesProvider,
                onChanged: (p0) {
                  form.cityControl.value = null;
                  alreadyStarter = true;
                },
              ),
              ReactiveESignaturePersonalModelFormConsumer(
                builder: (_, __, ___) {
                  return Column(
                    children: [
                      SelectElementFromApi(
                        init: init && !alreadyStarter,
                        /*initialValue: (data) => data?.firstWhere(
                              (element) => element.id == model.canton.id,
                        ),*/
                        readOnly: !form.provinceControl.valid ||
                            operation.isRead,
                        formControl: form.cityControl,
                        label: l10n.canton,
                        onChanged: (p0) {
                          form.parishControl.value = null;
                          alreadyStarter = true;
                        },
                        provider: LocationByParentProvider(
                          parentId: form.provinceControl.value?.id ?? '',
                        ),
                      ),
                      SelectElementFromApi(
                        init: init && !alreadyStarter,
                        /*initialValue: (data) => data?.firstWhere(
                              (element) => element.id == model.parroquia.id,
                        ),*/
                        readOnly: !form.cityControl.valid ||
                            operation.isRead,
                        onChanged: (p0) => alreadyStarter = true,
                        formControl: form.parishControl,
                        label: l10n.parroquia,
                        provider: LocationByParentProvider(
                          parentId: form.cityControl.value?.id ?? '',
                        ),
                      ),
                    ],
                  );
                },
              ),
            ],
          ).horizontalPadding(20),
        ),
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
