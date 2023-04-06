import 'package:dio/dio.dart';
import 'package:registro_civil_apk/data/models/auth/auth_response.dart';
import 'package:registro_civil_apk/data/models/auth/login_model.dart';
import 'package:registro_civil_apk/data/models/auth/register_model.dart';
import 'package:registro_civil_apk/data/models/commons/agency_model.dart';
import 'package:registro_civil_apk/data/models/commons/location_model.dart';
import 'package:registro_civil_apk/data/models/commons/type_of_service_model.dart';
import 'package:registro_civil_apk/data/models/responses/basic_response_model.dart';
import 'package:registro_civil_apk/data/models/schedule_turn/schedule_model.dart';
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

  @POST('/identity/api/auth/refresh')
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

  @GET('/service/api/type/service')
  Future<ResponseModelPagination<List<TypeOfServiceModel>?>> services(
    @Query('pageNo') int pageNo,
    @Query('pageSize') int pageSize,
  );

  //SCHEDULE
  @GET('/schedule/api/schedule/available')
  Future<ResponseModelPagination<List<ScheduleModel>?>> availableSchedules(
    @Query('pageNo') int pageNo,
    @Query('pageSize') int pageSize,
    @Query('from') String from,
    @Query('to') String to,
    @Query('typeOfService') int typeOfService,
  );
}
