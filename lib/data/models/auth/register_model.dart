import 'package:json_annotation/json_annotation.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/enum/services/status_enum.dart';
import 'package:registro_civil_apk/data/models/auth/auth_response.dart';
import 'package:registro_civil_apk/data/utils/validators.dart';
part 'register_model.g.dart';
part 'register_model.gform.dart';

@JsonSerializable()
@ReactiveFormAnnotation()
class NuiModel {
  NuiModel({
    @FormControlAnnotation(
      validators: [
        requiredValidator,
        ecuadorDniValidator,
        length10Validator,
      ],
    )
        this.nui = '',
  });

  factory NuiModel.fromJson(Map<String, dynamic> json) =>
      _$NuiModelFromJson(json);

  final String nui;

  Map<String, dynamic> toJson() => _$NuiModelToJson(this);
}

@JsonSerializable()
@ReactiveFormAnnotation()
class EnterDataModel {
  EnterDataModel({
    @FormControlAnnotation(
      validators: [
        requiredValidator,
        ecuadorDniValidator,
        length10Validator,
      ],
    )
        this.nui = '',
    @FormControlAnnotation(validators: [requiredValidator])
        this.firstName = '',
    @FormControlAnnotation(validators: [requiredValidator])
        this.lastName = '',
    @FormControlAnnotation(validators: [requiredValidator, emailValidator])
        this.email = '',
    @FormControlAnnotation(
      validators: [
        requiredValidator,
        length10Validator,
      ],
      asyncValidators: [phoneNumberEcuadorValidation],
    )
        this.phone = '',
    @FormControlAnnotation(validators: [requiredValidator])
        this.telephoneOperator,
  });

  factory EnterDataModel.fromJson(Map<String, dynamic> json) =>
      _$EnterDataModelFromJson(json);

  final String nui;
  final String firstName;
  final String lastName;
  final String email;
  final String phone;
  @JsonKey(
    toJson: _telephoneOperatorToJson,
    fromJson: _telephoneOperatorFromJson,
  )
  final TelephoneOperatorModel? telephoneOperator;

  static String? _telephoneOperatorToJson(
    TelephoneOperatorModel? telephoneOperator,
  ) =>
      telephoneOperator?.id;

  static TelephoneOperatorModel? _telephoneOperatorFromJson(
    String? telephoneOperator,
  ) =>
      telephoneOperator == null
          ? null
          : TelephoneOperatorModel(id: telephoneOperator);

  Map<String, dynamic> toJson() => _$EnterDataModelToJson(this);
}

@JsonSerializable()
@ReactiveFormAnnotation()
class OtpModel {
  OtpModel({
    @FormControlAnnotation(validators: [requiredValidator]) this.code = '',
    @FormControlAnnotation(validators: [requiredTrueValidator])
        this.isVerified = false,
  });

  factory OtpModel.fromJson(Map<String, dynamic> json) =>
      _$OtpModelFromJson(json);

  final bool isVerified;
  final String code;

  Map<String, dynamic> toJson() => _$OtpModelToJson(this);
}

@JsonSerializable()
class RegisterModel {
  RegisterModel({required this.code, required this.password});

  factory RegisterModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterModelFromJson(json);
  final String code;
  final String password;


  Map<String, dynamic> toJson() => _$RegisterModelToJson(this);
}

@JsonSerializable()
@ReactiveFormAnnotation()
class PasswordModel {
  PasswordModel({
    this.confirmPassword,
  });

  factory PasswordModel.fromJson(Map<String, dynamic> json) =>
      _$PasswordModelFromJson(json);

  final ConfirmPasswordModel? confirmPassword;

  Map<String, dynamic> toJson() => _$PasswordModelToJson(this);
}

@JsonSerializable()
@FormGroupAnnotation<ConfirmPasswordModel>(validators: [passwordsMustMatch])
class ConfirmPasswordModel {
  ConfirmPasswordModel({
    @FormControlAnnotation(validators: [requiredValidator, passwordValidator])
        this.newPassword = '',
    @FormControlAnnotation(validators: [requiredValidator])
        this.confirmPassword = '',
  });

  factory ConfirmPasswordModel.fromJson(Map<String, dynamic> json) =>
      _$ConfirmPasswordModelFromJson(json);

  final String confirmPassword;
  final String newPassword;

  Map<String, dynamic> toJson() => _$ConfirmPasswordModelToJson(this);
}

// Me Model
// @collection
@JsonSerializable()
class MeModel {
  MeModel({
    this.id = '',
    this.firstName = '',
    this.lastName = '',
    this.identification = '',
    this.email = '',
    this.type = '',
    this.state = Status.active,
    this.profile = const [],
    this.agency = const [],
    this.aplication = const [],
  });

  factory MeModel.fromJson(Map<String, dynamic> json) =>
      _$MeModelFromJson(json);
  final String id;
  final String firstName;
  final String lastName;
  final String identification;
  final String email;
  final String type;
  final Status state;
  final List<Profile> profile;
  final List<Agency> agency;
  final List<Aplication> aplication;

  Map<String, dynamic> toJson() => _$MeModelToJson(this);

  MeModel copyWith({
    String? id,
    String? firstName,
    String? lastName,
    String? identification,
    String? email,
    String? type,
    Status? state,
    List<Profile>? profile,
    List<Agency>? agency,
    List<Aplication>? aplication,
  }) {
    return MeModel(
      id: id ?? this.id,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      identification: identification ?? this.identification,
      email: email ?? this.email,
      type: type ?? this.type,
      state: state ?? this.state,
      profile: profile ?? this.profile,
      agency: agency ?? this.agency,
      aplication: aplication ?? this.aplication,
    );
  }
}

// @embedded
@JsonSerializable()
class Profile {
  Profile({
    this.id,
    this.name,
    this.description,
    this.state,
    this.agency,
    this.access,
  });

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);
  final String? id;
  final String? name;
  final String? description;
  final String? state;
  final Agency? agency;
  final List<Access>? access;

  Map<String, dynamic> toJson() => _$ProfileToJson(this);

  Profile copyWith({
    String? id,
    String? name,
    String? description,
    String? state,
    Agency? agency,
    List<Access>? access,
  }) {
    return Profile(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      state: state ?? this.state,
      agency: agency ?? this.agency,
      access: access ?? this.access,
    );
  }
}

// @embedded
@JsonSerializable()
class Agency {
  Agency({
    this.id,
    this.name,
    this.description,
    this.country,
    this.province,
    this.canton,
    this.parroquia,
    this.region,
    this.latitude,
    this.longitude,
    this.state,
  });

  factory Agency.fromJson(Map<String, dynamic> json) => _$AgencyFromJson(json);
  final String? id;
  final String? name;
  final String? description;
  final Territory? country;
  final Territory? province;
  final Territory? canton;
  final Territory? parroquia;
  final String? region;
  final String? latitude;
  final String? longitude;
  final String? state;

  Map<String, dynamic> toJson() => _$AgencyToJson(this);

  Agency copyWith({
    String? id,
    String? name,
    String? description,
    Territory? country,
    Territory? province,
    Territory? canton,
    Territory? parroquia,
    String? region,
    String? latitude,
    String? longitude,
    String? state,
  }) {
    return Agency(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      country: country ?? this.country,
      province: province ?? this.province,
      canton: canton ?? this.canton,
      parroquia: parroquia ?? this.parroquia,
      region: region ?? this.region,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      state: state ?? this.state,
    );
  }
}

// @embedded
@JsonSerializable()
class Aplication {
  Aplication({
    this.id,
    this.name,
    this.description,
    this.state,
  });

  factory Aplication.fromJson(Map<String, dynamic> json) =>
      _$AplicationFromJson(json);
  final String? id;
  final String? name;
  final String? description;
  final String? state;

  Map<String, dynamic> toJson() => _$AplicationToJson(this);

  Aplication copyWith({
    String? id,
    String? name,
    String? description,
    String? state,
  }) {
    return Aplication(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      state: state ?? this.state,
    );
  }
}

// @embedded
@JsonSerializable()
class Access {
  Access({
    this.id,
    this.name,
    this.code,
    this.description,
  });

  factory Access.fromJson(Map<String, dynamic> json) => _$AccessFromJson(json);
  final String? id;
  final String? name;
  final int? code;
  final String? description;

  Map<String, dynamic> toJson() => _$AccessToJson(this);

  Access copyWith({
    String? id,
    String? name,
    int? code,
    String? description,
  }) {
    return Access(
      id: id ?? this.id,
      name: name ?? this.name,
      code: code ?? this.code,
      description: description ?? this.description,
    );
  }
}

// @embedded
@JsonSerializable()
class Territory {
  Territory({
    this.id,
    this.name,
    this.type,
  });

  factory Territory.fromJson(Map<String, dynamic> json) =>
      _$TerritoryFromJson(json);
  final String? id;
  final String? name;
  final String? type;

  Map<String, dynamic> toJson() => _$TerritoryToJson(this);

  Territory copyWith({
    String? id,
    String? name,
    String? type,
  }) {
    return Territory(
      id: id ?? this.id,
      name: name ?? this.name,
      type: type ?? this.type,
    );
  }
}
