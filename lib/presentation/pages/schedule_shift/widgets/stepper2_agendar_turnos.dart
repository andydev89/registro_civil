import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:registro_civil_apk/data/riverpod/declaration/home_page_riverpod.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/widgets/decoration_widget.dart';
import 'package:registro_civil_apk/presentation/widgets/elevated_button_widget.dart';
import 'package:registro_civil_apk/presentation/widgets/icon_gradiente_widget.dart';
import 'package:registro_civil_apk/presentation/widgets/texto_widget.dart';

class Stepper2AgendarTurnos extends ConsumerWidget {
  const Stepper2AgendarTurnos({
    super.key,
    required this.color,
  });
  final Color color;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    const padding = EdgeInsets.symmetric(horizontal: 20);
    return <bool, Widget Function()>{
      false: () => principal(padding: padding, l10n: l10n),
      true: () => seleccionarTurno(
            l10n: l10n,
            context: context,
            ref: ref,
            pos: ref.watch(posHoraStepper2Riv),
            actPos: ref.read(posHoraStepper2Riv.notifier),
          ),
    }[ref.watch(agendarTurnosStepper2SelecTurnoRiv)]!
        .call();
  }

  Expanded principal({
    required EdgeInsets padding,
    required AppLocalizations l10n,
  }) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          button(
                            padding: padding,
                            title: l10n.todos,
                            onPressed: () {},
                          ),
                          button(
                            padding: padding,
                            title: l10n.fecha,
                          ),
                        ],
                      ),
                      Positioned(
                        right: 10,
                        bottom: -7,
                        child: IconButton(
                          icon: const Icon(Icons.filter_list),
                          onPressed: () {},
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(vertical: 10),
                itemCount: 3,
                itemBuilder: element,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget seleccionarTurno({
    required BuildContext context,
    required AppLocalizations l10n,
    required WidgetRef ref,
    required int pos,
    required StateController<int> actPos,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextoWidget(
          l10n.selTurno,
          color: Theme.of(context).primaryColor,
        ),
        ...List.generate(
          5,
          (index) => SizedBox(
            width: 150,
            child: RadioListTile(
              value: index,
              groupValue: pos,
              onChanged: (value) => actPos.state = value!,
              title: TextoWidget(
                '${index + 8}:00',
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Flexible button({
    required EdgeInsets padding,
    required String title,
    void Function()? onPressed,
  }) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ElevatedButtonWidget(
          height: 20,
          fontWeight: FontWeight.normal,
          fontSize: 14,
          title: title,
          padding: padding,
          onPressed: onPressed,
        ),
      ),
    );
  }

  Widget element(BuildContext context, int index) {
    final color = Theme.of(context).primaryColor;
    const colorSubtitle = Colors.grey;
    const fontSize = 17.0;
    const size = 18.0;
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: color,
        radius: 30,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Image.asset(
            image(index),
          ),
        ),
      ),
      title: TextoWidget(
        titulo(context, index),
        fontWeight: FontWeight.bold,
        color: color,
      ),
      subtitle: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: const [
              Icon(
                Icons.calendar_month,
                color: colorSubtitle,
                size: size,
              ),
              TextoWidget(
                ' 12/12/2021',
                color: colorSubtitle,
                fontSize: fontSize,
              ),
              SizedBox(width: 10),
              Icon(
                Icons.watch_later_outlined,
                color: colorSubtitle,
                size: size,
              ),
              TextoWidget(
                ' 12:00',
                color: colorSubtitle,
                fontSize: fontSize,
              ),
            ],
          ),
        ),
      ),
      trailing: Consumer(
        builder: (_, ref, __) {
          return Container(
            decoration: BoxDecoration(
              gradient: gradientePrincipal(),
              borderRadius: BorderRadius.circular(10),
            ),
            height: 40,
            width: 40,
            child: Center(
              child: IconButton(
                icon: const IconGradientWidget(
                  icono: Icons.watch_later_outlined,
                  size: 22.5,
                ),
                onPressed: () => ref
                    .read(agendarTurnosStepper2SelecTurnoRiv.notifier)
                    .state = true,
              ),
            ),
          );
        },
      ),
    );
  }

  String image(int index) {
    if (index > 2) {
      return 'assets/img/general/agendar_turno${Random().nextInt(2) + 1}.png';
    }
    return 'assets/img/general/agendar_turno${index + 1}.png';
  }

  String titulo(BuildContext context, int index) {
    final l10n = context.l10n;
    switch (index) {
      case 0:
        return l10n.solCedula;
      case 1:
        return l10n.solPasaporte;
      case 2:
        return l10n.solCedula;
      default:
        return '';
    }
  }
}
