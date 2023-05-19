import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:power_ups/extensions/widget_extension.dart';
import 'package:registro_civil_apk/data/enum/commons/crud_type.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/data/providers/providers.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/pages/marriage_celebration/widgets/first_step_form.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_button.dart';
import 'package:registro_civil_apk/presentation/widgets/cards/translucent_card.dart';

class FirstStepContractingPartyPage extends ConsumerWidget {
  const FirstStepContractingPartyPage({
    super.key,
    this.operation = Crud.create,
  });
  final Crud operation;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final me = ref.watch(meProvider).value ?? MeModel();
    return RequestOwnerFormBuilder(
      model: RequestOwner.fromMe(me),
      builder: (_, formModel, __) => Scaffold(
        backgroundColor: Colors.transparent,
        body: ScrollableContent(
          child: FirstStepForm(
            formModel: formModel,
            showFilePicker: false,
            operation: operation,
          ),
        ).symmetricPadding(10, 20),
        bottomNavigationBar: ReactiveRequestOwnerFormConsumer(
          builder: (_, formModel, __) => PrimaryButton(
            title: l10n.siguiente,
            onPressed: formModel.form.valid || operation.isRead
                ? () {
                    if (operation.isCreate) {
                      ref
                          .read(marriageCelebrationProvider.notifier)
                          .setFirstStep(formModel.model);
                    }
                    context.navigateTo(
                      MarriageCelebrationAgencyRoute(operation: operation),
                    );
                  }
                : null,
          ),
        ).symmetricPadding(10, 10),
      ),
    );
  }
}
