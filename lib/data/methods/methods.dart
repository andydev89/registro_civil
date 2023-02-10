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

bool cedulaValida(String cedula) {
  //adaptado a dart de https://gist.github.com/vickoman/7800717

  /**
     * Algoritmo para validar cedulas de Ecuador
     * @Author : Victor Diaz De La Gasca.
     * @Fecha  : Quito, 15 de Marzo del 2013 
     * @Email  : vicmandlagasca@gmail.com
     * @Pasos  del algoritmo
     * 1.- Se debe validar que tenga 10 numeros
     * 2.- Se extrae los dos primero digitos de la izquierda y compruebo que
     * existan las regiones
     * 3.- Extraigo el ultimo digito de la cedula
     * 4.- Extraigo Todos los pares y los sumo
     * 5.- Extraigo Los impares los multiplico x 2 si el numero resultante
     *  es mayor a 9 le restamos 9 al resultante
     * 6.- Extraigo el primer Digito de la suma (sumaPares + sumaImpares)
     * 7.- Conseguimos la decena inmediata del digito extraido del paso
     *  6 (digito + 1) * 10
     * 8.- restamos la decena inmediata - suma / si la suma nos resulta 10, el decimo digito es cero
     * 9.- Paso 9 Comparamos el digito resultante con el ultimo digito de la 
     * cedula si son iguales todo OK sino existe error.     
     */

  //Preguntamos si la cedula consta de 10 digitos
  if (cedula.length == 10) {
    //Obtenemos el digito de la region que sonlos dos primeros digitos
    final digitoRegion = int.parse(cedula.substring(0, 2));
    //int  digito_region = cedula.substring(0,2);
    //int.parse(

    //Pregunto si la region existe ecuador se divide en 24 regiones
    if (digitoRegion >= 1 && digitoRegion <= 24) {
      // Extraigo el ultimo digito
      final ultimoDigito = int.parse(cedula.substring(9, 10));

      //Agrupo todos los pares y los sumo
      final pares = int.parse(cedula.substring(1, 2)) +
          int.parse(cedula.substring(3, 4)) +
          int.parse(cedula.substring(5, 6)) +
          int.parse(cedula.substring(7, 8));

      //Agrupo los impares, los multiplico por un factor de 2, si
      //la resultante es > que 9 le restamos el 9 a la resultante
      var numero1 = int.parse(cedula.substring(0, 1)) * 2;
      if (numero1 > 9) {
        numero1 = numero1 - 9;
      }

      var numero3 = int.parse(cedula.substring(2, 3));
      numero3 = numero3 * 2;
      if (numero3 > 9) {
        numero3 = numero3 - 9;
      }

      var numero5 = int.parse(cedula.substring(4, 5));
      numero5 = numero5 * 2;
      if (numero5 > 9) {
        numero5 = numero5 - 9;
      }

      var numero7 = int.parse(cedula.substring(6, 7));
      numero7 = numero7 * 2;
      if (numero7 > 9) {
        numero7 = numero7 - 9;
      }

      var numero9 = int.parse(cedula.substring(8, 9));
      numero9 = numero9 * 2;
      if (numero9 > 9) {
        numero9 = numero9 - 9;
      }

      final impares = numero1 + numero3 + numero5 + numero7 + numero9;

      //Suma total
      final sumaTotal = pares + impares;

      //extraemos el primero digito
      final primerDigitoSuma = int.parse(
        sumaTotal.toString().substring(0, 1),
      );

      //Obtenemos la decena inmediata
      final decena = (primerDigitoSuma + 1) * 10;

      //Obtenemos la resta de la decena inmediata - la suma_total 
      //esto nos da el digito validador
      var digitoValidador = decena - sumaTotal;

      //Si el digito validador es = a 10 toma el valor de 0
      if (digitoValidador == 10) {
        digitoValidador = 0;
      }

      //Validamos que el digito validador sea igual al de la cedula
      if (digitoValidador == ultimoDigito) {
        //cedula correcta
        return true;
      }
    } else {
      // la cedula no pertenece a ninguna region
      return false;
    }
  } else {
    //la cedula no tiene 10 digitos
    return false;
  }

  return false;
}
