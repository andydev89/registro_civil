import 'package:dio/dio.dart';
import 'package:registro_civil_apk/data/models/auth/auth_response.dart';
import 'package:registro_civil_apk/data/models/auth/login_model.dart';
import 'package:registro_civil_apk/data/models/auth/register_model.dart';
import 'package:registro_civil_apk/data/models/commons/agency_model.dart';
import 'package:registro_civil_apk/data/models/commons/location_model.dart';
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
  Future<ResponseModel<LoginResponseModel?>> login(
    @Body() LoginModel loginModel,
  );

  @POST('/api/auth/refresh')
  Future<ResponseModel<LoginResponseModel?>> refreshToken(
    @Query('token') String token,
  );

  //COMMONS
  @GET('/identity/api/location/province')
  Future<ResponseModelPagination<List<LocationModel>?>> provinces(
    @Query('pageNo') int pageNo,
    @Query('pageSize') int pageSize,
  );

  @GET('/identity/api/agency')
  Future<ResponseModelPagination<List<AgencyModel>?>> agencies(
    @Query('pageNo') int pageNo,
    @Query('pageSize') int pageSize,
  );
}
