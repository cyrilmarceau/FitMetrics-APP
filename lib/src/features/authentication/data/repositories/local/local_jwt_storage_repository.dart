import 'dart:async';

import 'package:fitmetrics/src/features/authentication/domain/entities/token.dart';

abstract interface class LocalJwtStorageRepository {
  FutureOr<Token?> read();
  Future<void> save(Token token);
  Future<void> clear();
}
