import 'package:freezed_annotation/freezed_annotation.dart';
part 'commands_model.g.dart';
part 'commands_model.freezed.dart';

@freezed
class CommandModel with _$CommandModel {
  const factory CommandModel({
    required String id,
    required String command,
  }) = _CommandModel;

  factory CommandModel.fromJson(Map<String, dynamic> json) =>
      _$CommandModelFromJson(json);
}

@freezed
class CommandWithTransactionCodeModel with _$CommandWithTransactionCodeModel {
  const factory CommandWithTransactionCodeModel({
    required String id,
    required String transactionCode,
    required String command,
  }) = _CommandWithTransactionCodeModel;

  factory CommandWithTransactionCodeModel.fromJson(Map<String, dynamic> json) =>
      _$CommandWithTransactionCodeModelFromJson(json);
}

@freezed
class CommandListModel with _$CommandListModel {
  const factory CommandListModel({
    required List<String> id,
    required String command,
  }) = _CommandListModel;

  factory CommandListModel.fromJson(Map<String, dynamic> json) =>
      _$CommandListModelFromJson(json);
}

@freezed
class CommandListWithTransactionCodeModel
    with _$CommandListWithTransactionCodeModel {
  const factory CommandListWithTransactionCodeModel({
    required List<String> id,
    required String transactionCode,
    required String command,
  }) = _CommandListWithTransactionCodeModel;

  factory CommandListWithTransactionCodeModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$CommandListWithTransactionCodeModelFromJson(json);
}
