import 'package:flutter/material.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/enum/commons/crud_type.dart';
import 'package:registro_civil_apk/data/models/residence_registration/residence_registration_model.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/widgets/scaffolds/primary_scaffold.dart';

class FirstStepDependentPage extends StatelessWidget {
  const FirstStepDependentPage({
    super.key,
    this.operation = Crud.create,
  });
  final Crud operation;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return DependentFormBuilder(
      builder: (context, formModel, child) => PrimaryScaffold(
        title: 'title',
        body: Column().horizontalPadding(20),
      ),
    );
  }
}
