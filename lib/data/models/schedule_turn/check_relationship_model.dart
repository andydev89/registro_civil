import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_relationship_model.g.dart';
part 'check_relationship_model.freezed.dart';

@freezed
class CheckRelationshipModel with _$CheckRelationshipModel {
  const factory CheckRelationshipModel({
    required bool result,
  }) = _CheckRelationshipModel;

  factory CheckRelationshipModel.fromJson(Map<String, dynamic> json) =>
      _$CheckRelationshipModelFromJson(json);
}
