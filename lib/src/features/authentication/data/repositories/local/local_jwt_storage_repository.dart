import 'dart:async';

import 'package:fitmetrics/src/features/authentication/domain/entities/jwt.dart';

abstract interface class LocalJwtStorageRepository {
  FutureOr<Jwt?> read();
  Future<void> save(Jwt token);
  Future<void> clear();
}
