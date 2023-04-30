// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$availableSchedulesHash() =>
    r'a29d3e1f5e1a336c60e77bb2fc17a51873b2e484';

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
  AvailableSchedulesProvider call({
    required DateTime startDate,
    required DateTime endDate,
    required String agency,
    required int typeOfService,
    required bool special,
  }) {
    return AvailableSchedulesProvider(
      startDate: startDate,
      endDate: endDate,
      agency: agency,
      typeOfService: typeOfService,
      special: special,
    );
  }

  @override
  AvailableSchedulesProvider getProviderOverride(
    covariant AvailableSchedulesProvider provider,
  ) {
    return call(
      startDate: provider.startDate,
      endDate: provider.endDate,
      agency: provider.agency,
      typeOfService: provider.typeOfService,
      special: provider.special,
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
  AvailableSchedulesProvider({
    required this.startDate,
    required this.endDate,
    required this.agency,
    required this.typeOfService,
    required this.special,
  }) : super.internal(
          (ref) => availableSchedules(
            ref,
            startDate: startDate,
            endDate: endDate,
            agency: agency,
            typeOfService: typeOfService,
            special: special,
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
  final String agency;
  final int typeOfService;
  final bool special;

  @override
  bool operator ==(Object other) {
    return other is AvailableSchedulesProvider &&
        other.startDate == startDate &&
        other.endDate == endDate &&
        other.agency == agency &&
        other.typeOfService == typeOfService &&
        other.special == special;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, startDate.hashCode);
    hash = _SystemHash.combine(hash, endDate.hashCode);
    hash = _SystemHash.combine(hash, agency.hashCode);
    hash = _SystemHash.combine(hash, typeOfService.hashCode);
    hash = _SystemHash.combine(hash, special.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$schedulesHash() => r'b86bcd91ba72dd28a78636b6050df71116112061';

/// See also [schedules].
@ProviderFor(schedules)
final schedulesProvider =
    AutoDisposeFutureProvider<Result<List<ScheduleModel>, StatusCode>>.internal(
  schedules,
  name: r'schedulesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$schedulesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SchedulesRef
    = AutoDisposeFutureProviderRef<Result<List<ScheduleModel>, StatusCode>>;
String _$schedulesByUserHash() => r'5ec5339555d8cd5af449fa0aa14c4b2808195fba';

/// See also [schedulesByUser].
@ProviderFor(schedulesByUser)
final schedulesByUserProvider = AutoDisposeFutureProvider<
    Result<List<UserScheduleModel>, StatusCode>>.internal(
  schedulesByUser,
  name: r'schedulesByUserProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$schedulesByUserHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SchedulesByUserRef
    = AutoDisposeFutureProviderRef<Result<List<UserScheduleModel>, StatusCode>>;
String _$confirmScheduleHash() => r'2fc651dea63b9a07e1bb10f776fb378537e9695b';
typedef ConfirmScheduleRef
    = AutoDisposeFutureProviderRef<Result<BookedReceiptModel, StatusCode>>;

/// See also [confirmSchedule].
@ProviderFor(confirmSchedule)
const confirmScheduleProvider = ConfirmScheduleFamily();

/// See also [confirmSchedule].
class ConfirmScheduleFamily
    extends Family<AsyncValue<Result<BookedReceiptModel, StatusCode>>> {
  /// See also [confirmSchedule].
  const ConfirmScheduleFamily();

  /// See also [confirmSchedule].
  ConfirmScheduleProvider call({
    required ReceiptModel recipt,
  }) {
    return ConfirmScheduleProvider(
      recipt: recipt,
    );
  }

  @override
  ConfirmScheduleProvider getProviderOverride(
    covariant ConfirmScheduleProvider provider,
  ) {
    return call(
      recipt: provider.recipt,
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
  String? get name => r'confirmScheduleProvider';
}

/// See also [confirmSchedule].
class ConfirmScheduleProvider
    extends AutoDisposeFutureProvider<Result<BookedReceiptModel, StatusCode>> {
  /// See also [confirmSchedule].
  ConfirmScheduleProvider({
    required this.recipt,
  }) : super.internal(
          (ref) => confirmSchedule(
            ref,
            recipt: recipt,
          ),
          from: confirmScheduleProvider,
          name: r'confirmScheduleProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$confirmScheduleHash,
          dependencies: ConfirmScheduleFamily._dependencies,
          allTransitiveDependencies:
              ConfirmScheduleFamily._allTransitiveDependencies,
        );

  final ReceiptModel recipt;

  @override
  bool operator ==(Object other) {
    return other is ConfirmScheduleProvider && other.recipt == recipt;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, recipt.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
