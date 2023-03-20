import 'package:flutter/material.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/theme/theme.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_button.dart';
import 'package:registro_civil_apk/presentation/widgets/cards/primary_card.dart';
import 'package:registro_civil_apk/presentation/widgets/cards/translucent_card.dart';
import 'package:registro_civil_apk/presentation/widgets/dialogs/dialogs.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_search.dart';
import 'package:registro_civil_apk/presentation/widgets/scaffolds/primary_scaffold.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_title.dart';

class MyTurnsPage extends StatelessWidget {
  const MyTurnsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return PrimaryScaffold(
      title: l10n.misTurnos,
      body: Column(
        children: [
          const PrimarySearch(),
          PrimaryButton(
            title: 'Mostrar dialog',
            onPressed: () => showAcceptCancelDialog<void>(
              context,
              title: l10n.confirmacion,
              message: l10n.seguroCancelarTurno,
            ),
          ),
          PrimaryCard(child: Text('asd')),
          PrimaryCard(child: Text('asd')),
          PrimaryCard(child: Text('asd')),
        ],
      ),
    );
  }
}
