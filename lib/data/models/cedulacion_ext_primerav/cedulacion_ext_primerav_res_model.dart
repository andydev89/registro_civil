import 'package:freezed_annotation/freezed_annotation.dart';
part 'cedulacion_ext_primerav_res_model.g.dart';
part 'cedulacion_ext_primerav_res_model.freezed.dart';

@freezed
class CedulacionExtpVResModel with _$CedulacionExtpVResModel {
  const factory CedulacionExtpVResModel({
    String? timestamp,
    int? status,
    String? message,
    List<String>? errors,
    Data? data,
  }) = _CedulacionExtpVResModel;

  factory CedulacionExtpVResModel.fromJson(Map<String, dynamic> json) =>
      _$CedulacionExtpVResModelFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    String? visa,
    int? transactionCode,
    String? command,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
