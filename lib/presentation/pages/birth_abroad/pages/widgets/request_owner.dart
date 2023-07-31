import 'package:flutter/cupertino.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/models/auth/auth.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/widgets/widgets.dart';

class RequestOwnerWidget extends StatelessWidget {
  const RequestOwnerWidget({
    super.key,
    required this.me,
  });

  final MeModel me;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final idController = TextEditingController(text: me.identification);
    final nameController =
        TextEditingController(text: '${me.firstName} ${me.lastName}');
    final phoneController = TextEditingController(text: me.phone);
    final emailController = TextEditingController(text: me.email);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 16,
        ),
        PrimaryTitle(
          title: l10n.datosSolicitante,
          textAlign: TextAlign.start,
        ),
        PrimaryTextField(
          label: l10n.numCedula,
          readOnly: true,
          controller: idController,
        ).verticalPadding(10),
        PrimaryTextField(
          label: l10n.nombreApe,
          readOnly: true,
          controller: nameController,
        ).verticalPadding(10),
        PrimaryTextField(
          label: l10n.telefonoCel,
          readOnly: true,
          controller: phoneController,
        ).verticalPadding(10),
        PrimaryTextField(
          label: l10n.correoE,
          readOnly: true,
          controller: emailController,
        ).verticalPadding(10),
      ],
    );
  }
}
