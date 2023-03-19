import 'package:registro_civil_apk/data/models/auth/login_model.dart';
import 'package:registro_civil_apk/data/models/auth/register_model.dart';
import 'package:registro_civil_apk/data/providers/dio_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'auth_providers.g.dart';

@riverpod
class Register extends _$Register {
  @override
  RegisterModel build() => RegisterModel();

  void updateNui(NuiModel nui) => state = state.copyWith(nui: nui.nui);

  void updateSecurityQuestions(SecurityQuestionsModel securityQuestions) =>
      state = state.copyWith(questions: {
        '¿Cuál es el segundo nombre de tu primo mayor?':
            securityQuestions.nameElderCousin,
        '¿En qué ciudad se conocieron tus padres?':
            securityQuestions.cityMetParents,
      });

  void updateEnterData(EnterDataModel enterData) => state = state.copyWith(
        email: enterData.email,
        password: enterData.confirmPassword!.newPassword,
      );

  // void _reset() => state = RegisterModel();
}

@riverpod
Future<bool> checkRegister(
    CheckRegisterRef ref, RegisterModel registerModel) async {
  final api = ref.watch(apiProvider);
  final response = await api.register(registerModel);
  return response.statusCode == 200;
}

@riverpod
Future<String?> login(LoginRef ref, LoginModel loginModel) async {
  final api = ref.watch(apiProvider);
  final response = await api.login(loginModel);
  if (response.statusCode == 200) {
    return (response.body as Map<String, dynamic>)['token'] as String?;
  }
  return null;
}
