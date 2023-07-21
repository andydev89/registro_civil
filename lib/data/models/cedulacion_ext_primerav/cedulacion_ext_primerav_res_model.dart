import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/utils/validators.dart';
part 'cedulacion_ext_primerav_res_model.g.dart';
part 'cedulacion_ext_primerav_res_model.freezed.dart';

@freezed
class CedulacionExtpVResModel with _$CedulacionExtpVResModel {
  @JsonSerializable(explicitToJson: true)
  const factory CedulacionExtpVResModel({
    String? timestamp,
    int? status,
    String? message,
    List<String>? errors,
    Data? data,
  }) = _CedulacionExtpVResModel;

  const CedulacionExtpVResModel._();

  factory CedulacionExtpVResModel.fromJson(Map<String, dynamic> json) =>
      _$CedulacionExtpVResModelFromJson(json);
}

@freezed
class Data with _$Data {
  @JsonSerializable(explicitToJson: true)
  const factory Data({
    String? visa,
    int? transactionCode,
    String? command,
  }) = _Data;

  const Data._();

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
