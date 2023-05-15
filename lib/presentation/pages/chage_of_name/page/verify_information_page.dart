import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dropdown_alert/model/data_alert.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/models/change_of_name/change_of_name_model.dart';
import 'package:registro_civil_apk/data/models/offers/offers_model.dart';
import 'package:registro_civil_apk/data/models/services/type_services_model.dart';
import 'package:registro_civil_apk/data/providers/auth_providers.dart';
import 'package:registro_civil_apk/data/providers/cart_provider.dart';
import 'package:registro_civil_apk/data/providers/change_of_name/change_of_name_provider.dart';
import 'package:registro_civil_apk/data/utils/alert_methods.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_async_button.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_button.dart';
import 'package:registro_civil_apk/presentation/widgets/cards/primary_card.dart';
import 'package:registro_civil_apk/presentation/widgets/dialogs/dialogs.dart';
import 'package:registro_civil_apk/presentation/widgets/scaffolds/primary_scaffold.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_title.dart';

class VerifyInformationPage extends ConsumerWidget {
  const VerifyInformationPage({
    super.key,
    required this.changeOfNameModel,
    required this.typeService,
  });
  final ChangeOfNameModel changeOfNameModel;
  final TypeServiceModel typeService;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(meProvider);
    final l10n = context.l10n;
    return PrimaryScaffold(
      title: 'Verificar información',
      body: Expanded(
        child: SingleChildScrollView(
          child: Column(
            children: [
              PrimaryCard(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const PrimaryTitle(
                      title: 'Solicitud de cambio de nombre ecuatoriano',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const PrimaryText(
                      'Estimado',
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
                    const PrimaryText(
                      'Usted se encuentra solicitando el trámite de:',
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
                    const PrimaryText(
                      'La solicitud de nombre que realiza es:',
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
                    const PrimaryText(
                      'Obteniendo como nombre resultante:',
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
                    const PrimaryText(
                      'Observaciones:',
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
                  log(changeOfNameModel.toJson().toString());
                  return ref
                      .read(
                        changeOfNameProvider(
                          changeOfNameModel: changeOfNameModel,
                        ).future,
                      )
                      .then(
                        (value) => value.when(
                          ok: (data) {
                            ref.read(offersProvider.notifier).addOffer(
                                  OffersModel(
                                    simpleCertificate: typeService,
                                  ),
                                );
                            context.popRoute();
                            showOffersDialog(context);
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
