import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/enum/commons/payment_method_type.dart';
import 'package:registro_civil_apk/data/models/commons/type_of_service_model.dart';
import 'package:registro_civil_apk/data/models/schedule_turn/schedule_turn_model.dart';
import 'package:registro_civil_apk/data/providers/commons/commons_providers.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/pages/schedule_turn/widgets/schedule_date_picker.dart';
import 'package:registro_civil_apk/presentation/pages/schedule_turn/widgets/schedule_time_selector.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_button.dart';
import 'package:registro_civil_apk/presentation/widgets/commons_fetchers/select_element_from_api.dart';
import 'package:registro_civil_apk/presentation/widgets/scaffolds/primary_scaffold.dart';

class ScheduleTurnSecondPage extends StatelessWidget {
  const ScheduleTurnSecondPage({
    super.key,
    required this.paymentMethod,
    required this.typeOfServiceModel,
  });
  final PaymentMethodType paymentMethod;
  final TypeOfServiceModel typeOfServiceModel;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return ScheduleTurnSecondStepModelFormBuilder(
      builder: (context, formModel, child) => PrimaryScaffold(
        title: l10n.obtTurno,
        subtitle: l10n.completeInformacionSolicitada,
        body: Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                SelectElementFromApi(
                  formControl: formModel.provinceControl,
                  label: l10n.provincia,
                  provider: provincesProvider,
                ),
                ReactiveScheduleTurnSecondStepModelFormConsumer(
                  builder: (context, formModel, child) {
                    return Column(
                      children: [
                        SelectElementFromApi(
                          readOnly: !formModel.provinceControl.valid,
                          formControl: formModel.agencyControl,
                          label: l10n.agencia,
                          provider: agenciesByProvinceProvider(
                            provinceId:
                                formModel.provinceControl.value?.id ?? '',
                          ),
                        ),
                        ScheduleDatePicker(
                          readOnly: !formModel.agencyControl.valid,
                          label: l10n.fechaParaTurno,
                          formControl: formModel.dateControl,
                          initialTime: formModel.initialTimeControl,
                          endTime: formModel.endTimeControl,
                          agency: formModel.agencyControl,
                          typeOfServiceModel: typeOfServiceModel,
                          starDate: DateTime.now(),
                        ),
                        Visibility(
                          visible: formModel.dateControl.valid,
                          child: ScheduleTimeSelector(
                            formControl: formModel.timeControl,
                            initialTime: formModel.initialTimeControl?.value ??
                                TimeOfDay.now(),
                            endTime: formModel.endTimeControl?.value ??
                                TimeOfDay.now(),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: ReactiveScheduleTurnSecondStepModelFormConsumer(
          builder: (context, formModel, child) => PrimaryButton(
            title: l10n.ageTurno,
            onPressed: formModel.form.valid
                ? () => context.navigateTo(
                      TurnDetailsRoute(
                        city: formModel.model.province.name,
                        agency: formModel.model.agency.name,
                        typeOfService: typeOfServiceModel,
                        date: formModel.model.date,
                        time: formModel.model.time,
                        paymentMethod: paymentMethod,
                        requestNumber: 12569,
                        totalToPay: 15,
                      ),
                    )
                : null,
          ).symmetricPadding(10, 30),
        ),
      ),
    );
  }
}
