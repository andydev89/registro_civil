// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$pageHash() => r'7a885840a0af30487c59e9cb9fb6f995a47c6bd6';

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

abstract class _$Page extends BuildlessAutoDisposeNotifier<int> {
  late final int id;

  int build(
    int id,
  );
}

/// See also [Page].
@ProviderFor(Page)
const pageProvider = PageFamily();

/// See also [Page].
class PageFamily extends Family<int> {
  /// See also [Page].
  const PageFamily();

  /// See also [Page].
  PageProvider call(
    int id,
  ) {
    return PageProvider(
      id,
    );
  }

  @override
  PageProvider getProviderOverride(
    covariant PageProvider provider,
  ) {
    return call(
      provider.id,
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
  String? get name => r'pageProvider';
}

/// See also [Page].
class PageProvider extends AutoDisposeNotifierProviderImpl<Page, int> {
  /// See also [Page].
  PageProvider(
    this.id,
  ) : super.internal(
          () => Page()..id = id,
          from: pageProvider,
          name: r'pageProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product') ? null : _$pageHash,
          dependencies: PageFamily._dependencies,
          allTransitiveDependencies: PageFamily._allTransitiveDependencies,
        );

  final int id;

  @override
  bool operator ==(Object other) {
    return other is PageProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  int runNotifierBuild(
    covariant Page notifier,
  ) {
    return notifier.build(
      id,
    );
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
