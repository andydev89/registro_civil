import 'package:flutter/material.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/theme/theme.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/secondary_icon_button.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_form_field.dart';

class HopmeSearch extends StatelessWidget {
  const HopmeSearch({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return PrimaryTextFormField(
      colorLabel: blue,
      hint: l10n.buscar,
      borderColor: blue,
      padding: 15,
      suffixIcon: SecondaryIconButton(
        onPressed: () {},
        icon: Icons.search,
        color: Colors.grey,
      ),
    ).horizontalPadding(40);
  }
}
