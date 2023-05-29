import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dropdown_alert/model/data_alert.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oxidized/oxidized.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:power_ups/extensions/iterable_extension.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/data/providers/providers.dart';
import 'package:registro_civil_apk/data/utils/utils.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/pages/pages.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/widgets.dart';

class MainPageResicenceRegistrationPage extends ConsumerWidget {
  const MainPageResicenceRegistrationPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final user = ref.watch(resRegProvider);
    return PrimaryScaffold(
      title: l10n.registroRes,
      subtitle: l10n.comInfSolicitada,
      body: Expanded(
        child: LoadingProviderWidget(
          async: ref.watch(residenceRegistrationProvider),
          onRefresh: () => ref.refresh(residenceRegistrationProvider),
          onRefreshIndicatot: () => ref.read(
            residenceRegistrationProvider.future,
          ),
          data: (_) {
            return ResidenceRegistrationFormBuilder(
              key: UniqueKey(),
              model: user,
              builder: (context, formModel, _) {
                return Scaffold(
                  backgroundColor: Colors.transparent,
                  body: SingleChildScrollView(
                    child: Column(
                      children: [
                        PrimaryReactiveTextAreaField(
                          prefixIconLabel: Crud.read.toIcon(context),
                          label: l10n.observaciones,
                          formControl: formModel.observationsControl,
                        ),
                        PrimaryAddItemRow(
                          title: l10n.listadoResidencias,
                          onPressed: () => toResidence(context),
                        ),
                        ...user.residentials.mapWithIndex(
                          (index, element) => CardWidget<Residential>(
                            rows: {
                              l10n.tipoDeVivienda: element.housingType.toText,
                              l10n.direccion: element.address.string,
                              l10n.tipoDeResidencia:
                                  element.tenureHousingTypeAgreement.toText,
                              l10n.dependientes: element.dependents.length.toString(),
                            },
                            actions: {
                              Crud.update: (r) {
                                ref
                                    .read(residentialPProvider.notifier)
                                    .state = r;
                                toResidence(
                                  context,
                                  operation: Crud.update,
                                  residenceIndex: index,
                                );
                              },
                              Crud.read: (r) {
                                ref
                                    .read(residentialPProvider.notifier)
                                    .state = r;
                                toResidence(context, operation: Crud.read);
                              },
                              Crud.delete: (r) => showDeleteDialog(
                                    context,
                                    onDelete: () {
                                      ref
                                          .read(resRegProvider.notifier)
                                          .removeResidence(index);
                                      showAlert(
                                        l10n.residenciaEliminadaCor,
                                        TypeAlert.success,
                                      );
                                    },
                                  )
                            },
                            element: element,
                          ),
                        ),
                        PrimaryAddItemRow(
                          title: l10n.listadoDependientes,
                          onPressed: user.residentials.isEmpty
                              ? null
                              : () => toDependent(context),
                        ),
                        ...user.dependents().map(
                              (element) => CardWidget<Dependent>(
                                rows: {
                                  l10n.numCedula: element.nuiDependents,
                                  l10n.nombre: element.name,
                                  l10n.apellidos: element.lastname,
                                  l10n.residencia:
                                      element.address.translate(context),
                                },
                                actions: {
                                  Crud.read: (r) => toDependent(
                                        context,
                                        operation: Crud.read,
                                        dependent: element,
                                      ),
                                  Crud.delete: (r) => showDeleteDialog(
                                        context,
                                        message: l10n.seguroeliminarDependiente,
                                        onDelete: () {
                                          ref
                                              .read(resRegProvider.notifier)
                                              .removeDependent(element);
                                          showAlert(
                                            l10n.dependentEliminadoCor,
                                            TypeAlert.success,
                                          );
                                        },
                                      )
                                },
                                element: element,
                              ),
                            ),
                      ],
                    ).horizontalPadding(20),
                  ),
                  bottomNavigationBar:
                      ReactiveResidenceRegistrationFormConsumer(
                    builder: (context, formModel, snapshot) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          PrimaryAsyncButton(
                            title: l10n.verCertificado,
                            onPressed: () => ref
                                .read(
                                  residenceRegistrationPreviewProvider.notifier,
                                )
                                .certificate()
                                .when(
                                  ok: (document) => showContentDialog(
                                    context,
                                    title: PrimaryText(
                                      l10n.certificado,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    content: SingleChildScrollView(
                                      child: SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.5,
                                        child: PDFViewWidget(
                                          document: document,
                                        ),
                                      ),
                                    ),
                                    actions: (navState) => [
                                      PrimaryButton(
                                        title: l10n.aceptar,
                                        onPressed: () => navState.pop(),
                                      ).symmetricPadding(10, 30)
                                    ],
                                  ),
                                  err: (err) => showAlert(
                                    err.translate(context),
                                    TypeAlert.error,
                                  ),
                                ),
                          ),
                          const SizedBox(height: 8),
                          PrimaryAsyncButton(
                            title: l10n.guardar,
                            onPressed: formModel.form.valid
                                ? () => ref
                                    .read(resRegProvider.notifier)
                                    .save(formModel.model)
                                    .when(
                                      ok: (_) {
                                        showAlert(
                                          l10n.residenciaGuardadaCor,
                                          TypeAlert.success,
                                        );
                                        context.navigateTo(
                                          const HomeRouterRoute(),
                                        );
                                      },
                                      err: (err) => showAlert(
                                        err.translate(context),
                                        TypeAlert.error,
                                      ),
                                    )
                                : null,
                          ),
                        ],
                      );
                    },
                  ).symmetricPadding(10, 30),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
