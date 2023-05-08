import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/models/commons/term_and_use_conditions_model.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_button.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_check_box.dart';
import 'package:registro_civil_apk/presentation/widgets/scaffolds/primary_scaffold.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';

class TermAndUsesConditionsPage extends StatelessWidget {
  const TermAndUsesConditionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    //TODO traducir los textos
    final l10n = context.l10n;
    return TermAndUseConditionsModelFormBuilder(
      builder: (context, formModel, child) => PrimaryScaffold(
        title: 'Términos y condiciones de uso',
        body: Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const PrimaryText(
                  'LEY ORGÁNICA DE GESTIÓN DE LA IDENTIDAD Y DATOS CIVILES',
                  textAlign: TextAlign.left,
                ),
                const PrimaryText(
                  '*Art. 78 Cambio de nombres',
                  textAlign: TextAlign.left,
                  fontWeight: FontWeight.bold,
                ).verticalPadding(10),
                const PrimaryText(
                  '''Toda persona desde los 18 años de edad, por sus propios derechos,por una sola vez, podrá cambiar sus nombres propios, alterar el orden de los mismos, suprimir uno cuando conste con más de dos o aumentar uno cuando conste con un solo nombre, sin más que su voluntad ante la autoridad competente de la Dirección General de Registro Civil, Identificación y Cedulación. Para el efecto, se seguirán las mismas reglas de los nombres en la inscripción.''',
                  textAlign: TextAlign.left,
                  maxLines: null,
                ),
                const PrimaryText(
                  '*Art. 36 Nombres en la inscripción de nacimiento',
                  textAlign: TextAlign.left,
                  fontWeight: FontWeight.bold,
                ).verticalPadding(10),
                const PrimaryText(
                  '''
                  Para la asignación de nombres en la inscripción de nacimiento deberén observarse las siguientes reglas:
                  \n1. No podrá asignarse más de dos nombres simples o uno compuesto que se tengan por tales en el uso general ecuatoriano. tratándose de hijos de padre o madre extranjeros podrán escogerse libremente estos dos nombres.
                  \n2. No se podrá asignar nombres que constituyan palabras extravagantes, ridáculas o que denigren la dignidad humana o que expresen cosas o nociones, a menos que su uso como nombres se hubiere consagrado tradicionalmente.''',
                  textAlign: TextAlign.left,
                  maxLines: null,
                ),
                const PrimaryText(
                  '*Art. 89 Actualización de datos',
                  textAlign: TextAlign.left,
                  fontWeight: FontWeight.bold,
                ).verticalPadding(10),
                const PrimaryText(
                  '''Cuando se hayan generado cambios en los datos constantes en el Registro Personal Unico que se evidencien en la cédula de identidad, su titular tiene la obligación de actualizar y obtener un documento nuevo en el plazo de treinta días. En este caso, la falta de actualización y la obtención de la nueva cédula en el plazo establecido dará lugar a la multa equivalente al 1 por mil del salario básico unificado del trabajador en general por cada día de retraso, hasta un máximo de un salario básico unificado del trabajador en general.''',
                  textAlign: TextAlign.left,
                  maxLines: null,
                ),
                PrimaryReactiveCheckBox(
                  formControl: formModel.acceptControl,
                  label:
                      'He leído y aceptado los términos y condiciones del trámite.',
                ).verticalPadding(20),
                ReactiveTermAndUseConditionsModelFormConsumer(
                  builder: (context, formModel, child) {
                    return PrimaryButton(
                      title: l10n.aceptar,
                      onPressed: formModel.form.valid && formModel.model.accept
                          ? () {
                              context.navigateTo(
                                const ChangeOfNameFirstStepRoute(),
                              );
                            }
                          : null,
                    );
                  },
                ).verticalPadding(5),
                PrimaryButton(
                  title: l10n.cancelar,
                  onPressed: () => context.popRoute(),
                ).verticalPadding(5),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
