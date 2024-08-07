import 'package:fitmetrics/src/core/enums/exercise_filter_enum.dart';
import 'package:fitmetrics/src/core/typedef/typedef.dart';
import 'package:fitmetrics/src/features/exercise/data/models/exercise_response_model.dart';
import 'package:fitmetrics/src/features/exercise/data/repositories/remote/exercise_repository_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'exercise_provider.g.dart';

@riverpod
ExerciseRepositoryImpl exerciseRepository(ExerciseRepositoryRef ref) => ExerciseRepositoryImpl(ref: ref);

@riverpod
Future<ExerciseResponse> getExercises(GetExercisesRef ref, {required ExerciseQueryData queryData}) async {
  return ref.read(exerciseRepositoryProvider).getExercises(queryData: queryData);
}
