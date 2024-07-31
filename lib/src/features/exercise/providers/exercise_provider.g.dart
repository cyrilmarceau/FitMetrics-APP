// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$exerciseRepositoryHash() =>
    r'defc75fa42bb977a0512479b8253b6f33f6f91c0';

/// See also [exerciseRepository].
@ProviderFor(exerciseRepository)
final exerciseRepositoryProvider = Provider<ExerciseRepositoryImpl>.internal(
  exerciseRepository,
  name: r'exerciseRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$exerciseRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ExerciseRepositoryRef = ProviderRef<ExerciseRepositoryImpl>;
String _$getExercisesHash() => r'aa4162ec328c55c966700f971150b258ad05de8d';

/// See also [getExercises].
@ProviderFor(getExercises)
final getExercisesProvider =
    AutoDisposeFutureProvider<ExerciseResponse>.internal(
  getExercises,
  name: r'getExercisesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$getExercisesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetExercisesRef = AutoDisposeFutureProviderRef<ExerciseResponse>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
