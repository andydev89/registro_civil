import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dropdown_alert/model/data_alert.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oxidized/oxidized.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/core/const/const.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/data/providers/auth/auth.dart';
import 'package:registro_civil_apk/data/providers/electronic_signature/electronic_signature.dart';
import 'package:registro_civil_apk/data/utils/alert_methods.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/pages/digital_signature/electronic_signature.dart';
import 'package:registro_civil_apk/presentation/router/router.dart';
import 'package:registro_civil_apk/presentation/widgets/widgets.dart';

class ElectronicSignatureSecondStepPage extends ConsumerStatefulWidget {
  const ElectronicSignatureSecondStepPage({
    super.key,
    this.operation = Crud.create,
    required this.typeServiceModel,
  });

  final Crud operation;
  final TypeServiceModel typeServiceModel;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ElectronicSignatureSecondStepPageState();
}

class _ElectronicSignatureSecondStepPageState
    extends ConsumerState<ElectronicSignatureSecondStepPage>
    with TickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final me = ref.watch(meProvider).value ?? MeModel();
    final provider = ref.watch(electronicSignatureProvider.notifier);
    return ESignaturePersonalBillingModelFormBuilder(
      model: widget.operation.isCreate
          ? ESignaturePersonalBillingModel.fromMe(me)
          : provider.getSecondStep(me),
      builder: (context, formModel, child) {
        return PrimaryScaffold(
          title: l10n.solFirmaElectronica,
          subtitle: l10n.ingreseInfSol,
          body: DefaultTabController(
            length: 2,
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
                          Tab(
                            child: Text(
                              l10n.firmaContacto,
                              style: const TextStyle(
                                fontSize: fontSizeDefault,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Tab(
                            child: Text(
                              l10n.firmaFacturacion,
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
                                  ElectronicSignaturePersonalPage(
                                    form: formModel,
                                    operation: widget.operation,
                                  ),
                                  ElectronicSignatureBillingPage(
                                    form: formModel,
                                    operation: widget.operation,
                                  ),
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
          bottomNavigationBar:
              ReactiveESignaturePersonalBillingModelFormConsumer(
            builder: (_, formModel, __) {
              return Container(
                child: widget.operation.isCreate ? PrimaryAsyncButton(
                  title: l10n.siguiente,
                  onPressed: widget.operation.isRead || formModel.form.valid
                      ? () async {
                          ref
                              .read(electronicSignatureProvider.notifier)
                              .setSecondStep(
                                personalBillingModel: formModel.model,
                              );
                          final value = ref.watch(electronicSignatureProvider);
                          await ref
                              .read(
                            signatureProvider(
                              model: value,
                            ).future,
                          )
                              .when(
                            ok: (data) {
                              context
                                ..navigateTo(
                                  ElectronicSignatureMainRoute(
                                    typeServiceModel: widget.typeServiceModel,
                                  ),
                                )
                                ..navigateTo(
                                  ChoosePaymentMethodRoute(
                                    transactionCode: data.transactionCode,
                                    service: widget.typeServiceModel,
                                  ),
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
                ): PrimaryButton(
                  title: l10n.aceptar,
                  onPressed: () => context.navigateTo(
                    ElectronicSignatureMainRoute(
                      typeServiceModel: widget.typeServiceModel,
                    ),
                  ),
                ),
              ).symmetricPadding(10, 20);
            },
          ),
        );
      },
    );
  }
}
