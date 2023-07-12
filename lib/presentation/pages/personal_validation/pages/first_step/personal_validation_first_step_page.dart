import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dropdown_alert/model/data_alert.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oxidized/oxidized.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/core/const/const.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/data/providers/providers.dart';
import 'package:registro_civil_apk/data/utils/alert_methods.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/pages/personal_validation/personal_validation.dart';
import 'package:registro_civil_apk/presentation/router/router.dart';
import 'package:registro_civil_apk/presentation/widgets/widgets.dart';

class PersonalValidationFirstStepPage extends ConsumerStatefulWidget {
  const PersonalValidationFirstStepPage({
    super.key,
    this.operation = Crud.create,
    required this.typeServiceModel,
  });

  final Crud operation;
  final TypeServiceModel typeServiceModel;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PersonalValidationFirstStepPageState();
}

class _PersonalValidationFirstStepPageState
    extends ConsumerState<PersonalValidationFirstStepPage>
    with TickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 6, vsync: this);
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final tabs = [
      'Personal',
      'Nacimiento',
      'Progenitores',
      'Matrimonio',
      'Union de Hecho',
      'Registro de género'
    ];
    final provider = ref.watch(personalDataByIdProvider);
    final reqProvider = ref.watch(personalValidationRequestsProvider.notifier);

    return PersonalValidationModelFormBuilder(
      model: widget.operation.isCreate ? provider.value?.response : null,
      builder: (context, formModel, child) {
        return PrimaryScaffold(
          title: 'Validación de datos personales',
          subtitle: l10n.completeInformacionSolicitadaCed,
          body: DefaultTabController(
            length: 6,
            child: Expanded(
              child: Column(
                children: [
                  DecoratedBox(
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      color: Colors.grey.shade400,
                    ),
                    child: SizedBox(
                      height: 50,
                      child: TabBar(
                        controller: _tabController,
                        unselectedLabelColor: Colors.grey,
                        isScrollable: true,
                        splashBorderRadius: BorderRadius.circular(1000),
                        indicator: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          gradient: LinearGradient(
                            colors: gradientePrincipal().colors,
                          ),
                        ),
                        tabs: [
                          for (final t in tabs)
                            Tab(
                              child: Text(
                                t,
                                style: const TextStyle(
                                  fontSize: fontSizeDefault,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                  // Expanded(child: content),
                  const SizedBox(
                    height: 16,
                  ),
                  Expanded(
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                              height: constraints.maxHeight,
                              child: TabBarView(
                                controller: _tabController,
                                children: [
                                  PersonalValidationPersonalTabPage(
                                    form: formModel,
                                    operation: widget.operation,
                                    provider: reqProvider,
                                  ),
                                  Container(),
                                  Container(),
                                  Container(),
                                  Container(),
                                  Container(),
                                ],
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: Container(
            child: widget.operation.isCreate
                ? ReactivePersonalValidationModelFormConsumer(
                    builder: (_, formModel, __) {
                      final pr = ref.watch(personalValidationRequestsProvider);
                      return Wrap(
                        children: [
                          PrimaryReactiveCheckBox(
                            formControl: formModel.acceptTermsControl,
                            label: l10n.aceptoTermCondiciones,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          PrimaryAsyncButton(
                            title: l10n.aceptar,
                            onPressed: formModel.form.valid && pr.isNotEmpty
                                ? () async {
                                    final me =
                                        ref.read(meProvider).value ?? MeModel();
                                    final request =
                                        PersonalValidationRequestModel(
                                      me.identification,
                                      pr,
                                    );
                                    await ref
                                        .read(
                                      personalDataProvider(model: request)
                                          .future,
                                    )
                                        .when(
                                      ok: (data) {
                                        showAlert(
                                          'Solicitud Enviada Satisfactoriamente',
                                          TypeAlert.success,
                                        );
                                      },
                                      err: (err) {
                                        showAlert(
                                          err.translate(context),
                                          TypeAlert.error,
                                        );
                                      },
                                    );
                                  }
                                : null,
                          ),
                        ],
                      );
                    },
                  )
                : PrimaryButton(
                    title: l10n.aceptar,
                    onPressed: () => context.navigateTo(
                      ElectronicSignatureMainRoute(
                        typeServiceModel: widget.typeServiceModel,
                      ),
                    ),
                  ),
          ).symmetricPadding(10, 20),
        );
      },
    );
  }
}
