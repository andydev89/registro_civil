import 'package:flutter/material.dart';
import 'package:registro_civil_apk/data/enum/routes_enum.dart';
import 'package:registro_civil_apk/data/extension/routes_extension.dart';

Future<Object?> irAYBorrarAnterior(
  BuildContext context, {
  required RoutesEnum ruta,
  Object? arguments,
}) async {
  final result = await Navigator.of(context).pushReplacementNamed(
    ruta.route,
    arguments: arguments,
  );
  return result;
}

Future<Object?> irA(
  BuildContext context, {
  required RoutesEnum ruta,
  Object? arguments,
}) async {
  final result =
      await Navigator.of(context).pushNamed(ruta.route, arguments: arguments);
  return result;
}

bool correoValido(String correo) {
  //
  return RegExp(
    r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$",
  ).hasMatch(correo);
}
