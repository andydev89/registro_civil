import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:registro_civil_apk/data/enum/home_enum/agendar_turnos_enum.dart';
import 'package:registro_civil_apk/data/riverpod/declaration/home_page_riverpod.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/widgets/success_widget.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_label.dart';

class Stepper3AgendarTurnos extends ConsumerWidget {
  const Stepper3AgendarTurnos({
    super.key,
    required this.color,
  });
  final Color color;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final estadoPago = ref.watch(agendarTurnosStepper3Riv);
    final cambiarEstadoPago = ref.watch(agendarTurnosStepper3Riv.notifier);
    final size = MediaQuery.of(context).size;
    return Expanded(
      child: content(
        estadoPago: estadoPago,
        color: Theme.of(context).primaryColor,
        l10n: l10n,
        cambiarEstadoPago: cambiarEstadoPago,
        size: size,
      ),
    );
  }

  Widget content({
    required AgendarTurnosEnum estadoPago,
    required Color color,
    required AppLocalizations l10n,
    required StateController<AgendarTurnosEnum> cambiarEstadoPago,
    required Size size,
  }) {
    if (estadoPago == AgendarTurnosEnum.verificando) {
      return verificando(
        l10n: l10n,
        color: color,
        cambiarEstadoPago: cambiarEstadoPago,
      );
    }
    if (estadoPago == AgendarTurnosEnum.pagoCorrecto) {
      return pagoCorrecto(color: color, size: size, l10n: l10n);
    }
    if (estadoPago == AgendarTurnosEnum.pagoIncorrecto) {
      return pagoIncorrecto(color: color, l10n: l10n);
    }
    return Container();
  }

  Widget verificando({
    required AppLocalizations l10n,
    required Color color,
    required StateController<AgendarTurnosEnum> cambiarEstadoPago,
  }) {
    return GestureDetector(
      onTap: () => cambiarEstadoPago.state = AgendarTurnosEnum.pagoCorrecto,
      onLongPress: () =>
          cambiarEstadoPago.state = AgendarTurnosEnum.pagoIncorrecto,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.handshake,
            color: color,
            size: 100,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: PrimaryLabel(
              l10n.verPago1,
              color: color,
            ),
          ),
          CircularProgressIndicator(
            color: color,
          ),
        ],
      ),
    );
  }

  Widget pagoCorrecto({
    required Color color,
    required Size size,
    required AppLocalizations l10n,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SuccessWidget(),
        PrimaryLabel(
          l10n.verPagoSatisfactoriamente,
          color: color,
          fontWeight: FontWeight.bold,
        ),
      ],
    );
  }

  Widget pagoIncorrecto({
    required Color color,
    required AppLocalizations l10n,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.warning_amber_outlined, color: Colors.red, size: 200),
        PrimaryLabel(
          l10n.noPudVerPagServicio,
          color: color,
          fontWeight: FontWeight.bold,
        ),
        PrimaryLabel(
          l10n.verhayReaPagServicio,
          color: color,
          fontSize: 15,
        ),
      ],
    );
  }
}
