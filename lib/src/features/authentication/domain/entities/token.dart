import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'token.freezed.dart';
part 'token.g.dart';

@freezed
class Token with _$Token {
  const factory Token({
    required String token,
  }) = _Token;

  factory Token.fromJson(Map<String, dynamic> json) => _$TokenFromJson(json);

  static String serialize(Token jwt) => json.encode(jwt.toJson());

  static Token deserialize(String serialized) => Token.fromJson(json.decode(serialized) as Map<String, dynamic>);
}
