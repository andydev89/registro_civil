import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/enum/schedule_turn/payment_method_type.dart';
import 'package:registro_civil_apk/data/models/payment/code_model.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_button.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_text_field.dart';
import 'package:registro_civil_apk/presentation/widgets/scaffolds/primary_scaffold.dart';

class CodePage extends StatelessWidget {
  const CodePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return CodeModelFormBuilder(
      builder: (context, formModel, child) => PrimaryScaffold(
        title: l10n.realizarPago,
        subtitle: l10n.introduzcaCodigoBancario,
        body: Center(
          child: PrimaryReactiveTextField(
            formControl: formModel.codeControl,
            label: l10n.codigo,
          ).symmetricPadding(40, 40),
        ),
        bottomNavigationBar: ReactiveCodeModelFormConsumer(
          builder: (context, formModel, child) => PrimaryButton(
            title: l10n.continuar,
            onPressed: formModel.form.valid
                ? () => context.navigateTo(
                      ScheduleTurnSecondRoute(
                        paymentMethod: PaymentMethodType.correspondentPayment,
                      ),
                    )
                : null,
          ).symmetricPadding(10, 30),
        ),
      ),
    );
  }
}
