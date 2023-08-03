import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/data/providers/providers.dart';
import 'package:registro_civil_apk/data/utils/methods.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/widgets.dart';

class ChangeOfNameFirstStepPage extends ConsumerWidget {
  const ChangeOfNameFirstStepPage({
    super.key,
    required this.typeService,
  });

  final TypeServiceModel typeService;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final user = ref.watch(meProvider);
    var names = <String, String>{};
    return PrimaryScaffold(
      title: l10n.cambioNomInfo,
      body: ChangeOfNameModelFormBuilder(
        initState: (context, formModel) {
          formModel.firstNameControl.statusChanged.listen((event) {
            formModel.resultingNameControl?.updateValue(
              '''${formModel.firstNameControl.value ?? ''} ${formModel.secondNameControl.value ?? ''}''',
            );
          });
          formModel.secondNameControl.statusChanged.listen((event) {
            formModel.resultingNameControl?.updateValue(
              '''${formModel.firstNameControl.value ?? ''} ${formModel.secondNameControl.value ?? ''}''',
            );
          });
        },
        builder: (context, formModel, child) {
          WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
            if (user.value != null) {
              names = splitFirstName(user.value?.firstName ?? '');
              formModel.firstNameControl.updateValue(names['name1']);
              formModel.secondNameControl.updateValue(names['name2']);
            }
          });
          return Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PrimaryReactiveDropdown(
                    label: l10n.tipoDeCambioDeNombre,
                    formControl: formModel.changeOfNameTypeControl,
                    items: ChangeOfNameType.values,
                    onChanged: (value) {
                      switch (
                          value.value ?? ChangeOfNameType.changeOfProperName) {
                        case ChangeOfNameType.disruptOrder:
                          formModel.firstNameControl
                              .updateValue(names['name2']);
                          formModel.secondNameControl
                              .updateValue(names['name1']);
                          break;
                        case ChangeOfNameType.changeOfProperName:
                        case ChangeOfNameType
                              .deleteOneWhenMoreThanTwoAreRecorded:
                        case ChangeOfNameType.increaseWhenItIsWithASingleName:
                          formModel.firstNameControl
                              .updateValue(names['name1']);
                          formModel.secondNameControl
                              .updateValue(names['name2']);
                          break;
                      }
                    },
                  ),
                  SelectElementFromApi(
                    label: l10n.agencia,
                    provider: agenciesProvider,
                    formControl: formModel.agencyControl,
                  ),
                  PrimaryReactiveTextField(
                    textCapitalization: TextCapitalization.characters,
                    maxLength: 20,
                    formControl: formModel.firstNameControl,
                    label: '${l10n.nombre} 1',
                  ),
                  PrimaryReactiveTextField(
                    textCapitalization: TextCapitalization.characters,
                    maxLength: 20,
                    formControl: formModel.secondNameControl,
                    label: '${l10n.nombre} 2',
                  ),
                  PrimaryReactiveTextField(
                    formControl: formModel.resultingNameControl,
                    readOnly: true,
                    label: l10n.nombreResultante,
                  ),
                  PrimaryReactiveFilePicker(
                    formControl: formModel.documentControl,
                    label: l10n.documento,
                    allowedExtensions: const [
                      FileExtension.jpg,
                      FileExtension.jpeg,
                    ],
                  ),
                  PrimaryReactiveTextAreaField(
                    formControl: formModel.observationsControl,
                    label: l10n.observaciones,
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
          );
        },
      ),
    );
  }
}
