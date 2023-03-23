import 'package:flutter/material.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/core/gen/assets.gen.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_text_field.dart';

class PrimarySearch extends StatelessWidget {
  const PrimarySearch({
    super.key,
    this.showFilter = false,
    this.onPressed,
  });
  final bool showFilter;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: PrimaryTextField(
            hintText: l10n.buscar,
            padding: 15,
            suffixIcon: Assets.svg.search.svg(),
          ),
        ),
        Visibility(
          visible: showFilter,
          child: IconButton(
            icon: Assets.svg.filter.svg(),
            splashRadius: 25,
            onPressed: onPressed,
          ).horizontalPadding(10),
        ),
      ],
    );
  }
}
