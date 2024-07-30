// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$flutterSecureStorageHash() =>
    r'f573db2722d185024bf535e0b496b1442ddf2db7';

/// See also [flutterSecureStorage].
@ProviderFor(flutterSecureStorage)
final flutterSecureStorageProvider =
    AutoDisposeProvider<FlutterSecureStorage>.internal(
  flutterSecureStorage,
  name: r'flutterSecureStorageProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$flutterSecureStorageHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FlutterSecureStorageRef = AutoDisposeProviderRef<FlutterSecureStorage>;
String _$tokenStorageRepositoryHash() =>
    r'd6022636b15c58ea2204a6a4a638051a89f87f93';

/// See also [tokenStorageRepository].
@ProviderFor(tokenStorageRepository)
final tokenStorageRepositoryProvider =
    AutoDisposeProvider<LocalTokenStorageRepositoryImpl>.internal(
  tokenStorageRepository,
  name: r'tokenStorageRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$tokenStorageRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef TokenStorageRepositoryRef
    = AutoDisposeProviderRef<LocalTokenStorageRepositoryImpl>;
String _$authRepositoryHash() => r'e643f50afb5e336421553c98cda4c19ecd2cc8a9';

/// See also [authRepository].
@ProviderFor(authRepository)
final authRepositoryProvider = AutoDisposeProvider<AuthRepositoryImpl>.internal(
  authRepository,
  name: r'authRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$authRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AuthRepositoryRef = AutoDisposeProviderRef<AuthRepositoryImpl>;
String _$authControllerHash() => r'85fcb7727bb2498798b510f48efd0daa2dd02d04';

/// See also [AuthController].
@ProviderFor(AuthController)
final authControllerProvider =
    AsyncNotifierProvider<AuthController, AuthState>.internal(
  AuthController.new,
  name: r'authControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$authControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AuthController = AsyncNotifier<AuthState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
