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
    return PrimaryReactiveTextField(
      label: isResident ? l10n.numCedula : l10n.pasaporte,
      readOnly: (value == RegisterOwnerType.titular && isResident) ||
          operation.isRead,
      formControl: formModel.identificationControl,
      inputFormatters: isResident
          ? [
              FilteringTextInputFormatter.digitsOnly,
              LengthLimitingTextInputFormatter(10),
            ]
          : null,
      keyboardType: isResident ? TextInputType.number : TextInputType.text,
      suffixIcon:
              value != RegisterOwnerType.titular &&
              isResident &&
              operation.isCreate
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
      suffixHorizontalPadding: isResident ? 0 : 10,
    );
  }
}
