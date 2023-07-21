import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/enum/birth_abroad/birth_abroad.dart';
import 'package:registro_civil_apk/data/enum/commons/commons.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/data/providers/birth_abroad/birth_abroad.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/router/router.dart';
import 'package:registro_civil_apk/presentation/widgets/widgets.dart';

class BirthAbroadSecondStepPage extends ConsumerWidget {
  const BirthAbroadSecondStepPage({
    super.key,
    required this.typeServiceModel,
    required this.registerOwnerType,
    this.operation = Crud.create,
  });

  final TypeServiceModel typeServiceModel;
  final Crud operation;
  final RegisterOwnerType registerOwnerType;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    return DocumentsSubModelFormBuilder(
      initState: (context, formModel) {
        formModel.registerOwnerTypeControl.updateValue(registerOwnerType);
      },
      builder: (context, formModel, child) {
        final ownerTypeNotifier = ValueNotifier(
          formModel.registerOwnerTypeControl.value,
        );
        return PrimaryScaffold(
          title: l10n.registroNacExt,
          subtitle: l10n.completeInformacionSolicitada,
          body: Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PrimaryReactiveFilePicker<Certificate>(
                    label: l10n.certificadoNacimiento,
                    formControl: formModel.birthCertificateControl,
                    onRemove: () => formModel.birthCertificateControl?.reset(),
                    onFileSelected: (
                      document,
                      p0,
                      name,
                    ) {
                      formModel.birthCertificateControl
                          ?.updateValue(Certificate(name: name, file: p0));
                    },
                  ),
                  PrimaryReactiveFilePicker<Certificate>(
                    label: l10n.cedulaNacimiento,
                    formControl: formModel.identityControl,
                    onRemove: () => formModel.identityControl?.reset(),
                    onFileSelected: (
                      document,
                      p0,
                      name,
                    ) {
                      formModel.identityControl
                          ?.updateValue(Certificate(name: name, file: p0));
                    },
                  ),
                  ValueListenableBuilder<RegisterOwnerType?>(
                    valueListenable: ownerTypeNotifier,
                    builder: (_, value, __) {
                      return Visibility(
                        visible:
                            value == RegisterOwnerType.attorney,
                        child: PrimaryReactiveFilePicker<Certificate>(
                          label: l10n.poderEspNac,
                          formControl: formModel.powerOfAttorneyControl,
                          onRemove: () =>
                              formModel.powerOfAttorneyControl?.reset(),
                          onFileSelected: (
                            document,
                            p0,
                            name,
                          ) {
                            formModel.powerOfAttorneyControl?.updateValue(
                                Certificate(name: name, file: p0));
                          },
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: ReactiveDocumentsSubModelFormConsumer(
            builder: (_, formModel, __) => PrimaryButton(
              title: l10n.siguiente,
              onPressed: formModel.form.valid
                  ? () {
                      ref.read(birthAbroadProvider.notifier).setSecondStep(
                            documents: formModel.model,
                          );
                      context.navigateTo(
                        BirthAbroadThirdStepRoute(
                          typeServiceModel: typeServiceModel,
                          operation: operation,
                        ),
                      );
                    }
                  : null,
            ).symmetricPadding(10, 10),
          ),
        );
      },
    );
  }
}
