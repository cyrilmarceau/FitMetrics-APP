import 'package:fitmetrics/src/core/enums/exercise_filter_enum.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'exercise_filter_controller.g.dart';

@riverpod
class OwnerFilterController extends _$OwnerFilterController {
  @override
  ExerciseOwnerFilterEnum build() {
    return ExerciseOwnerFilterEnum.all;
  }

  void updateOwnerFilter(ExerciseOwnerFilterEnum ownerFilter) {
    state = ownerFilter;
  }
}

@riverpod
class NameController extends _$NameController {
  @override
  String? build() {
    return null;
  }

  void updateName(String name) {
    state = name;
  }
}

@riverpod
class MuscleGroupIdsController extends _$MuscleGroupIdsController {
  @override
  List<int>? build() {
    return null;
  }

  void updateMuscleGroupIds(List<int> muscleGroupIds) {
    state = muscleGroupIds;
  }
}
