import 'package:freezed_annotation/freezed_annotation.dart';

part 'muscle_group.freezed.dart';
part 'muscle_group.g.dart';

//  {
//                     "id": 3,
//                     "name": "Épaules",
//                     "slug": "shoulders",
//                     "description": null,
//                     "created_at": "2024-07-21T16:27:46.000000Z",
//                     "updated_at": "2024-07-21T16:27:46.000000Z"
//                 }

@freezed
class MuscleGroup with _$MuscleGroup {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory MuscleGroup({
    required int id,
    required String name,
    required String slug,
    required String? description,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _MuscleGroup;

  factory MuscleGroup.fromJson(Map<String, dynamic> json) => _$MuscleGroupFromJson(json);
}
