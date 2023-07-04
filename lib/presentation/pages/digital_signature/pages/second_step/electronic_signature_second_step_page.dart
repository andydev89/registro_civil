import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/core/const/const.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/data/providers/electronic_signature/electronic_signature.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/pages/digital_signature/electronic_signature.dart';
import 'package:registro_civil_apk/presentation/widgets/widgets.dart';

class ElectronicSignatureSecondStepPage extends ConsumerStatefulWidget {
  const ElectronicSignatureSecondStepPage({
    super.key,
    this.operation = Crud.create,
    required this.citizen,
  });

  final Crud operation;
  final CitizenModel citizen;

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
    return ESignaturePersonalBillingModelFormBuilder(
      initState: (context, form) {
        form.fullNameControl?.value =
            '${widget.citizen.nombres} ${widget.citizen.apellidos}';
      },
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
                        // final maxHeight = max(0, constraints.maxHeight);
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
                                  ),
                                  ElectronicSignatureBillingPage(
                                    form: formModel,
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
              return PrimaryButton(
                title: l10n.siguiente,
                onPressed: widget.operation.isRead || formModel.form.valid
                    ? () {
                        ref
                            .read(electronicSignatureProvider.notifier)
                            .setSecondStep(
                              personalBillingModel: formModel.model,
                            );
                        final value = ref.watch(electronicSignatureProvider);
                        print('');
                      }
                    : null,
              ).symmetricPadding(10, 20);
            },
          ),
        );
      },
    );
  }
}
