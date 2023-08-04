// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_validation_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$validateDocumentHash() => r'7548b1905581891a716b17f7d47c74a410520857';

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

typedef ValidateDocumentRef
    = AutoDisposeFutureProviderRef<DocumentValidationResponseModel>;

/// See also [validateDocument].
@ProviderFor(validateDocument)
const validateDocumentProvider = ValidateDocumentFamily();

/// See also [validateDocument].
class ValidateDocumentFamily
    extends Family<AsyncValue<DocumentValidationResponseModel>> {
  /// See also [validateDocument].
  const ValidateDocumentFamily();

  /// See also [validateDocument].
  ValidateDocumentProvider call({
    required String documentCode,
    required String issueDate,
  }) {
    return ValidateDocumentProvider(
      documentCode: documentCode,
      issueDate: issueDate,
    );
  }

  @override
  ValidateDocumentProvider getProviderOverride(
    covariant ValidateDocumentProvider provider,
  ) {
    return call(
      documentCode: provider.documentCode,
      issueDate: provider.issueDate,
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
  String? get name => r'validateDocumentProvider';
}

/// See also [validateDocument].
class ValidateDocumentProvider
    extends AutoDisposeFutureProvider<DocumentValidationResponseModel> {
  /// See also [validateDocument].
  ValidateDocumentProvider({
    required this.documentCode,
    required this.issueDate,
  }) : super.internal(
          (ref) => validateDocument(
            ref,
            documentCode: documentCode,
            issueDate: issueDate,
          ),
          from: validateDocumentProvider,
          name: r'validateDocumentProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$validateDocumentHash,
          dependencies: ValidateDocumentFamily._dependencies,
          allTransitiveDependencies:
              ValidateDocumentFamily._allTransitiveDependencies,
        );

  final String documentCode;
  final String issueDate;

  @override
  bool operator ==(Object other) {
    return other is ValidateDocumentProvider &&
        other.documentCode == documentCode &&
        other.issueDate == issueDate;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, documentCode.hashCode);
    hash = _SystemHash.combine(hash, issueDate.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
