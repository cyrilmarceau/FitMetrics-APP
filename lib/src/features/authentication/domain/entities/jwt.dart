import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'jwt.freezed.dart';
part 'jwt.g.dart';

/// Entity that contains the access and refresh token
///
/// The access token is used to authenticate the user
/// The refresh token is used to get a new access token (access token expires after 5 minutes)
@freezed
abstract class Jwt with _$Jwt {
  const factory Jwt({
    required String access,
    required String refresh,
  }) = _Jwt;

  factory Jwt.fromJson(Map<String, dynamic> json) => _$JwtFromJson(json);

  static String serialize(Jwt jwt) => json.encode(jwt.toJson());

  static Jwt deserialize(String serialized) => Jwt.fromJson(json.decode(serialized) as Map<String, dynamic>);
}
