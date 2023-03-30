import 'package:flutter/material.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/core/gen/assets.gen.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_text_field.dart';

class PrimarySearch extends StatefulWidget {
  const PrimarySearch({
    super.key,
    this.showFilter = false,
    this.onPressed,
    this.filter = '',
    this.onChanged,
  });
  final bool showFilter;
  final String filter;
  final void Function()? onPressed;
  final void Function(String)? onChanged;

  @override
  State<PrimarySearch> createState() => _PrimarySearchState();
}

class _PrimarySearchState extends State<PrimarySearch> {

  late TextEditingController controller;
  @override
  void initState() {
    controller = TextEditingController(text: widget.filter);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: PrimaryTextField(
            hintText: l10n.buscar,
            controller: controller,
            padding: 15,
            onChanged: widget.onChanged,
            suffixIcon: Assets.svg.search.svg(),
          ),
        ),
        Visibility(
          visible: widget.showFilter,
          child: IconButton(
            icon: Assets.svg.filter.svg(),
            splashRadius: 25,
            onPressed: widget.onPressed,
          ),
        ),
      ],
    );
  }
}
