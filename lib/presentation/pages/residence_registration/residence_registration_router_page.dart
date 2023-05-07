import 'package:flutter/material.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/models/residence_registration/residence_registration_model.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/pages/residence_registration/widgets/list_of.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_async_button.dart';
import 'package:registro_civil_apk/presentation/widgets/scaffolds/primary_scaffold.dart';

class ResidenceRegistrationRouterPage extends StatefulWidget {
  const ResidenceRegistrationRouterPage({super.key});

  @override
  State<ResidenceRegistrationRouterPage> createState() =>
      _ResidenceRegistrationRouterPageState();
}

class _ResidenceRegistrationRouterPageState
    extends State<ResidenceRegistrationRouterPage> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // TODO(jang): show initial modal
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return ResidenceRegistrationFormBuilder(
      builder: (context, formModel, child) => PrimaryScaffold(
        title: l10n.registroRes,
        subtitle: l10n.comInfSolicitada,
        body: Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Expanded(
                child: ListOf(
                  icon: Icon(Icons.home),
                  title: 'Listado de residencias',
                ),
              ),
              Expanded(
                child: ListOf(
                  icon: Icon(Icons.groups_2),
                  title: 'Dependientes',
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: ReactiveResidenceRegistrationFormConsumer(
          builder: (_, formModel, __) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                PrimaryAsyncButton(
                  title: l10n.verCertificado,
                ),
                const SizedBox(height: 8),
                PrimaryAsyncButton(
                  title: l10n.guardar,
                ),
              ],
            );
          },
        ).symmetricPadding(10, 30),
      ),
    );
  }
}
