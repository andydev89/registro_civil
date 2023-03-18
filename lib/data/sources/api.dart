import 'package:dio/dio.dart';
import 'package:registro_civil_apk/data/models/basic_response_model.dart';
import 'package:registro_civil_apk/data/models/register_model.dart';
import 'package:retrofit/retrofit.dart';

part 'api.g.dart';

@RestApi()
abstract class Api {
  factory Api(Dio dio, {String baseUrl}) = _Api;

  ///Refresh token
  @POST('/identity/api/user/register')
  Future<BasicResponse<dynamic>> register({
    @Body() required RegisterModel registerModel,
  });
}
