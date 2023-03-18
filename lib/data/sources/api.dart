import 'package:dio/dio.dart';
import 'package:registro_civil_apk/data/models/auth/login_model.dart';
import 'package:registro_civil_apk/data/models/auth/register_model.dart';
import 'package:registro_civil_apk/data/models/basic_response_model.dart';
import 'package:retrofit/retrofit.dart';

part 'api.g.dart';

@RestApi()
abstract class Api {
  factory Api(Dio dio, {String baseUrl}) = _Api;

  @POST('/api/user/register')
  Future<BasicResponse<dynamic>> register(
    @Body() RegisterModel registerModel,
  );

  @POST('/api/login')
  Future<BasicResponse<dynamic>> login(
    @Body() LoginModel loginModel,
  );
}
