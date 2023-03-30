import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/models/commons/province_model.dart';
import 'package:registro_civil_apk/data/providers/commons/province_providers.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_dropdown.dart';
import 'package:registro_civil_apk/presentation/widgets/status/error_status.dart';
import 'package:registro_civil_apk/presentation/widgets/status/loading_status.dart';

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
    return provinces.when(
      data: (data) => PrimaryReactiveDropdown(
        formControl: formControl,
        items: data.when(
          ok: (provinces) => provinces,
          err: (statusCode) => [],
        ),
        label: l10n.provincia,
      ),
      error: (error, stackTrace) => ErrorStatus(messagge: error.toString()),
      loading: () => const LoadingStatus(),
    );
  }
}
