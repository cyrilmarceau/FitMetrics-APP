import 'package:fitmetrics/src/features/authentication/data/repositories/local/local_jwt_storage_repository_impl.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_provider.g.dart';

@riverpod
FlutterSecureStorage flutterSecureStorage(FlutterSecureStorageRef ref) => const FlutterSecureStorage();

@riverpod
LocalJwtStorageRepositoryImpl tokenStorageRepository(TokenStorageRepositoryRef ref) => LocalJwtStorageRepositoryImpl(
      storage: ref.read(flutterSecureStorageProvider),
    );
