import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dropdown_alert/model/data_alert.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:oxidized/oxidized.dart';
import 'package:registro_civil_apk/data/models/auth/auth_response.dart';
import 'package:registro_civil_apk/data/models/auth/register_model.dart';
import 'package:registro_civil_apk/data/providers/auth_providers.dart';
import 'package:registro_civil_apk/data/utils/alert_methods.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/providers/auth_provider.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_async_button.dart';
import 'package:registro_civil_apk/presentation/widgets/cards/translucent_card.dart';
import 'package:registro_civil_apk/presentation/widgets/commons_fetchers/select_element_from_api.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_email_field.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_text_field.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';

class Step3Page extends ConsumerWidget {
  const Step3Page({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final citizen = ref.watch(citizenProvider);
    return WillPopScope(
      onWillPop: () {
        ref.read(stepperIndexProvider.notifier).index--;
        return Future(() => true);
      },
      child: ScrollableContent(
        child: EnterDataModelFormBuilder(
          model: EnterDataModel(
            nui: citizen.nui,
            firstName: citizen.firstName,
            lastName: citizen.lastName,
          ),
          builder: (_, form, __) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    PrimaryText(
                      l10n.ingreseDatos,
                      color: Colors.white,
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        PrimaryText(
                          '${l10n.nombre}: ${form.model.firstName}'
                          ' ${form.model.lastName}',
                          color: Colors.white,
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    PrimaryReactiveEmailField(
                      prefixIcon: Icon(
                        Icons.alternate_email,
                        color: Theme.of(context).primaryColor,
                      ),
                      formControl: form.emailControl,
                      ligth: true,
                      hintText: l10n.correoE,
                    ),
                    const SizedBox(height: 20),
                    PrimaryReactiveTextField(
                      prefixIcon: Icon(
                        Icons.phone_android,
                        color: Theme.of(context).primaryColor,
                      ),
                      ligth: true,
                      formControl: form.phoneControl,
                      hintText: l10n.telefonoCel,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(10),
                      ],
                    ),
                    const SizedBox(height: 20),
                    SelectElementFromApi(
                      formControl: form.telephoneOperatorControl,
                      provider: operatorsProvider,
                      light: true,
                      prefixIcon: Icon(
                        Icons.phone_android,
                        color: Theme.of(context).primaryColor,
                      ),
                      hintText: l10n.operador,
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                ReactiveEnterDataModelFormConsumer(
                  builder: (_, form, __) {
                    return PrimaryAsyncButton(
                      title: l10n.verificar,
                      onPressed: form.form.valid
                          ? () => ref
                              .read(registerDataProvider.notifier)
                              .registerData(form.model)
                              .when(
                                ok: (_) {
                                  ref
                                      .read(stepperIndexProvider.notifier)
                                      .index++;
                                  context.navigateTo(const Step4Route());
                                },
                                err: (error) => showAlert(
                                    error.translate(context), TypeAlert.error),
                              )
                          : null,
                    );
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
