import 'package:flutter/material.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/theme/theme.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_icon_button.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_form_field.dart';

class HopmeSearch extends StatelessWidget {
  const HopmeSearch({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Row(
      children: [
        const Spacer(),
        Flexible(
          flex: 10,
          child: PrimaryTextFormField(
            suffixIcon: Icons.search,
            colorLabel: blue,
            hint: l10n.buscar,
            colorSuffixIcon: Colors.grey,
            borderColor: blue,
            padding: 15,
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        const PrimaryIconButton(
          width: 30,
          height: 40,
          icon: Icon(
            Icons.edit_document,
            color: Colors.white,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.horizontal(
              left: Radius.circular(100),
            ),
          ),
        ),
      ],
    );
  }
}
