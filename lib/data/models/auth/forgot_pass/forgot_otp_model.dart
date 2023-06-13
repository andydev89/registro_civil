import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/utils/utils.dart';

part 'forgot_otp_model.g.dart';
part 'forgot_otp_model.gform.dart';

@ReactiveFormAnnotation()
@JsonSerializable()
class ForgotOtpModel {

  ForgotOtpModel({
    @FormControlAnnotation(validators: [requiredValidator]) this.code = '',
    this.userId,
  });

  factory ForgotOtpModel.fromJson(Map<String, dynamic> json) =>
      _$ForgotOtpModelFromJson(json);

  final String code;
  String? userId;

  Map<String, dynamic> toJson() => _$ForgotOtpModelToJson(this);
}
