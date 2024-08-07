import 'package:fitmetrics/src/core/typedef/typedef.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'exercise_filter_controller.g.dart';

@riverpod
class ExerciseFilterController extends _$ExerciseFilterController {
  @override
  ExerciseQueryData build() {
    return (muscleGroupIds: null, name: null, ownerFilter: null);
  }
}
