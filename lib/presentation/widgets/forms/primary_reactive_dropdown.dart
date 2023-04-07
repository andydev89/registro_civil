import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:registro_civil_apk/data/interfaces/translatable_interface.dart';
import 'package:registro_civil_apk/data/utils/validators.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/theme/theme.dart';
import 'package:registro_civil_apk/presentation/widgets/decorations/input_decoration.dart';
import 'package:registro_civil_apk/presentation/widgets/status/loading_status.dart';
import 'package:registro_civil_apk/presentation/widgets/status/refresh_status.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';

class PrimaryReactiveDropdown<T> extends HookWidget {
  const PrimaryReactiveDropdown({
    super.key,
    this.formControl,
    this.formControlName,
    this.items = const [],
    this.hintText,
    this.label,
    this.isExpanded = true,
    this.isLoading = false,
    this.hasError = false,
    this.onError,
    this.light = false,
    this.prefixIcon,
  });
  final FormControl<T>? formControl;
  final String? formControlName;
  final List<Translatable> items;
  final String? hintText;
  final String? label;
  final bool isExpanded;
  final bool isLoading;
  final bool hasError;
  final void Function()? onError;
  final bool light;
  final Widget? prefixIcon;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null)
          PrimaryText(
            label!,
            color: light ? Colors.white : primaryColor,
          ).verticalPadding(5),
        ReactiveDropdownField(
          formControl: formControl,
          formControlName: formControlName,
          icon: hasError
              ? RefreshStatus(onRefresh: onError)
              : isLoading
                  ? const LoadingStatus()
                  : null,
          borderRadius: BorderRadius.circular(10),
          decoration:
              primaryInputDecoration(light: light, prefixIcon: prefixIcon),
          isExpanded: isExpanded,
          hint: Text(
            hasError
                ? l10n.errorAlObtenerLosDatos
                : isLoading
                    ? l10n.cargando
                    : hintText ?? '${l10n.seleccione}...',
            style: TextStyle(
              color: light ? Colors.white : Colors.black,
            ),
          ),
          selectedItemBuilder: (context) => items
              .map(
                (e) => PrimaryText(
                  e.translate(context),
                  textAlign: TextAlign.start,
                  overFlow: TextOverflow.ellipsis,
                  color: light ? Colors.white : primaryColor,
                ),
              )
              .toList(),
          items: items
              .map(
                (e) => DropdownMenuItem(
                  value: e,
                  child: PrimaryText(
                    e.translate(context),
                    textAlign: TextAlign.start,
                    overFlow: TextOverflow.ellipsis,
                  ),
                ),
              )
              .toList(),
          validationMessages: validationMessage(l10n),
        ),
      ],
    ).verticalPadding(10);
  }
}
