import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/enum/commons/payment_method_type.dart';
import 'package:registro_civil_apk/data/enum/commons/procedure_type.dart';
import 'package:registro_civil_apk/data/models/commons/type_of_service_model.dart';
import 'package:registro_civil_apk/data/models/schedule_turn/receipt_model.dart';
import 'package:registro_civil_apk/data/models/schedule_turn/schedule_turn_model.dart';
import 'package:registro_civil_apk/data/providers/auth_providers.dart';
import 'package:registro_civil_apk/data/providers/commons/commons_providers.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/pages/schedule_turn/widgets/schedule_date_picker.dart';
import 'package:registro_civil_apk/presentation/pages/schedule_turn/widgets/schedule_time_selector.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_async_button.dart';
import 'package:registro_civil_apk/presentation/widgets/commons_fetchers/select_element_from_api.dart';
import 'package:registro_civil_apk/presentation/widgets/scaffolds/primary_scaffold.dart';

class ScheduleTurnSecondPage extends ConsumerWidget {
  const ScheduleTurnSecondPage({
    super.key,
    required this.paymentMethod,
    required this.typeOfService,
    required this.includMe,
    required this.procedureType,
    required this.relatives,
  });
  final PaymentMethodType paymentMethod;
  final TypeOfServiceModel typeOfService;
  final bool includMe;
  final ProcedureType procedureType;
  final List<RelativeModel> relatives;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                          scheduleId: formModel.scheduleIdControl,
                          initialTime: formModel.initialTimeControl,
                          endTime: formModel.endTimeControl,
                          agency: formModel.agencyControl,
                          typeOfServiceModel: typeOfService,
                          starDate: DateTime.now(),
                        ),
                        Visibility(
                          visible: formModel.dateControl.valid &&
                              formModel.initialTimeControl != null &&
                              formModel.endTimeControl != null,
                          child: ScheduleTimeSelector(
                            formControl: formModel.timeControl,
                            initialTime: formModel.initialTimeControl?.value ??
                                const TimeOfDay(hour: 0, minute: 0),
                            endTime: formModel.endTimeControl?.value ??
                                const TimeOfDay(hour: 0, minute: 0),
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
          builder: (context, formModel, child) => PrimaryAsyncButton(
            title: l10n.ageTurno,
            onPressed: formModel.form.valid
                ? () =>
                    ref.read(meProvider.future).then((value) {
                      context.navigateTo(
                        TurnDetailsRoute(
                          city: formModel.model.province.name,
                          agency: formModel.model.agency.name,
                          typeOfService: typeOfService,
                          date: formModel.model.date,
                          time: formModel.model.time,
                          paymentMethod: paymentMethod,
                          totalToPay: typeOfService.price,
                          receipt: ReceiptModel(
                            paymentType: paymentMethod,
                            time: formModel.model.time,
                            scheduleId: formModel.model.scheduleId,
                            userId: value.id,
                            includeMe: includMe,
                            procedureType: procedureType,
                            relatives: relatives,
                          ),
                        ),
                      );
                    })
                : null,
          ).symmetricPadding(10, 30),
        ),
      ),
    );
  }
}
