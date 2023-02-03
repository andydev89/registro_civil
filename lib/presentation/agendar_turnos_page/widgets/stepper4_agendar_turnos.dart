import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:registro_civil_apk/data/enum/home_enum/detalles_turno_enum.dart';
import 'package:registro_civil_apk/data/riverpod/declaration/home_page_riverpod.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/widgets_generales/texto_widget.dart';
import 'package:registro_civil_apk/presentation/widgets_generales/title_subtitle_text_widget.dart';
import 'package:registro_civil_apk/presentation/widgets_generales/title_subtitle_widget.dart';

class Stepper4AgendarTurnos extends ConsumerWidget {
  const Stepper4AgendarTurnos({
    super.key,
    required this.color,
  });
  final Color color;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final stepper4 = ref.watch(agendarTurnosStepper4Riv);
    final colorTexto = Theme.of(context).primaryColor;
    final size = MediaQuery.of(context).size;
    return Center(
      child: content(
        context,
        stepper4: stepper4,
        colorTexto: colorTexto,
        size: size,
        l10n: l10n,
      ),
    );
  }

  Widget content(
    BuildContext context, {
    required DetallesTrunoEnum stepper4,
    required Color colorTexto,
    required Size size,
    required AppLocalizations l10n,
  }) {
    if (stepper4 == DetallesTrunoEnum.detalles) {
      return detallesTurno(colorTexto: colorTexto, l10n: l10n);
    }
    return confirmarTurno(
      l10n: l10n,
      size: size,
      color: colorTexto,
    );
  }

  Widget confirmarTurno({
    required AppLocalizations l10n,
    required Size size,
    required Color color,
  }) {
    return Column(
      children: [
        Image.asset(
          'assets/img/general/checkmark.png',
          color: color,
          width: size.width * 0.5,
        ),
        TextoWidget(
          l10n.turResSatisfactoriamente,
          color: color,
          fontWeight: FontWeight.bold,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: TextoWidget(
            l10n.envNotCorElectronico,
            color: color,
          ),
        ),
      ],
    );
  }

  ClipRRect detallesTurno({
    required Color colorTexto,
    required AppLocalizations l10n,
  }) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: Card(
        elevation: 3,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 180,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TitleSubtitleTextoWidget(
                      title: l10n.ciudad,
                      subtitle: 'Guayaquil',
                      color: colorTexto,
                    ),
                    TitleSubtitleTextoWidget(
                      title: l10n.agencia,
                      subtitle: 'Matriz',
                      color: colorTexto,
                    ),
                    TitleSubtitleTextoWidget(
                      title: l10n.servicio,
                      subtitle: 'Solicitar cédula',
                      color: colorTexto,
                    ),
                    TitleSubtitleWidget(
                      title: Icon(
                        Icons.calendar_month,
                        color: colorTexto,
                      ),
                      subtitle: TextoWidget(
                        '05-02-2023',
                        color: colorTexto,
                      ),
                    ),
                    TitleSubtitleWidget(
                      title: Icon(
                        Icons.watch_later_outlined,
                        color: colorTexto,
                      ),
                      subtitle: TextoWidget(
                        '08:30',
                        color: colorTexto,
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                child: Image.asset(
                  'assets/img/general/qr.png',
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
