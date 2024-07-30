import 'dart:async';

import 'package:fitmetrics/src/core/mixins/logging_mixin.dart';
import 'package:fitmetrics/src/features/authentication/data/repositories/local/local_token_storage_repository.dart';
import 'package:fitmetrics/src/features/authentication/domain/entities/token.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LocalTokenStorageRepositoryImpl with LoggingMixin implements LocalTokenStorageRepository {
  LocalTokenStorageRepositoryImpl({required this.storage});

  final FlutterSecureStorage storage;

  static const _key = 'FITMETRICS__token';

  @override
  FutureOr<Token?> read() async {
    final token = await storage.read(key: _key);

    if (token == null) {
      log.d('[TokenStorageRepository] :: read() => Token not found');
      return null;
    }

    // log.d('TokenStorageRepository :: read() => Token found');
    return Token.deserialize(token);
  }

  @override
  Future<void> save(Token token) {
    // log.d('TokenStorageRepository :: save() => Save new Token');
    return storage.write(key: _key, value: Token.serialize(token));
  }

  @override
  Future<void> clear() {
    log.d('[TokenStorageRepository] :: clear() => Clear Token');
    return storage.delete(key: _key);
  }
}
