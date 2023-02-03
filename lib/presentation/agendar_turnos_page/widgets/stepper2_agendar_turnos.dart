import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:registro_civil_apk/data/riverpod/declaration/home_page_riverpod.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/widgets_generales/elevated_button_widget.dart';
import 'package:registro_civil_apk/presentation/widgets_generales/texto_widget.dart';

class Stepper2AgendarTurnos extends ConsumerWidget {
  const Stepper2AgendarTurnos({
    super.key,
    required this.color,
  });
  final Color color;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    const padding = EdgeInsets.zero;
    return Expanded(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
              button(
                padding: padding,
                title: l10n.servicios,
              ),
              IconButton(
                icon: const Icon(Icons.filter_list),
                onPressed: () {},
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
          height: 30,
          fontWeight: FontWeight.normal,
          fontSize: 14,
          title: title,
          width: double.maxFinite,
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
      trailing: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
        child: Consumer(
          builder: (_, ref, __) {
            return IconButton(
              icon: const Icon(
                Icons.fact_check_outlined,
                color: Colors.white,
              ),
              onPressed: () =>
                  ref.read(agendarTurnosStepperRiv.notifier).next(),
            );
          },
        ),
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
