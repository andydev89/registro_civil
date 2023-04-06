// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$availableSchedulesHash() =>
    r'b2a3e0e84b8c3095c5eb6e08af02ea25044888e7';

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

typedef AvailableSchedulesRef
    = AutoDisposeFutureProviderRef<Result<List<ScheduleModel>, StatusCode>>;

/// See also [availableSchedules].
@ProviderFor(availableSchedules)
const availableSchedulesProvider = AvailableSchedulesFamily();

/// See also [availableSchedules].
class AvailableSchedulesFamily
    extends Family<AsyncValue<Result<List<ScheduleModel>, StatusCode>>> {
  /// See also [availableSchedules].
  const AvailableSchedulesFamily();

  /// See also [availableSchedules].
  AvailableSchedulesProvider call(
    DateTime startDate,
    DateTime endDate,
    int typeOfService,
  ) {
    return AvailableSchedulesProvider(
      startDate,
      endDate,
      typeOfService,
    );
  }

  @override
  AvailableSchedulesProvider getProviderOverride(
    covariant AvailableSchedulesProvider provider,
  ) {
    return call(
      provider.startDate,
      provider.endDate,
      provider.typeOfService,
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
  String? get name => r'availableSchedulesProvider';
}

/// See also [availableSchedules].
class AvailableSchedulesProvider
    extends AutoDisposeFutureProvider<Result<List<ScheduleModel>, StatusCode>> {
  /// See also [availableSchedules].
  AvailableSchedulesProvider(
    this.startDate,
    this.endDate,
    this.typeOfService,
  ) : super.internal(
          (ref) => availableSchedules(
            ref,
            startDate,
            endDate,
            typeOfService,
          ),
          from: availableSchedulesProvider,
          name: r'availableSchedulesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$availableSchedulesHash,
          dependencies: AvailableSchedulesFamily._dependencies,
          allTransitiveDependencies:
              AvailableSchedulesFamily._allTransitiveDependencies,
        );

  final DateTime startDate;
  final DateTime endDate;
  final int typeOfService;

  @override
  bool operator ==(Object other) {
    return other is AvailableSchedulesProvider &&
        other.startDate == startDate &&
        other.endDate == endDate &&
        other.typeOfService == typeOfService;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, startDate.hashCode);
    hash = _SystemHash.combine(hash, endDate.hashCode);
    hash = _SystemHash.combine(hash, typeOfService.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
