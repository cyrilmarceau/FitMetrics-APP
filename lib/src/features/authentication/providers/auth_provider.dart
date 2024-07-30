import 'package:fitmetrics/src/features/authentication/data/repositories/local/local_token_storage_repository_impl.dart';
import 'package:fitmetrics/src/features/authentication/data/repositories/remote/auth_repository_impl.dart';
import 'package:fitmetrics/src/features/authentication/providers/auth_state.dart';
import 'package:fitmetrics/src/features/user/providers/user_provider.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_provider.g.dart';

@Riverpod(keepAlive: true)
class AuthController extends _$AuthController {
  @override
  FutureOr<AuthState> build() => const AuthState.unauthenticated();

  void unauthenticateUser() {
    state = const AsyncData(AuthState.unauthenticated());
  }

  void authenticateUser() {
    state = const AsyncData(AuthState.authenticated());
  }
}

@riverpod
FlutterSecureStorage flutterSecureStorage(FlutterSecureStorageRef ref) => const FlutterSecureStorage();

@riverpod
LocalTokenStorageRepositoryImpl tokenStorageRepository(TokenStorageRepositoryRef ref) => LocalTokenStorageRepositoryImpl(
      storage: ref.read(flutterSecureStorageProvider),
    );

@riverpod
AuthRepositoryImpl authRepository(AuthRepositoryRef ref) => AuthRepositoryImpl(
      ref: ref,
      tokenStorageRepository: ref.watch(tokenStorageRepositoryProvider),
      userRepository: ref.read(userRepositoryProvider),
    );
