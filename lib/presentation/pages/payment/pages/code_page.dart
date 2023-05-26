import 'package:flutter/material.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/widgets/widgets.dart';

class CodePage extends StatelessWidget {
  const CodePage({
    super.key,
    this.onCodeAccepted,
  });
  final void Function(BuildContext)? onCodeAccepted;

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
                ? () {
                    //TODO verificar el codigo de pago corresponsal
                    onCodeAccepted?.call(context);
                  }
                : null,
          ).symmetricPadding(10, 30),
        ),
      ),
    );
  }
}
