
import 'package:registro_civil_apk/data/enum/status_codes_enum/status_codes_enum.dart';
import 'package:registro_civil_apk/data/models/responses/basic_response_model.dart';

StatusCodes convertToStatusCode(Map<String,dynamic>? response) {
  if (response == null) return StatusCodes.s999;
  try{
    final basicResponse = ResponseModel.fromJson(response, (json) => null);
    return _getStatusCode(basicResponse.status);
  } on Exception catch (_) {
    return StatusCodes.s999;
  }

}

StatusCodes _getStatusCode(int statusCode) {
    return StatusCodes.values.firstWhere(
      (e) => e.toText == 's$statusCode',
      orElse: () => StatusCodes.s999,
    );
  }
