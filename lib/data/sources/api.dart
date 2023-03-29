import 'package:dio/dio.dart';
import 'package:registro_civil_apk/data/models/auth/auth_response.dart';
import 'package:registro_civil_apk/data/models/auth/login_model.dart';
import 'package:registro_civil_apk/data/models/auth/register_model.dart';
import 'package:registro_civil_apk/data/models/commons/province_model.dart';
import 'package:registro_civil_apk/data/models/responses/basic_response_model.dart';
import 'package:retrofit/retrofit.dart';

part 'api.g.dart';

@RestApi()
abstract class Api {
  factory Api(Dio dio, {String baseUrl}) = _Api;

  //AUTH
  @POST('/api/register')
  Future<ResponseModel<List<RegisterResponseModel>?>> register(
    @Body() RegisterModel registerModel,
  );

  @POST('/api/auth/login')
  Future<ResponseModel<List<LoginResponseModel>?>> login(
    @Body() LoginModel loginModel,
  );

  //COMMONS
  @GET('/identity/api/location/province')
  Future<ResponseModelPagination<List<ProvinceModel>?>> provinces(
    @Query('pageNo') int pageNo,
    @Query('pageSize') int pageSize,
  );
}
