import 'package:fitmetrics/src/features/exercise/domain/muscle_group.dart';
import 'package:fitmetrics/src/features/shared/data/models/api_messages_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'muscle_group_response_model.freezed.dart';
part 'muscle_group_response_model.g.dart';

@freezed
class MuscleGroupResponse with _$MuscleGroupResponse {
  const factory MuscleGroupResponse({
    required bool success,
    required MessagesAPI messages,
    required List<MuscleGroup> data,
  }) = _MuscleGroupResponse;

  factory MuscleGroupResponse.fromJson(Map<String, dynamic> json) => _$MuscleGroupResponseFromJson(json);
}

@freezed
class MuscleGroupError with _$MuscleGroupError {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory MuscleGroupError({
    List<String>? nonFieldErrors,
  }) = _MuscleGroupError;

  factory MuscleGroupError.fromJson(Map<String, dynamic> json) => _$MuscleGroupErrorFromJson(json);
}
