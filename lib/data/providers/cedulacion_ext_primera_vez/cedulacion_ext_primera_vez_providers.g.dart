// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cedulacion_ext_primera_vez_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$validandovisaHash() => r'5461a17fcb5cf6667ab0d344a883a04c48479981';

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

typedef ValidandovisaRef = AutoDisposeFutureProviderRef<
    Result<CommandWithTransactionCodeModel, StatusCodeType>>;

/// See also [validandovisa].
@ProviderFor(validandovisa)
const validandovisaProvider = ValidandovisaFamily();

/// See also [validandovisa].
class ValidandovisaFamily extends Family<
    AsyncValue<Result<CommandWithTransactionCodeModel, StatusCodeType>>> {
  /// See also [validandovisa].
  const ValidandovisaFamily();

  /// See also [validandovisa].
  ValidandovisaProvider call({
    CedulacionExtpVModel? model,
  }) {
    return ValidandovisaProvider(
      model: model,
    );
  }

  @override
  ValidandovisaProvider getProviderOverride(
    covariant ValidandovisaProvider provider,
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
  String? get name => r'validandovisaProvider';
}

/// See also [validandovisa].
class ValidandovisaProvider extends AutoDisposeFutureProvider<
    Result<CommandWithTransactionCodeModel, StatusCodeType>> {
  /// See also [validandovisa].
  ValidandovisaProvider({
    this.model,
  }) : super.internal(
          (ref) => validandovisa(
            ref,
            model: model,
          ),
          from: validandovisaProvider,
          name: r'validandovisaProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$validandovisaHash,
          dependencies: ValidandovisaFamily._dependencies,
          allTransitiveDependencies:
              ValidandovisaFamily._allTransitiveDependencies,
        );

  final CedulacionExtpVModel? model;

  @override
  bool operator ==(Object other) {
    return other is ValidandovisaProvider && other.model == model;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, model.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$validarVisaHash() => r'4ec5b1e225791dd58dac11ec3bd787703c27f11f';

/// See also [ValidarVisa].
@ProviderFor(ValidarVisa)
final validarVisaProvider =
    AutoDisposeNotifierProvider<ValidarVisa, ValidarVisa>.internal(
  ValidarVisa.new,
  name: r'validarVisaProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$validarVisaHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ValidarVisa = AutoDisposeNotifier<ValidarVisa>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
