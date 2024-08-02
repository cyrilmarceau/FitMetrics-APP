import 'package:fitmetrics/src/features/exercise/data/models/exercise_response_model.dart';
import 'package:fitmetrics/src/features/exercise/data/repositories/remote/exercise_repository_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'exercise_provider.g.dart';

@riverpod
ExerciseRepositoryImpl exerciseRepository(ExerciseRepositoryRef ref) => ExerciseRepositoryImpl(ref: ref);

@riverpod
Future<ExerciseResponse> getExercises(GetExercisesRef ref) async {
  return ref.read(exerciseRepositoryProvider).getExercises();
}
