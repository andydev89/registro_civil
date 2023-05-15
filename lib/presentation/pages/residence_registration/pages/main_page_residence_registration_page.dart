import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dropdown_alert/model/data_alert.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oxidized/oxidized.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/enum/commons/crud_type.dart';
import 'package:registro_civil_apk/data/models/residence_registration/residence_registration_model.dart';
import 'package:registro_civil_apk/data/providers/residence_registration/residence_registration_providers.dart';
import 'package:registro_civil_apk/data/utils/alert_methods.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/pages/residence_registration/utils/residence_registration_utils.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_add_item_row.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_async_button.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_button.dart';
import 'package:registro_civil_apk/presentation/widgets/cards/card_widget.dart';
import 'package:registro_civil_apk/presentation/widgets/dialogs/dialogs.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_text_area_field.dart';
import 'package:registro_civil_apk/presentation/widgets/loading_provider_widget.dart';
import 'package:registro_civil_apk/presentation/widgets/pdf_view_widget.dart';
import 'package:registro_civil_apk/presentation/widgets/scaffolds/primary_scaffold.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';

class MainPageResicenceRegistrationPage extends ConsumerStatefulWidget {
  const MainPageResicenceRegistrationPage({super.key});

  @override
  ConsumerState<MainPageResicenceRegistrationPage> createState() =>
      _MainPageResicenceRegistrationPageState();
}

class _MainPageResicenceRegistrationPageState
    extends ConsumerState<MainPageResicenceRegistrationPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      showAceptAgreement(context);
    });
  }

  @override
  Widget build(BuildContext context) {
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
                        ...formModel.model.residentials.map(
                          (element) => GestureDetector(
                            onTap: () => context.navigateTo(
                              DependentRoute(
                                children: [
                                  MainRouteDependentRoute(
                                    residential: ref
                                        .watch(resRegProvider.notifier)
                                        .residentialFromId(element.myId),
                                  )
                                ],
                              ),
                            ),
                            child: CardWidget<Residential>(
                              rows: {
                                l10n.tipoDeVivienda: element.housingType.toText,
                                l10n.direccion: element.address,
                                l10n.tipoDeResidencia:
                                    element.tenureHousingTypeAgreement.toText,
                                l10n.dependientes:
                                    element.dependents.length.toString(),
                              },
                              actions: {
                                Crud.update: (r) {
                                  ref
                                      .read(residentialPProvider.notifier)
                                      .state = r;
                                  toResidence(context, operation: Crud.update);
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
                                            .removeResidence(element);
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
