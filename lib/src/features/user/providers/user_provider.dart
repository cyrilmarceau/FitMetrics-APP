import 'package:fitmetrics/src/features/user/data/models/user_response_model.dart';
import 'package:fitmetrics/src/features/user/data/remote/user_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_provider.g.dart';

@riverpod
DioUserRepository userRepository(UserRepositoryRef ref) => DioUserRepository(ref: ref);

@riverpod
Future<UserResponse> fetchMe(FetchMeRef ref) {
  debugPrint('init: fetchMe()');
  ref.onCancel(() => debugPrint('cancel: fetchMe()'));
  ref.onResume(() => debugPrint('resume: fetchMe()'));
  ref.onDispose(() => debugPrint('dispose: fetchMe()'));

  return ref.watch(userRepositoryProvider).fetchMe();
}
