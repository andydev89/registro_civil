import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oxidized/oxidized.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:registro_civil_apk/data/enum/status_codes_enum/status_codes_enum.dart';
import 'package:registro_civil_apk/data/interfaces/translatable_interface.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_dropdown.dart';

class SelectElementFromApi<T extends Translatable> extends ConsumerWidget {
  const SelectElementFromApi({
    super.key,
    this.formControl,
    this.formControlName,
    required this.label,
    required this.provider,
  });
  final FormControl<T>? formControl;
  final String? formControlName;
  final AutoDisposeFutureProvider<Result<List<T>, StatusCode>> provider;
  final String label;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final elements = ref.watch(provider);
    return PrimaryReactiveDropdown(
      formControlName: formControlName,
      formControl: formControl,
      items: elements.asData?.value.when(
            ok: (data) => data,
            err: (error) => null,
          ) ??
          [],
      label: label,
      isLoading: elements.isLoading,
      hasError: elements.hasError,
      onError: () => ref.refresh(provider),
    );
  }
}
