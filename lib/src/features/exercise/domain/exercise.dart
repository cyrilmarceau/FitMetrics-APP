import 'package:fitmetrics/src/features/exercise/domain/muscle_group.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise.freezed.dart';
part 'exercise.g.dart';

@freezed
class Exercise with _$Exercise {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Exercise({
    required int id,
    required String name,
    required String? description,
    required List<MuscleGroup> muscleGroups,
  }) = _Exercise;

  factory Exercise.fromJson(Map<String, dynamic> json) => _$ExerciseFromJson(json);
}
