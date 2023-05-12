import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/enum/change_of_name/change_of_name.dart';
import 'package:registro_civil_apk/data/enum/commons/file_extensions.dart';
import 'package:registro_civil_apk/data/models/change_of_name/change_of_name_model.dart';
import 'package:registro_civil_apk/data/models/services/type_services_model.dart';
import 'package:registro_civil_apk/data/providers/commons/commons_providers.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_button.dart';
import 'package:registro_civil_apk/presentation/widgets/commons_fetchers/select_element_from_api.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_dropdown.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_file_picker.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_text_area_field.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_text_field.dart';
import 'package:registro_civil_apk/presentation/widgets/scaffolds/primary_scaffold.dart';

class ChangeOfNameFirstStepPage extends ConsumerWidget {
  const ChangeOfNameFirstStepPage({
    super.key,
    required this.typeService,
  });
  final TypeServiceModel typeService;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    return PrimaryScaffold(
      title: 'Información para el cambio de nombre',
      body: ChangeOfNameModelFormBuilder(
        initState: (context, formModel) {
          formModel.name1Control.statusChanged.listen((event) {
            formModel.resultingNameControl.updateValue(
              '''${formModel.name1Control.value ?? ''} ${formModel.name2Control.value ?? ''}''',
            );
          });
          formModel.name2Control.statusChanged.listen((event) {
            formModel.resultingNameControl.updateValue(
              '''${formModel.name1Control.value ?? ''} ${formModel.name2Control.value ?? ''}''',
            );
          });
        },
        builder: (context, formModel, child) => Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PrimaryReactiveDropdown(
                  label: 'Tipo de cambio de nombre',
                  formControl: formModel.changeOfNameTypeControl,
                  items: ChangeOfNameType.values,
                ),
                SelectElementFromApi(
                  label: 'Agencia',
                  provider: agenciesProvider,
                  formControl: formModel.agencyControl,
                ),
                PrimaryReactiveTextField(
                  formControl: formModel.name1Control,
                  label: 'Nombre 1',
                ),
                PrimaryReactiveTextField(
                  formControl: formModel.name2Control,
                  label: 'Nombre 2',
                ),
                PrimaryReactiveTextField(
                  formControl: formModel.resultingNameControl,
                  label: 'Nombre resultante',
                ),
                PrimaryReactiveFilePicker(
                  formControl: formModel.documentControl,
                  label: 'Documento',
                  allowedExtensions: const [
                    FileExtension.jpg,
                    FileExtension.jpeg,
                  ],
                ),
                PrimaryReactiveTextAreaField(
                  formControl: formModel.observationsControl,
                  label: 'Observaciones',
                ),
                ReactiveChangeOfNameModelFormConsumer(
                  builder: (context, formModel, child) => PrimaryButton(
                    title: l10n.aceptar,
                    onPressed: formModel.form.valid
                        ? () => context.navigateTo(
                              VerifyInformationRoute(
                                changeOfNameModel: formModel.model,
                                typeService: typeService,
                              ),
                            )
                        : null,
                  ),
                ),
                PrimaryButton(
                  title: l10n.cancelar,
                  onPressed: () => context.popRoute(),
                ).verticalPadding(10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
