import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/data/providers/providers.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/pages/schedule_turn/widgets/widgets.dart';
import 'package:registro_civil_apk/presentation/router/router.dart';
import 'package:registro_civil_apk/presentation/widgets/widgets.dart';

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
  final TypeServiceModel typeOfService;
  final bool includMe;
  final ProcedureType procedureType;
  final List<RelativeModel> relatives;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final now = DateTime.now();
    return ScheduleTurnSecondStepModelFormBuilder(
      builder: (context, formModel, child) => PrimaryScaffold(
        title: '${l10n.obtengaSuTurno}: ${typeOfService.name}',
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
                        TurnDatePicker(
                          readOnly: !formModel.agencyControl.valid,
                          label: l10n.fechaParaTurno,
                          formControl: formModel.dateControl,
                          scheduleId: formModel.scheduleIdControl,
                          initialTime: formModel.initialTimeControl,
                          endTime: formModel.endTimeControl,
                          agency: formModel.agencyControl,
                          typeOfServiceModel: typeOfService,
                          starDate: now,
                        ),
                        Visibility(
                          visible: formModel.dateControl.valid,
                          child: ScheduleTimeSelector(
                            formControl: formModel.timeControl,
                            initialTime: formModel.initialTimeControl?.value,
                            endTime: formModel.endTimeControl?.value,
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
                ? () => ref.read(meProvider.future).then((value) {
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
