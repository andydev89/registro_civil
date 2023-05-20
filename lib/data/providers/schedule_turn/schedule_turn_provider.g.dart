// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_turn_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$availableSchedulesHash() =>
    r'a09df7c4486ef3046a3aa175e98c46934e2b8b13';

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
    = AutoDisposeFutureProviderRef<Result<List<ScheduleModel>, StatusCodeType>>;

/// See also [availableSchedules].
@ProviderFor(availableSchedules)
const availableSchedulesProvider = AvailableSchedulesFamily();

/// See also [availableSchedules].
class AvailableSchedulesFamily
    extends Family<AsyncValue<Result<List<ScheduleModel>, StatusCodeType>>> {
  /// See also [availableSchedules].
  const AvailableSchedulesFamily();

  /// See also [availableSchedules].
  AvailableSchedulesProvider call({
    required DateTime startDate,
    required DateTime endDate,
    required String agency,
    required String typeOfService,
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
class AvailableSchedulesProvider extends AutoDisposeFutureProvider<
    Result<List<ScheduleModel>, StatusCodeType>> {
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
  final String typeOfService;
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

String _$schedulesHash() => r'f6646a889563d0fa5751fc5fa9fd8d1a521775ed';

/// See also [schedules].
@ProviderFor(schedules)
final schedulesProvider = AutoDisposeFutureProvider<
    Result<List<ScheduleModel>, StatusCodeType>>.internal(
  schedules,
  name: r'schedulesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$schedulesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SchedulesRef
    = AutoDisposeFutureProviderRef<Result<List<ScheduleModel>, StatusCodeType>>;
String _$schedulesByUserHash() => r'1c454ad1ffe8b1ed5d62b1c3325637caa5e61a33';
typedef SchedulesByUserRef = AutoDisposeFutureProviderRef<
    ResponseModelPagination<List<UserScheduleModel>>>;

/// See also [schedulesByUser].
@ProviderFor(schedulesByUser)
const schedulesByUserProvider = SchedulesByUserFamily();

/// See also [schedulesByUser].
class SchedulesByUserFamily extends Family<
    AsyncValue<ResponseModelPagination<List<UserScheduleModel>>>> {
  /// See also [schedulesByUser].
  const SchedulesByUserFamily();

  /// See also [schedulesByUser].
  SchedulesByUserProvider call({
    int? pageNo,
  }) {
    return SchedulesByUserProvider(
      pageNo: pageNo,
    );
  }

  @override
  SchedulesByUserProvider getProviderOverride(
    covariant SchedulesByUserProvider provider,
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
  String? get name => r'schedulesByUserProvider';
}

/// See also [schedulesByUser].
class SchedulesByUserProvider extends AutoDisposeFutureProvider<
    ResponseModelPagination<List<UserScheduleModel>>> {
  /// See also [schedulesByUser].
  SchedulesByUserProvider({
    this.pageNo,
  }) : super.internal(
          (ref) => schedulesByUser(
            ref,
            pageNo: pageNo,
          ),
          from: schedulesByUserProvider,
          name: r'schedulesByUserProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$schedulesByUserHash,
          dependencies: SchedulesByUserFamily._dependencies,
          allTransitiveDependencies:
              SchedulesByUserFamily._allTransitiveDependencies,
        );

  final int? pageNo;

  @override
  bool operator ==(Object other) {
    return other is SchedulesByUserProvider && other.pageNo == pageNo;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, pageNo.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$confirmScheduleHash() => r'474602a930d441434d976c147ce5ea061d2945f3';
typedef ConfirmScheduleRef = AutoDisposeFutureProviderRef<
    Result<CommandListWithTransactionCodeModel, StatusCodeType>>;

/// See also [confirmSchedule].
@ProviderFor(confirmSchedule)
const confirmScheduleProvider = ConfirmScheduleFamily();

/// See also [confirmSchedule].
class ConfirmScheduleFamily extends Family<
    AsyncValue<Result<CommandListWithTransactionCodeModel, StatusCodeType>>> {
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
class ConfirmScheduleProvider extends AutoDisposeFutureProvider<
    Result<CommandListWithTransactionCodeModel, StatusCodeType>> {
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

String _$schedulesByUserFilterHash() =>
    r'360e96b1199b0a18900ad73ce30f21c6790bee3c';

/// See also [SchedulesByUserFilter].
@ProviderFor(SchedulesByUserFilter)
final schedulesByUserFilterProvider = AutoDisposeNotifierProvider<
    SchedulesByUserFilter, QueryScheduleByUser>.internal(
  SchedulesByUserFilter.new,
  name: r'schedulesByUserFilterProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$schedulesByUserFilterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SchedulesByUserFilter = AutoDisposeNotifier<QueryScheduleByUser>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
