// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_of_name_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$changeOfNameHash() => r'd2cb81b71c78bc2675fe94587a062a943fd11374';

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

typedef ChangeOfNameRef
    = AutoDisposeFutureProviderRef<Result<CommandModel, StatusCode>>;

/// See also [changeOfName].
@ProviderFor(changeOfName)
const changeOfNameProvider = ChangeOfNameFamily();

/// See also [changeOfName].
class ChangeOfNameFamily
    extends Family<AsyncValue<Result<CommandModel, StatusCode>>> {
  /// See also [changeOfName].
  const ChangeOfNameFamily();

  /// See also [changeOfName].
  ChangeOfNameProvider call({
    required ChangeOfNameModel changeOfNameModel,
  }) {
    return ChangeOfNameProvider(
      changeOfNameModel: changeOfNameModel,
    );
  }

  @override
  ChangeOfNameProvider getProviderOverride(
    covariant ChangeOfNameProvider provider,
  ) {
    return call(
      changeOfNameModel: provider.changeOfNameModel,
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
  String? get name => r'changeOfNameProvider';
}

/// See also [changeOfName].
class ChangeOfNameProvider
    extends AutoDisposeFutureProvider<Result<CommandModel, StatusCode>> {
  /// See also [changeOfName].
  ChangeOfNameProvider({
    required this.changeOfNameModel,
  }) : super.internal(
          (ref) => changeOfName(
            ref,
            changeOfNameModel: changeOfNameModel,
          ),
          from: changeOfNameProvider,
          name: r'changeOfNameProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$changeOfNameHash,
          dependencies: ChangeOfNameFamily._dependencies,
          allTransitiveDependencies:
              ChangeOfNameFamily._allTransitiveDependencies,
        );

  final ChangeOfNameModel changeOfNameModel;

  @override
  bool operator ==(Object other) {
    return other is ChangeOfNameProvider &&
        other.changeOfNameModel == changeOfNameModel;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, changeOfNameModel.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
