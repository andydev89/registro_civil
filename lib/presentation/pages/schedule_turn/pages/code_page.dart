import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/router/router.dart';
import 'package:registro_civil_apk/presentation/widgets/widgets.dart';

class CodePage extends StatelessWidget {
  const CodePage({
    super.key,
    required this.typeOfService,
    required this.includMe,
    required this.procedureType,
    required this.relatives,
  });
  final TypeServiceModel typeOfService;
  final bool includMe;
  final List<RelativeModel> relatives;
  final ProcedureType procedureType;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return CodeModelFormBuilder(
      builder: (context, formModel, child) => PrimaryScaffold(
        title: l10n.realizarPago,
        subtitle: l10n.introduzcaCodigoBancario,
        body: SingleChildScrollView(
          child: PrimaryReactiveTextField(
            formControl: formModel.codeControl,
            label: l10n.codigo,
          ).horizontalPadding(20),
        ),
        bottomNavigationBar: ReactiveCodeModelFormConsumer(
          builder: (context, formModel, child) => PrimaryButton(
            title: l10n.continuar,
            onPressed: formModel.form.valid
                ? () => context.navigateTo(
                      ScheduleTurnSecondRoute(
                        paymentMethod: PaymentMethodType.correspondentPayment,
                        typeOfService: typeOfService,
                        includMe: includMe,
                        procedureType: procedureType,
                        relatives: relatives,
                      ),
                    )
                : null,
          ).symmetricPadding(10, 30),
        ),
      ),
    );
  }
}
