import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dropdown_alert/model/data_alert.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oxidized/oxidized.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/extensions/extensions.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/data/providers/providers.dart';
import 'package:registro_civil_apk/data/utils/utils.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/router/router.dart';
import 'package:registro_civil_apk/presentation/widgets/widgets.dart';

import '../widgets/first_step_form.dart';

class CedulacionExtPvezMainPage extends ConsumerWidget {
  const CedulacionExtPvezMainPage({
    super.key,
    required this.typeServiceModel,
  });

  final TypeServiceModel typeServiceModel;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final provider = ref.watch(ValidarvisaProvider.);
    final l10n = context.l10n;

    return PrimaryScaffold(
      title: typeServiceModel.name,
      body: CedulacionExtpVModelFormBuilder(
        builder: (context, formModel, child) => Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //PrimaryText('numero de Visa'),
                    PrimaryReactiveNuiField(
                      label: 'numero de visa', //l10n.numCedula,
                      formControl: formModel.visaControl,
                      init: true,
                      readOnly: false,
                    ),
                    // PrimaryText(l10n.correoE),
                    PrimaryReactiveTextField(
                      label: 'correo electronico',
                      readOnly: false,
                      formControl: formModel.emailControl,
                      textCapitalization: TextCapitalization.words,
                      /* formControl: FormControl<dynamic>(
            validators: [
              Validators.composeOR([
                Validators.email,
                // Validators.pattern(phonePattern),
              ])
            ],
          ),*/
                    ),
                  ],
                ).verticalPadding(10).horizontalPadding(20),
                ReactiveCedulacionExtpVModelFormConsumer(
                  builder: (_, formModel, __) => PrimaryButton(
                    title: l10n.validar,
                    onPressed: formModel.form.valid
                        ? () => ref
                            .read(validarvisaProvider)
                            .validarvisa(formModel.model)
                            .when(
                                ok: (value) => print(value.toJson().toString()),
                                err: (error) {
                                  showAlert(
                                    error.code.toString(),
                                    TypeAlert.error,
                                  );
                                })
                        : () => print(formModel.form.valid.toString()),
                  ).verticalPadding(10).horizontalPadding(20),
                ),
                PrimaryButton(
                  title: l10n.cancelar,
                  onPressed: () => context.popRoute(),
                ).verticalPadding(10).horizontalPadding(20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
