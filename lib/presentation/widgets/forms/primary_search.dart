import 'package:flutter/material.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/secondary_icon_button.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_text_field.dart';

class PrimarySearch extends StatelessWidget {
  const PrimarySearch({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return PrimaryTextField(
      hintText: l10n.buscar,
      padding: 15,
      suffixIcon: SecondaryIconButton(
        onPressed: () {},
        icon: Icons.search,
        color: Colors.grey,
      ),
    ).horizontalPadding(40);
  }
}
