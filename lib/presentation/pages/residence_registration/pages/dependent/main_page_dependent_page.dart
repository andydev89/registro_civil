import 'package:flutter/material.dart';
import 'package:flutter_dropdown_alert/model/data_alert.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/enum/commons/crud_type.dart';
import 'package:registro_civil_apk/data/models/residence_registration/residence_registration_model.dart';
import 'package:registro_civil_apk/data/providers/residence_registration/residence_registration_providers.dart';
import 'package:registro_civil_apk/data/utils/alert_methods.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/pages/residence_registration/utils/residence_registration_utils.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_add_item_row.dart';
import 'package:registro_civil_apk/presentation/widgets/cards/card_widget.dart';
import 'package:registro_civil_apk/presentation/widgets/dialogs/dialogs.dart';
import 'package:registro_civil_apk/presentation/widgets/scaffolds/primary_scaffold.dart';

class MainPageDependentPage extends ConsumerWidget {
  const MainPageDependentPage({
    super.key,
    required this.residentialIndex,
  });
  final int residentialIndex;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final residence = ref.watch(resRegProvider).residentials[residentialIndex];
    return PrimaryScaffold(
      title: l10n.registroRes,
      subtitle: l10n.dependientes,
      body: Expanded(
        child: SingleChildScrollView(
          child: Column(
            key: UniqueKey(),
            children: [
              PrimaryAddItemRow(
                title: l10n.listadoDependientes,
                onPressed: () => toDependent(
                  context,
                  residentialIndex: residentialIndex,
                ),
              ),
              ...residence.dependents.map(
                (element) => CardWidget<Dependent>(
                  rows: {
                    l10n.numCedula: element.nuiDependents,
                    l10n.nombre: element.name,
                    l10n.apellidos: element.lastname,
                    l10n.residencia: residence.address,
                  },
                  actions: {
                    Crud.read: (r) => toDependent(
                          context,
                          operation: Crud.read,
                          residentialIndex: residentialIndex,
                          dependent: element,
                        ),
                    Crud.delete: (r) => showDeleteDialog(
                          context,
                          onDelete: () {
                            ref
                                .read(resRegProvider.notifier)
                                .removeDependent(residentialIndex, element);
                            showAlert(
                              l10n.dependentEliminadoCor,
                              TypeAlert.success,
                            );
                          },
                        )
                  },
                  element: element,
                ),
              ),
            ],
          ).horizontalPadding(20),
        ),
      ),
    );
  }
}
