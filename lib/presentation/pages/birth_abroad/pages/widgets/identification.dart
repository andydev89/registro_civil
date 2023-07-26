import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dropdown_alert/model/data_alert.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oxidized/oxidized.dart';
import 'package:registro_civil_apk/core/gen/assets.gen.dart';
import 'package:registro_civil_apk/data/enum/birth_abroad/birth_abroad.dart';
import 'package:registro_civil_apk/data/enum/commons/commons.dart';
import 'package:registro_civil_apk/data/models/auth/auth.dart';
import 'package:registro_civil_apk/data/models/birth_abroad/birth_abroad.dart';
import 'package:registro_civil_apk/data/providers/auth/auth.dart';
import 'package:registro_civil_apk/data/utils/utils.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/widgets/widgets.dart';

class IdentificationWidget extends StatelessWidget {
  const IdentificationWidget({
    super.key,
    required this.isResident,
    required this.ref,
    required this.value,
    required this.formModel,
    required this.operation,
  });

  final bool isResident;
  final WidgetRef ref;
  final RegisterOwnerType? value;
  final RegisterOwnerSubModelForm formModel;
  final Crud operation;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Column(
      children: [
        if (isResident)
          PrimaryReactiveTextField(
            label: l10n.numCedula,
            readOnly: value == RegisterOwnerType.attorney,
            formControl: formModel.identificationControl,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
              LengthLimitingTextInputFormatter(10),
            ],
            keyboardType: TextInputType.number,
            suffixIcon: value != null && value != RegisterOwnerType.attorney
                ? PrimaryAsyncIconButton(
                    icon: Assets.svg.starCheck.svg(
                      width: 20,
                      height: 20,
                    ),
                    onPressed: () => ref
                        .read(
                          registerValidateCitizenProvider(
// ignore: provider_parameters
                            NuiModel(
                              nui: formModel.identificationControl!.value!,
                            ),
                          ).future,
                        )
                        .when(
                          ok: (citizen) {
                            var fullName = '';
                            if (citizen.nombres.isEmpty ||
                                citizen.apellidos.isEmpty) {
                              final names = findNames(
                                citizen.nombre,
                              );
                              fullName = '${names['firstName'] ?? ''} '
                                  '${names['lastName'] ?? ''}';
                            } else {
                              fullName = '${citizen.nombres} '
                                  '${citizen.apellidos}';
                            }
                            formModel.nameControl?.updateValue(fullName);
                          },
                          err: (error) => showAlert(
                            error.translate(context),
                            TypeAlert.error,
                          ),
                        ),
                  )
                : null,
            suffixHorizontalPadding: 0,
          )
        else
          PrimaryReactiveTextField(
            label: l10n.pasaporte,
            readOnly: operation.isRead,
            formControl: formModel.passportControl,
            inputFormatters: [
              LengthLimitingTextInputFormatter(10),
            ],
          ),
      ],
    );
  }
}
