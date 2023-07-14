import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';

part 'personal_validation_list_model.g.dart';
part 'personal_validation_list_model.freezed.dart';

@Freezed()
class PersonalValidationListModel with _$PersonalValidationListModel {
  @JsonSerializable(explicitToJson: true)
  const factory PersonalValidationListModel({
    String? id,
    String? nut,
    String? description,
    DateTime? createdAt,
    DateTime? updatedAt,
    @Default(
      StateDocument.pending,
    )
    StateDocument state,
    String? citizen,
    UserDataModel? user,
    required List<ModifiedDataListModel> modifiedData,
  }) = _PersonalValidationListModel;

  const PersonalValidationListModel._();

  factory PersonalValidationListModel.fromJson(Map<String, dynamic> json) =>
      _$PersonalValidationListModelFromJson(json);
}

@freezed
class UserDataModel with _$UserDataModel {
  @JsonSerializable(explicitToJson: true)
  const factory UserDataModel({
    String? id,
    String? firstName,
    String? lastName,
    String? identification,
    String? email,
    String? phone,
  }) = _UserDataModel;

  const UserDataModel._();

  factory UserDataModel.fromJson(Map<String, dynamic> json) =>
      _$UserDataModelFromJson(json);
}

@freezed
class ModifiedDataListModel with _$ModifiedDataListModel {
  @JsonSerializable(explicitToJson: true)
  const factory ModifiedDataListModel({
    String? attribute,
    String? original,
    String? modified,
  }) = _ModifiedDataListModel;

  const ModifiedDataListModel._();

  factory ModifiedDataListModel.fromJson(Map<String, dynamic> json) =>
      _$ModifiedDataListModelFromJson(json);
}
