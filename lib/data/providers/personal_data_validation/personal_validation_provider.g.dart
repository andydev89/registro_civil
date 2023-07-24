// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'personal_validation_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$personalValidationsHash() =>
    r'cef51038108cd3204ebd6b32c8ba4ddfc3144ca1';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

typedef PersonalValidationsRef = AutoDisposeFutureProviderRef<
    ResponseModelPagination<List<PersonalValidationListModel>>>;

/// See also [personalValidations].
@ProviderFor(personalValidations)
const personalValidationsProvider = PersonalValidationsFamily();

/// See also [personalValidations].
class PersonalValidationsFamily extends Family<
    AsyncValue<ResponseModelPagination<List<PersonalValidationListModel>>>> {
  /// See also [personalValidations].
  const PersonalValidationsFamily();

  /// See also [personalValidations].
  PersonalValidationsProvider call({
    int? pageNo,
  }) {
    return PersonalValidationsProvider(
      pageNo: pageNo,
    );
  }

  @override
  PersonalValidationsProvider getProviderOverride(
    covariant PersonalValidationsProvider provider,
  ) {
    return call(
      pageNo: provider.pageNo,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'personalValidationsProvider';
}

/// See also [personalValidations].
class PersonalValidationsProvider extends AutoDisposeFutureProvider<
    ResponseModelPagination<List<PersonalValidationListModel>>> {
  /// See also [personalValidations].
  PersonalValidationsProvider({
    this.pageNo,
  }) : super.internal(
          (ref) => personalValidations(
            ref,
            pageNo: pageNo,
          ),
          from: personalValidationsProvider,
          name: r'personalValidationsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$personalValidationsHash,
          dependencies: PersonalValidationsFamily._dependencies,
          allTransitiveDependencies:
              PersonalValidationsFamily._allTransitiveDependencies,
        );

  final int? pageNo;

  @override
  bool operator ==(Object other) {
    return other is PersonalValidationsProvider && other.pageNo == pageNo;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, pageNo.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$personalDataHash() => r'dde8ef0700bad5dece1185e3d9344cdf4ca7a532';
typedef PersonalDataRef
    = AutoDisposeFutureProviderRef<Result<CommandNuiModel, StatusCodeType>>;

/// See also [personalData].
@ProviderFor(personalData)
const personalDataProvider = PersonalDataFamily();

/// See also [personalData].
class PersonalDataFamily
    extends Family<AsyncValue<Result<CommandNuiModel, StatusCodeType>>> {
  /// See also [personalData].
  const PersonalDataFamily();

  /// See also [personalData].
  PersonalDataProvider call({
    required PersonalValidationRequestModel model,
  }) {
    return PersonalDataProvider(
      model: model,
    );
  }

  @override
  PersonalDataProvider getProviderOverride(
    covariant PersonalDataProvider provider,
  ) {
    return call(
      model: provider.model,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'personalDataProvider';
}

/// See also [personalData].
class PersonalDataProvider
    extends AutoDisposeFutureProvider<Result<CommandNuiModel, StatusCodeType>> {
  /// See also [personalData].
  PersonalDataProvider({
    required this.model,
  }) : super.internal(
          (ref) => personalData(
            ref,
            model: model,
          ),
          from: personalDataProvider,
          name: r'personalDataProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$personalDataHash,
          dependencies: PersonalDataFamily._dependencies,
          allTransitiveDependencies:
              PersonalDataFamily._allTransitiveDependencies,
        );

  final PersonalValidationRequestModel model;

  @override
  bool operator ==(Object other) {
    return other is PersonalDataProvider && other.model == model;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, model.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$personalDataByIdHash() => r'4b51367a9b70804590956b2df3b4f944752be248';

/// See also [personalDataById].
@ProviderFor(personalDataById)
final personalDataByIdProvider =
    AutoDisposeFutureProvider<PersonalValidationResponseModel?>.internal(
  personalDataById,
  name: r'personalDataByIdProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$personalDataByIdHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef PersonalDataByIdRef
    = AutoDisposeFutureProviderRef<PersonalValidationResponseModel?>;
String _$personalValidationRequestsHash() =>
    r'e63fe3362c65b44e84e87c70c341847abcb713f4';

/// See also [PersonalValidationRequests].
@ProviderFor(PersonalValidationRequests)
final personalValidationRequestsProvider = NotifierProvider<
    PersonalValidationRequests, Map<String, ModifiedDataModel>>.internal(
  PersonalValidationRequests.new,
  name: r'personalValidationRequestsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$personalValidationRequestsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PersonalValidationRequests = Notifier<Map<String, ModifiedDataModel>>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
