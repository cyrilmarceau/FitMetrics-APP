// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userRepositoryHash() => r'cbd3d3b83e84b2d4063fea212e0b6c9e75c0fb64';

/// See also [userRepository].
@ProviderFor(userRepository)
final userRepositoryProvider = AutoDisposeProvider<DioUserRepository>.internal(
  userRepository,
  name: r'userRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$userRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef UserRepositoryRef = AutoDisposeProviderRef<DioUserRepository>;
String _$fetchMeHash() => r'a1f8b6bee3cb3e0985acde2db354d979691602b6';

/// See also [fetchMe].
@ProviderFor(fetchMe)
final fetchMeProvider = AutoDisposeFutureProvider<UserResponse>.internal(
  fetchMe,
  name: r'fetchMeProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$fetchMeHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FetchMeRef = AutoDisposeFutureProviderRef<UserResponse>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
