import 'package:fitmetrics/src/core/enums/exercise_filter_enum.dart';

typedef ExerciseQueryData = ({
  List<int>? muscleGroupIds,
  ExerciseOwnerFilterEnum ownerFilter,
  String? name,
});
