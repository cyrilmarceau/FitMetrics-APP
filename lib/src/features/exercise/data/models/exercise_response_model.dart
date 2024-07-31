import 'package:fitmetrics/src/features/exercise/domain/exercise.dart';
import 'package:fitmetrics/src/features/shared/data/models/api_messages_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise_response_model.freezed.dart';
part 'exercise_response_model.g.dart';

@freezed
class ExerciseResponse with _$ExerciseResponse {
  const factory ExerciseResponse({
    required bool success,
    required MessagesAPI messages,
    required List<Exercise> data,
  }) = _ExerciseResponse;

  factory ExerciseResponse.fromJson(Map<String, dynamic> json) => _$ExerciseResponseFromJson(json);
}

/// Fields available in the response when there are errors in the signup request
/// Validator is used in front end to display the error messages before sending request
@freezed
class ExerciseError with _$ExerciseError {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ExerciseError({
    List<String>? nonFieldErrors,
  }) = _ExerciseError;

  factory ExerciseError.fromJson(Map<String, dynamic> json) => _$ExerciseErrorFromJson(json);
}
