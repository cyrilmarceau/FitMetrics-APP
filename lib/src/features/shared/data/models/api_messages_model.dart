import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_messages_model.freezed.dart';
part 'api_messages_model.g.dart';

@freezed
class MessagesAPI with _$MessagesAPI {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory MessagesAPI({
    required List<String> nonFieldSuccesses,
  }) = _MessagesAPI;

  factory MessagesAPI.fromJson(Map<String, dynamic> json) => _$MessagesAPIFromJson(json);
}
