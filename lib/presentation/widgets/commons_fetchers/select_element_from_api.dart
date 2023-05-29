import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oxidized/oxidized.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:registro_civil_apk/data/enum/status_code/status_code_type.dart';
import 'package:registro_civil_apk/data/interfaces/translatable_interface.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_dropdown.dart';

class SelectElementFromApi<T extends Translatable> extends ConsumerWidget {
  const SelectElementFromApi({
    super.key,
    this.formControl,
    this.formControlName,
    this.label,
    required this.provider,
    this.light = false,
    this.hintText,
    this.prefixIcon,
    this.readOnly = false,
    this.onChanged,
    this.init = false,
    this.initialValue,
  });
  final FormControl<T>? formControl;
  final String? formControlName;
  final AutoDisposeFutureProvider<Result<List<T>, StatusCodeType>> provider;
  final String? label;
  final bool light;
  final String? hintText;
  final Widget? prefixIcon;
  final bool readOnly;
  final void Function(FormControl<Object?>)? onChanged;
  final bool init;
  final T? Function(List<T>?)? initialValue;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final elements = ref.watch(provider);
    if (init && elements.asData?.value != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        final data = elements.asData?.value.when(
          ok: (data) => data,
          err: (error) => _onError(),
        );
        if (data?.isNotEmpty ?? false) {
          formControl?.value = initialValue?.call(data);
        }
      });
    }
    return PrimaryReactiveDropdown(
      readOnly: readOnly ||
          elements.isLoading ||
          (elements.value != null &&
              elements.value!
                  .when(
                    ok: (data) => data,
                    err: (error) => List<T>.empty(),
                  )
                  .isEmpty),
      formControlName: formControlName,
      formControl: formControl,
      light: light,
      hintText: hintText,
      prefixIcon: prefixIcon,
      items: elements.asData?.value.when(
            ok: (data) => data,
            err: (error) => _onError(),
          ) ??
          _onError(),
      label: label,
      isLoading: elements.isLoading,
      onChanged: onChanged,
      hasError: elements.hasError,
      onError: () => ref.refresh(provider),
    );
  }

  List<T> _onError() {
    formControl?.reset();
    return List<T>.empty();
  }
}
