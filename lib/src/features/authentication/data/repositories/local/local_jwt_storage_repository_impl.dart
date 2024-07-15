import 'dart:async';

import 'package:fitmetrics/src/core/mixins/logging_mixin.dart';
import 'package:fitmetrics/src/features/authentication/data/repositories/local/local_jwt_storage_repository.dart';
import 'package:fitmetrics/src/features/authentication/domain/entities/jwt.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LocalJwtStorageRepositoryImpl with LoggingMixin implements LocalJwtStorageRepository {
  LocalJwtStorageRepositoryImpl({required this.storage});

  final FlutterSecureStorage storage;

  static const _key = 'FITMETRICS__jwt_token';

  @override
  FutureOr<Jwt?> read() async {
    final token = await storage.read(key: _key);

    if (token == null) {
      log.d('[TokenStorageRepository] :: read() => JWT not found');
      return null;
    }

    // log.d('TokenStorageRepository :: read() => JWT found');
    return Jwt.deserialize(token);
  }

  @override
  Future<void> save(Jwt jwt) {
    // log.d('TokenStorageRepository :: save() => Save new JWT');
    return storage.write(key: _key, value: Jwt.serialize(jwt));
  }

  @override
  Future<void> clear() {
    log.d('[TokenStorageRepository] :: clear() => Clear JWT');
    return storage.delete(key: _key);
  }
}
