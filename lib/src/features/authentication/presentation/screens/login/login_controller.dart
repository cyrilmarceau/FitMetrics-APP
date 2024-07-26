import 'package:fitmetrics/src/features/authentication/data/models/login_model.dart';
import 'package:fitmetrics/src/features/authentication/providers/auth_provider.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login_controller.g.dart';

@riverpod
class LoginController extends _$LoginController {
  @override
  FutureOr<void> build() async => null;

  Future<void> login({required LoginModel request}) async {
    final authRepository = ref.read(authRepositoryProvider);

    state = const AsyncLoading();

    state = await AsyncValue.guard(
      () => Future.delayed(const Duration(milliseconds: 200)).then((_) => authRepository.login(request)),
    );
  }
}
