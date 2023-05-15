import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/enum/commons/crud_type.dart';
import 'package:registro_civil_apk/data/models/residence_registration/residence_registration_model.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_add_item_row.dart';
import 'package:registro_civil_apk/presentation/widgets/cards/card_widget.dart';
import 'package:registro_civil_apk/presentation/widgets/dialogs/dialogs.dart';
import 'package:registro_civil_apk/presentation/widgets/scaffolds/primary_scaffold.dart';

class MainPageDependentPage extends ConsumerWidget {
  const MainPageDependentPage({
    super.key,
    required this.residence,
  });
  final Residential residence;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    return PrimaryScaffold(
      title: l10n.registroRes,
      subtitle: l10n.dependientes,
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryAddItemRow(
              title: l10n.listadoDependientes,
              // onPressed: () => toResidence(context),
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
                  Crud.read: (r) {
                    // ref.read(residentialPProvider.notifier).state = r;
                    // toResidence(context, operation: Crud.read);
                  },
                  Crud.delete: (r) => showDeleteDialog(
                        context,
                        onDelete: () {
                          // ref
                          //     .read(resRegProvider.notifier)
                          //     .removeResidence(element);
                          // showAlert(
                          //   l10n.residenciaEliminadaCor,
                          //   TypeAlert.success,
                          // );
                        },
                      )
                },
                element: element,
              ),
            ),
          ],
        ).horizontalPadding(20),
      ),
    );
  }
}
