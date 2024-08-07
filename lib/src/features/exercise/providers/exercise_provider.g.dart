// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$exerciseRepositoryHash() =>
    r'775c7b305051754f1bcc5d04c806256e184517d7';

/// See also [exerciseRepository].
@ProviderFor(exerciseRepository)
final exerciseRepositoryProvider =
    AutoDisposeProvider<ExerciseRepositoryImpl>.internal(
  exerciseRepository,
  name: r'exerciseRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$exerciseRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ExerciseRepositoryRef = AutoDisposeProviderRef<ExerciseRepositoryImpl>;
String _$getExercisesHash() => r'f97bbaefcabc2cb8558bc8e3ad73517258072efa';

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

/// See also [getExercises].
@ProviderFor(getExercises)
const getExercisesProvider = GetExercisesFamily();

/// See also [getExercises].
class GetExercisesFamily extends Family<AsyncValue<ExerciseResponse>> {
  /// See also [getExercises].
  const GetExercisesFamily();

  /// See also [getExercises].
  GetExercisesProvider call({
    required ({
      List<int>? muscleGroupIds,
      String? name,
      ExerciseOwnerFilterEnum? ownerFilter
    }) queryData,
  }) {
    return GetExercisesProvider(
      queryData: queryData,
    );
  }

  @override
  GetExercisesProvider getProviderOverride(
    covariant GetExercisesProvider provider,
  ) {
    return call(
      queryData: provider.queryData,
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
  String? get name => r'getExercisesProvider';
}

/// See also [getExercises].
class GetExercisesProvider extends AutoDisposeFutureProvider<ExerciseResponse> {
  /// See also [getExercises].
  GetExercisesProvider({
    required ({
      List<int>? muscleGroupIds,
      String? name,
      ExerciseOwnerFilterEnum? ownerFilter
    }) queryData,
  }) : this._internal(
          (ref) => getExercises(
            ref as GetExercisesRef,
            queryData: queryData,
          ),
          from: getExercisesProvider,
          name: r'getExercisesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getExercisesHash,
          dependencies: GetExercisesFamily._dependencies,
          allTransitiveDependencies:
              GetExercisesFamily._allTransitiveDependencies,
          queryData: queryData,
        );

  GetExercisesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.queryData,
  }) : super.internal();

  final ({
    List<int>? muscleGroupIds,
    String? name,
    ExerciseOwnerFilterEnum? ownerFilter
  }) queryData;

  @override
  Override overrideWith(
    FutureOr<ExerciseResponse> Function(GetExercisesRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetExercisesProvider._internal(
        (ref) => create(ref as GetExercisesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        queryData: queryData,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<ExerciseResponse> createElement() {
    return _GetExercisesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetExercisesProvider && other.queryData == queryData;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, queryData.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetExercisesRef on AutoDisposeFutureProviderRef<ExerciseResponse> {
  /// The parameter `queryData` of this provider.
  ({
    List<int>? muscleGroupIds,
    String? name,
    ExerciseOwnerFilterEnum? ownerFilter
  }) get queryData;
}

class _GetExercisesProviderElement
    extends AutoDisposeFutureProviderElement<ExerciseResponse>
    with GetExercisesRef {
  _GetExercisesProviderElement(super.provider);

  @override
  ({
    List<int>? muscleGroupIds,
    String? name,
    ExerciseOwnerFilterEnum? ownerFilter
  }) get queryData => (origin as GetExercisesProvider).queryData;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
