import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dropdown_alert/model/data_alert.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/enum/commons/commons.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/data/providers/providers.dart';
import 'package:registro_civil_apk/data/utils/utils.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/router/router.dart';
import 'package:registro_civil_apk/presentation/widgets/widgets.dart';

class VerifyInformationPage extends ConsumerWidget {
  const VerifyInformationPage({
    super.key,
    required this.changeOfNameModel,
    required this.typeService,
    this.operation = Crud.create,
  });
  final ChangeOfNameModel changeOfNameModel;
  final TypeServiceModel typeService;
  final Crud operation;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(meProvider);
    final l10n = context.l10n;
    return PrimaryScaffold(
      title: l10n.verificarInfo,
      body: Expanded(
        child: SingleChildScrollView(
          child: Column(
            children: [
              PrimaryCard(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PrimaryTitle(
                      title: l10n.solicitudDeCambioDeNombreEcuatoriano,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    PrimaryText(
                      l10n.estimado,
                      textAlign: TextAlign.left,
                    ),
                    PrimaryText(
                      '''${user.asData?.value.firstName ?? ''} ${user.asData?.value.lastName ?? ''}''',
                      fontWeight: FontWeight.bold,
                      textAlign: TextAlign.left,
                    ).verticalPadding(10),
                    const SizedBox(
                      height: 20,
                    ),
                    PrimaryText(
                      '${l10n.ustedSeEncuentraSolicitandoElTramiteDe} :',
                      textAlign: TextAlign.left,
                    ),
                    PrimaryText(
                      changeOfNameModel.changeOfNameType.translate(context),
                      fontWeight: FontWeight.bold,
                      textAlign: TextAlign.left,
                    ).verticalPadding(10),
                    const SizedBox(
                      height: 20,
                    ),
                    PrimaryText(
                      '${l10n.laSolicitudDeNombreQueRealizaEs} :',
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    PrimaryText(
                      '${l10n.nombre} 1: ${changeOfNameModel.firstName}',
                      fontWeight: FontWeight.bold,
                      textAlign: TextAlign.left,
                    ),
                    PrimaryText(
                      '${l10n.nombre} 2: ${changeOfNameModel.secondName}',
                      fontWeight: FontWeight.bold,
                      textAlign: TextAlign.left,
                    ).verticalPadding(10),
                    const SizedBox(
                      height: 20,
                    ),
                    PrimaryText(
                      '${l10n.obteniendoComoNombreResultante} :',
                      textAlign: TextAlign.left,
                    ),
                    PrimaryText(
                      changeOfNameModel.resultingName ?? '',
                      fontWeight: FontWeight.bold,
                      textAlign: TextAlign.left,
                    ).verticalPadding(10),
                    const SizedBox(
                      height: 20,
                    ),
                    PrimaryText(
                      '${l10n.observaciones} :',
                      textAlign: TextAlign.left,
                    ),
                    PrimaryText(
                      changeOfNameModel.observations ?? '',
                      fontWeight: FontWeight.bold,
                      textAlign: TextAlign.left,
                    ).verticalPadding(10),
                  ],
                ),
              ).verticalPadding(10),
              PrimaryAsyncButton(
                title: l10n.aceptar,
                onPressed: () {
                  return ref
                      .read(
                        changeOfNameProvider(
                          changeOfNameModel: changeOfNameModel,
                        ).future,
                      )
                      .then(
                        (value) => value.when(
                          ok: (data) {
                            context.navigateTo(
                              ChoosePaymentMethodRoute(
                                service: typeService,
                                transactionCode: data.transactionCode,
                              ),
                            );
                          },
                          err: (error) => showAlert(
                            error.translate(context),
                            TypeAlert.error,
                          ),
                        ),
                      );
                },
              ),
              PrimaryButton(
                title: l10n.cancelar,
                onPressed: () => context.popRoute(),
              ).verticalPadding(10),
            ],
          ),
        ),
      ),
    );
  }
}
