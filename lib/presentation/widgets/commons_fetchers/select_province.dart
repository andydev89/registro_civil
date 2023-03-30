import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/models/commons/province_model.dart';
import 'package:registro_civil_apk/data/providers/commons/province_providers.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_dropdown.dart';

class SelectProvince extends ConsumerWidget {
  const SelectProvince({
    super.key,
    required this.formControl,
  });
  final FormControl<ProvinceModel> formControl;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provinces = ref.watch(provincesProvider);
    final l10n = context.l10n;
    return PrimaryReactiveDropdown(
      formControl: formControl,
      items: provinces.asData?.value.when(
            ok: (data) => data,
            err: (error) => null,
          ) ??
          [],
      label: l10n.provincia,
      isLoading: provinces.isLoading,
      hasError: provinces.hasError,
      onError: () => ref.refresh(provincesProvider),
    );
  }
}
