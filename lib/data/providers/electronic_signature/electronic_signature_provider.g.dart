// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'electronic_signature_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$signatureHash() => r'3cfbb15cb65aeed7c7c5547901b6c9c44807a4f4';

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

typedef SignatureRef = AutoDisposeFutureProviderRef<
    Result<CommandWithTransactionCodeModel, StatusCodeType>>;

/// See also [signature].
@ProviderFor(signature)
const signatureProvider = SignatureFamily();

/// See also [signature].
class SignatureFamily extends Family<
    AsyncValue<Result<CommandWithTransactionCodeModel, StatusCodeType>>> {
  /// See also [signature].
  const SignatureFamily();

  /// See also [signature].
  SignatureProvider call({
    required ElectronicSignatureModel model,
  }) {
    return SignatureProvider(
      model: model,
    );
  }

  @override
  SignatureProvider getProviderOverride(
    covariant SignatureProvider provider,
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
  String? get name => r'signatureProvider';
}

/// See also [signature].
class SignatureProvider extends AutoDisposeFutureProvider<
    Result<CommandWithTransactionCodeModel, StatusCodeType>> {
  /// See also [signature].
  SignatureProvider({
    required this.model,
  }) : super.internal(
          (ref) => signature(
            ref,
            model: model,
          ),
          from: signatureProvider,
          name: r'signatureProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$signatureHash,
          dependencies: SignatureFamily._dependencies,
          allTransitiveDependencies: SignatureFamily._allTransitiveDependencies,
        );

  final ElectronicSignatureModel model;

  @override
  bool operator ==(Object other) {
    return other is SignatureProvider && other.model == model;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, model.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$signaturesHash() => r'67f7abdb65db49c26b939d787442deb0c5544ce2';
typedef SignaturesRef = AutoDisposeFutureProviderRef<
    ResponseModelPagination<List<ElectronicSignatureModel>>>;

/// See also [signatures].
@ProviderFor(signatures)
const signaturesProvider = SignaturesFamily();

/// See also [signatures].
class SignaturesFamily extends Family<
    AsyncValue<ResponseModelPagination<List<ElectronicSignatureModel>>>> {
  /// See also [signatures].
  const SignaturesFamily();

  /// See also [signatures].
  SignaturesProvider call({
    int? pageNo,
  }) {
    return SignaturesProvider(
      pageNo: pageNo,
    );
  }

  @override
  SignaturesProvider getProviderOverride(
    covariant SignaturesProvider provider,
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
  String? get name => r'signaturesProvider';
}

/// See also [signatures].
class SignaturesProvider extends AutoDisposeFutureProvider<
    ResponseModelPagination<List<ElectronicSignatureModel>>> {
  /// See also [signatures].
  SignaturesProvider({
    this.pageNo,
  }) : super.internal(
          (ref) => signatures(
            ref,
            pageNo: pageNo,
          ),
          from: signaturesProvider,
          name: r'signaturesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$signaturesHash,
          dependencies: SignaturesFamily._dependencies,
          allTransitiveDependencies:
              SignaturesFamily._allTransitiveDependencies,
        );

  final int? pageNo;

  @override
  bool operator ==(Object other) {
    return other is SignaturesProvider && other.pageNo == pageNo;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, pageNo.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$electronicSignatureHash() =>
    r'3780130ec3bd58e58de322b19ee4c9be1880c84f';

/// See also [ElectronicSignature].
@ProviderFor(ElectronicSignature)
final electronicSignatureProvider = AutoDisposeNotifierProvider<
    ElectronicSignature, ElectronicSignatureModel>.internal(
  ElectronicSignature.new,
  name: r'electronicSignatureProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$electronicSignatureHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ElectronicSignature = AutoDisposeNotifier<ElectronicSignatureModel>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
