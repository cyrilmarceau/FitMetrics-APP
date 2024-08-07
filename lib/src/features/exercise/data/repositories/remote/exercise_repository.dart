import 'package:fitmetrics/src/core/typedef/typedef.dart';
import 'package:fitmetrics/src/features/exercise/data/models/exercise_response_model.dart';

abstract interface class ExerciseRepository {
  Future<ExerciseResponse> getExercises({required ExerciseQueryData queryData});
}
