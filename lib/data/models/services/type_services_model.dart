import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';

part 'type_services_model.g.dart';
part 'type_services_model.freezed.dart';

@freezed
class TypeServiceModel with _$TypeServiceModel {
  const factory TypeServiceModel({
    required String id,
    required String name,
    required String description,
    required double price,
    required double iva,
    required double discount,
    required StatusType state,
    required bool publishWeb,
    required bool publishMovil,
    String? path,
    required TypeEnumType typeEnum,
    required String iconoWeb,
    required String iconoMovil,
    // ignore: invalid_annotation_target
    @JsonKey(unknownEnumValue: ServiceType.none) required ServiceType type,
    required bool schedule,
  }) = _TypeServiceModel;

  const TypeServiceModel._();

  factory TypeServiceModel.fromJson(Map<String, dynamic> json) =>
      _$TypeServiceModelFromJson(json);

  double get total => price + iva - discount;

  bool get isFreeService => price == 0;
}
