import 'package:dio/dio.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:retrofit/http.dart' as retrofit_headers;
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

  @POST('api/user/password/recover/otp')
  Future<ResponseModel<CommandModelNui>> forgotPasswordSendOtp(
    @Body() EnterNuiModel nui,
  );

  @GET('/api/backoffice/user')
  Future<ResponseModel<List<MeModel>>> meByEmail(@Query('email') String email);

  @POST('api/user/password/recover/validate')
  Future<ResponseModel<ValidOtpModel>> forgotPasswordVerifyOtp(
    @Body() ForgotOtpModel otp,
  );

  @POST('api/user/password/recover/reset')
  Future<ResponseModel<CommandModel>> forgotPassword(
    @Body() ForgotConfirmPasswordModel confirmPasswordModel,
  );

  @POST('/api/user/register/data')
  Future<ResponseModel<CommandModel>> registerData(
    @Body() EnterDataModel enterDataModel,
  );

  @POST('/api/user/register/code')
  Future<ResponseModel<AuthCodeModel>> registerCode(
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
  Future<ResponseModel<SimpleCertificateResponseModel>> simpleCertificate(
    @Body() SimpleCertificateModel simpleCertificateModel,
  );

  @PUT('/service/api/service/process')
  Future<ResponseModel<ProcessResponseModel>> process(
    @Body() ProcessModel processModel,
  );

  @PUT('/service/api/service/cancel')
  Future<ResponseModel<ProcessResponseModel>> cancel(
    @Body() CancelModel cancelModel,
  );

  @GET('/api/type/service')
  Future<ResponseModelPagination<List<TypeServiceModel>>> typeServices({
    @Query('pageNo') int pageNo = 0,
    @Query('pageSize') int pageSize = 4,
    @Query('filter') String filter = '',
    @Query('sortBy') String sortBy = 'name',
    @Query('type') String type = '',
    @Query('sortType') String sortType = 'asc',
  });

  // @POST('/service/api/service/validate')
  // Future<ResponseModel<RegisterCitizenModel>> validateNui(
  //   @Body() NuiModel nuiModel,
  // );

  // MARRIAGE CELEBRATION
  @retrofit_headers.Headers({'Content-Type': 'application/json'})
  @POST('/marriage/api/marriage')
  Future<ResponseModel<CommandModel>> marriage(
    @Body() MarriageCelebrationModel model,
  );

  @GET('/marriage/api/marriage')
  Future<ResponseModelPagination<List<ResponseMarriageModel>>> marriages(
    @Query('userNui') String userNui, {
    @Query('pageNo') int pageNo = 0,
    @Query('pageSize') int pageSize = 20,
    @Query('state') String state = '',
    @Query('userId') String userId = '',
    @Query('createdAt') String createdAt = '',
    @Query('updatedAt') String updatedAt = '',
    @Query('interviewAt') String interviewAt = '',
    @Query('amountOfDays') String amountOfDays = '',
    @Query('provinceName') String provinceName = '',
    @Query('cantonName') String cantonName = '',
    @Query('agencyName') String agencyName = '',
    @Query('filter') String filter = '',
  });

  @GET('/marriage/api/marriage/documentation/documents')
  Future<ResponseModel<List<DocumentResponse>>> marriageDocuments(
    @Query('maritalStatus') String maritalStatus,
    @Query('childrenRelationship') String childrenRelationship, {
    @Query('hasChildren') bool hasChildren = false,
  });

  @GET('/marriage/api/marriage/{id}')
  Future<ResponseModel<MarriageCelebrationModel>> marriageById(
    @Path('id') String id,
  );

  @PUT('/marriage/api/marriage')
  Future<ResponseModel<CommandModel>> marriageUpdate(
    @Body() DocumentsRejection model,
  );

  // RESIDENCE REGISTRATION
  @GET('/residentialregistration/api/registration/user/{id}')
  Future<ResponseModel<List<ResidenceRegistration>>>
      resicenceRegistrationByUser(@Path('id') String id);

  @GET('/residentialregistration/api/registration/user/preview/{id}')
  Future<ResponseModel<DocumentModel>> residenceRegistrationPreviewByUser(
    @Path('id') String id,
  );

  @retrofit_headers.Headers({'Content-Type': 'application/json'})
  @POST('/residentialregistration/api/registration')
  Future<ResponseModel<CommandModel>> residenceRegistration(
    @Body() ResidenceRegistration model,
  );

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

  @GET('/identity/api/agency/by/canton?canton={canton}')
  Future<ResponseModelPagination<List<AgencyModel>?>> agenciesByCanton(
    @Path('canton') String canton,
    @Query('pageNo') int pageNo,
    @Query('pageSize') int pageSize,
  );

  @GET('/identity/api/location/parent/{id}')
  Future<ResponseModelPagination<List<LocationModel>?>> locationByParent(
    @Path('id') String province,
  );

  @GET('/service/api/type/service')
  Future<ResponseModelPagination<List<TypeServiceModel>>> services(
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
    @Query('typeOfService') String typeOfService, {
    @Query('special') required bool special,
  });

  @GET('/schedule/api/schedule')
  Future<ResponseModelPagination<List<ScheduleModel>?>> schedules(
    @Query('pageNo') int pageNo,
    @Query('pageSize') int pageSize,
  );

  @GET('/schedule/api/receipt')
  Future<ResponseModelPagination<List<UserScheduleModel>>> schedulesByUser(
    @Query('user') String userId, {
    @Query('pageNo') int pageNo = 0,
    @Query('pageSize') int pageSize = 20,
    @Query('filter') String filter = '',
    @Query('from') String from = '',
    @Query('to') String to = '',
    @Query('sortBy') String sortBy = 'time',
    @Query('sortType') String sortType = 'asc',
  });

  @POST('/schedule/api/receipt')
  Future<ResponseModel<CommandListWithTransactionCodeModel>> confirmSchedule(
    @Body() ReceiptModel receiptModel,
  );

  @POST('/schedule/api/receipt/payment')
  Future<ResponseModel<CommandWithTransactionCodeModel>>
      notifyPaymentOfSchedule(
    @Body() NotifyServicePaymentDoneModel notifyServicePaymentDoneModel,
  );

  @GET('/middleware/api/nui/relationship/check')
  Future<ResponseModel<CheckRelationshipModel?>> checkRelationship(
    @Query('firstNui') String firstNui,
    @Query('secondNui') String secondNui,
    @Query('relationship') String relationship,
  );

  //PLACE TO PAY PAYMENT
  @POST(
    'https://payment.sourcecodesas.com/placetopay/798de007-ce14-4ea7-ba02-94877625ce6d/transactions',
  )
  Future<PlaceToPayReferenceModel> createPlaceToPayTransaction(
    @Body() PlaceToPayModel placeToPayModel,
  );

  @GET(
    'https://payment.sourcecodesas.com/placetopay/798de007-ce14-4ea7-ba02-94877625ce6d/transactions/{reference}',
  )
  Future<PlaceToPayTransactionDetailsModel?> checkPlaceToPayTransaction(
    @Path('reference') String reference,
  );

  //CHANGE OF NAME
  @POST('/changename/api/changename')
  Future<ResponseModel<CommandWithTransactionCodeModel>> changeOfName(
    @Body() ChangeOfNameModel changeOfNameModel,
  );

  @POST('/changename/api/changename/payment')
  Future<ResponseModel<CommandModel>> notifyPaymentOfChangeOfName(
    @Body() NotifyServicePaymentDoneModel notifyServicePaymentDoneModel,
  );

  //ID DUPLICATE
  @POST('/duplicateid/api/duplicate')
  Future<ResponseModel<CommandWithTransactionCodeModel>> createDuplicate(
    @Body() IdDuplicateModel idDuplicateModel,
  );

  @GET('/duplicateid/api/duplicate')
  Future<ResponseModelPagination<List<IdDuplicateResponseModel>>> duplicates({
    @Query('pageNo') int pageNo = 0,
  });

  @GET('/duplicateid/api/duplicate/{id}')
  Future<ResponseModel<IdDuplicateModel>> duplicateById(
    @Path('id') String id,
  );

  //Signature
  @POST('/digitalsignature/api/digitalsignature')
  Future<ResponseModel<CommandWithTransactionCodeModel>> createSignature(
    @Body() ElectronicSignatureModel signatureModel,
  );

  @GET('/digitalsignature/api/digitalsignature')
  Future<ResponseModelPagination<List<ElectronicSignatureModel>>> signatures({
    @Query('pageNo') int pageNo = 0,
  });

  @GET('/digitalsignature/api/digitalsignature/{id}')
  Future<ResponseModel<ElectronicSignatureModel>> signatureById(
    @Path('id') String id,
  );

  //PERSONAL DATA VALIDATION
  @GET('/personaldatavalidator/api/personal-data/solicitudes')
  Future<ResponseModelPagination<List<PersonalValidationListModel>>>
      personalValidationRequests({
    @Query('pageNo') int pageNo = 0,
    @Query('userId') String userId = '',
  });

  @GET('/personaldatavalidator/api/personal-data/{nui}')
  Future<ResponseModel<PersonalValidationResponseModel>> personalDataById(
    @Path('nui') String nui,
  );

  @POST('/personaldatavalidator/api/personal-data')
  Future<ResponseModel<CommandNuiModel>> createPersonalDataRequest(
    @Body() PersonalValidationRequestModel model,
  );

  //BIRTH ABROAD
  @GET('/citizenship/api/citizenship')
  Future<ResponseModelPagination<List<BirthAbroadListModel>>> birthsAbroad({
    @Query('pageNo') int pageNo = 0,
    @Query('pageSize') int pageSize = 20,
    @Query('filter') String filter = '',
  });

  @POST('/citizenship/api/citizenship')
  Future<ResponseModel<CommandWithTransactionCodeModel>> createBirthAbroad({
    @Body() required BirthAbroadModel model,
  });

  @GET('/citizenship/api/citizenship/{id}')
  Future<ResponseModel<BirthAbroadListModel>> birthAbroadById(
      @Path('id') String id,
      );

  @GET('/citizenship/api/citizenship/document/{id}')
  Future<ResponseModel<Certificate>> documentById(
      @Path('id') String id,
      );
}
