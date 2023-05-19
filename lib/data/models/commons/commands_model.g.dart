// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commands_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommandModel _$$_CommandModelFromJson(Map<String, dynamic> json) =>
    _$_CommandModel(
      id: json['id'] as String,
      command: json['command'] as String,
    );

Map<String, dynamic> _$$_CommandModelToJson(_$_CommandModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'command': instance.command,
    };

_$_CommandWithTransactionCodeModel _$$_CommandWithTransactionCodeModelFromJson(
        Map<String, dynamic> json) =>
    _$_CommandWithTransactionCodeModel(
      id: json['id'] as String,
      transactionCode: json['transactionCode'] as String,
      command: json['command'] as String,
    );

Map<String, dynamic> _$$_CommandWithTransactionCodeModelToJson(
        _$_CommandWithTransactionCodeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'transactionCode': instance.transactionCode,
      'command': instance.command,
    };

_$_CommandListModel _$$_CommandListModelFromJson(Map<String, dynamic> json) =>
    _$_CommandListModel(
      id: (json['id'] as List<dynamic>).map((e) => e as String).toList(),
      command: json['command'] as String,
    );

Map<String, dynamic> _$$_CommandListModelToJson(_$_CommandListModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'command': instance.command,
    };

_$_CommandListWithTransactionCodeModel
    _$$_CommandListWithTransactionCodeModelFromJson(
            Map<String, dynamic> json) =>
        _$_CommandListWithTransactionCodeModel(
          id: (json['id'] as List<dynamic>).map((e) => e as String).toList(),
          transactionCode: json['transactionCode'] as String,
          command: json['command'] as String,
        );

Map<String, dynamic> _$$_CommandListWithTransactionCodeModelToJson(
        _$_CommandListWithTransactionCodeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'transactionCode': instance.transactionCode,
      'command': instance.command,
    };
