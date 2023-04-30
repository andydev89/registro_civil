import 'package:dio/dio.dart';
import 'package:registro_civil_apk/data/models/auth/auth_response.dart';
import 'package:registro_civil_apk/data/models/auth/login_model.dart';
import 'package:registro_civil_apk/data/models/auth/register_model.dart';
import 'package:registro_civil_apk/data/models/commons/agency_model.dart';
import 'package:registro_civil_apk/data/models/commons/device_ip_model.dart';
import 'package:registro_civil_apk/data/models/commons/location_model.dart';
import 'package:registro_civil_apk/data/models/commons/type_of_service_model.dart';
import 'package:registro_civil_apk/data/models/payment/place_to_pay_model.dart';
import 'package:registro_civil_apk/data/models/responses/basic_response_model.dart';
import 'package:registro_civil_apk/data/models/schedule_turn/receipt_model.dart';
import 'package:registro_civil_apk/data/models/schedule_turn/schedule_model.dart';
import 'package:registro_civil_apk/data/models/schedule_turn/user_schedule_model.dart';
import 'package:registro_civil_apk/data/models/services/type_services_model.dart';
import 'package:registro_civil_apk/data/models/simple_certificate/simple_certificate_model.dart';
import 'package:registro_civil_apk/data/models/simple_certificate/simple_certificate_response.dart';
import 'package:retrofit/retrofit.dart';

part 'api.g.dart';

@RestApi()
abstract class Api {
  factory Api(Dio dio, {String baseUrl}) = _Api;

  @GET('https://api.ipify.org/?format=json')
  Future<DeviceIpModel> getDeviceIp();

  //AUTH
  @POST('/api/user/validate/citizen')
  Future<ResponseModel<RegisterCitizenModel>> registerValidateNui(
    @Body() NuiModel nuiModel,
  );

  @POST('/api/user/register/data')
  Future<ResponseModel<CommandModel>> registerData(
    @Body() EnterDataModel enterDataModel,
  );

  @POST('/api/user/register/code')
  Future<ResponseModel<CodeModel>> registerCode(
    @Body() RegisterModel enterDataModel,
  );

  @GET('/api/operator')
  Future<ResponseModelPagination<List<TelephoneOperatorModel>?>>
      telephoneOperator(
    @Query('pageNo') int pageNo,
    @Query('pageSize') int pageSize,
  );
  @GET('/identity/api/user/me')
  Future<ResponseModel<MeModel>> me();

  @POST('/api/auth/login')
  Future<ResponseModel<LoginResponseModel?>> login(
    @Body() LoginModel loginModel,
  );

  @POST('/identity/api/auth/refresh')
  Future<ResponseModel<LoginResponseModel?>> refreshToken(
    @Query('token') String token,
  );

  @POST('/identity/api/auth/validate')
  Future<ResponseModel<dynamic>> validateToken(
    @Query('token') String token,
  );

  // SERVICES
  @POST('/service/api/service/certification/simple')
  Future<ResponseModel<SimpleCertificateResponse>> simpleCertificate(
    @Body() SimpleCertificateModel simpleCertificateModel,
  );

  @PUT('/service/api/service/process')
  Future<ResponseModel<ProcessResponse>> process(
    @Body() ProcessModel processModel,
  );

  @PUT('/service/api/service/cancel')
  Future<ResponseModel<ProcessResponse>> cancel(
    @Body() CancelModel cancelModel,
  );

  @GET('/api/type/service')
  Future<ResponseModelPagination<List<TypeServiceModel>>> typeServices(
    @Query('pageNo') int pageNo,
    @Query('pageSize') int pageSize,
    @Query('filter') String filter,
    @Query('sortBy') String sortBy,
    @Query('sortType') String sortType,
  );

  // @POST('/service/api/service/validate')
  // Future<ResponseModel<RegisterCitizenModel>> validateNui(
  //   @Body() NuiModel nuiModel,
  // );

  //COMMONS
  @GET('/identity/api/location/province')
  Future<ResponseModelPagination<List<LocationModel>?>> provinces(
    @Query('pageNo') int pageNo,
    @Query('pageSize') int pageSize,
  );

  @GET('/identity/api/location/canton')
  Future<ResponseModelPagination<List<LocationModel>?>> canton(
    @Query('pageNo') int pageNo,
    @Query('pageSize') int pageSize,
  );

  @GET('/identity/api/location/parroquia')
  Future<ResponseModelPagination<List<LocationModel>?>> parroquias(
    @Query('pageNo') int pageNo,
    @Query('pageSize') int pageSize,
  );

  @GET('/identity/api/agency')
  Future<ResponseModelPagination<List<AgencyModel>?>> agencies(
    @Query('pageNo') int pageNo,
    @Query('pageSize') int pageSize,
  );

  @GET('/identity/api/agency/by')
  Future<ResponseModelPagination<List<AgencyModel>?>> agenciesByProvince(
    @Query('province') String province,
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
    @Query('agency') String agency,
    @Query('typeOfService') int typeOfService, {
    @Query('special') required bool special,
  });

  @GET('/schedule/api/schedule')
  Future<ResponseModelPagination<List<ScheduleModel>?>> schedules(
    @Query('pageNo') int pageNo,
    @Query('pageSize') int pageSize,
  );

  @GET('/schedule/api/receipt/byuser')
  Future<ResponseModelPagination<List<UserScheduleModel>?>> schedulesByUser(
    @Query('pageNo') int pageNo,
    @Query('pageSize') int pageSize,
    @Query('user') String userId,
  );

  @POST('/schedule/api/receipt')
  Future<ResponseModel<BookedReceiptModel>> confirmSchedule(
    @Body() ReceiptModel receiptModel,
  );

  //PLACE TO PAY PAYMENT
  @POST(
      'http://payment.registro-civil.ddns.net/placetopay/d592071c-8013-4320-a082-c88354b0ea6c/transactions')
  Future<PlaceToPayReferenceModel>
      createPlaceToPayTransaction(
    @Body() PlaceToPayModel placeToPayModel,
  );

  @GET(
      'http://payment.registro-civil.ddns.net/placetopay/d592071c-8013-4320-a082-c88354b0ea6c/transactions/{reference}')
  Future<PlaceToPayTransactionDetailsModel?>
      checkPlaceToPayTransaction(
    @Path('reference') String reference,
  );
}
