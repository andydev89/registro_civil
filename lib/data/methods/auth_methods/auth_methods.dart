import 'package:registro_civil_apk/data/enum/auth_enum/icono_boton_enum.dart';
import 'package:registro_civil_apk/data/enum/routes_enum.dart';

RoutesEnum iconoBotonEnumARoutesEnum(IconoBotonEnum tipoIcono) {
  if (tipoIcono == IconoBotonEnum.faceID) {
    return RoutesEnum.loginFaceId;
  } else if (tipoIcono == IconoBotonEnum.huella) {
    return RoutesEnum.loginHuella;
  }
  return RoutesEnum.loginCedula;
}
