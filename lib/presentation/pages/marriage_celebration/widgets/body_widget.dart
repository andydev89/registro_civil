import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/providers/marriage_celebration/marriage_celebration_provider.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_radio_list_tile.dart';

class BodyWidget extends HookWidget {
  const BodyWidget({
    super.key,
    this.marriageCelebrationType,
    this.operation = Crud.create,
  });
  final MarriageCelebrationType? marriageCelebrationType;
  final Crud operation;

  @override
  Widget build(BuildContext context) {
    final selectedRadio = useState<MarriageCelebrationType>(
      marriageCelebrationType ?? MarriageCelebrationType.attorney,
    );
    return Consumer(
      builder: (context, ref, _) {
        return AutoRouter(
          builder: (context, content) => Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: PrimaryRadioListTile(
                      readOnly: operation.isRead,
                      value: MarriageCelebrationType.attorney,
                      groupValue: selectedRadio.value,
                      title:
                          MarriageCelebrationType.attorney.translate(context),
                      onChanged: (value) {
                        selectedRadio.value = MarriageCelebrationType.attorney;
                        ref
                            .read(marriageCelebrationProvider.notifier)
                            .setAttorney();
                        context.replaceRoute(
                          FirstStepAttorneyRoute(operation: operation),
                        );
                      },
                    ),
                  ),
                  Expanded(
                    child: PrimaryRadioListTile(
                      readOnly: operation.isRead,
                      value: MarriageCelebrationType.contractingParty,
                      groupValue: selectedRadio.value,
                      title: MarriageCelebrationType.contractingParty
                          .translate(context),
                      onChanged: (value) {
                        selectedRadio.value =
                            MarriageCelebrationType.contractingParty;
                        ref
                            .read(marriageCelebrationProvider.notifier)
                            .setContractingParty();
                        context.replaceRoute(
                          FirstStepContractingPartyRoute(
                            operation: operation,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
              Expanded(child: content),
            ],
          ),
        );
      },
    );
  }
}
