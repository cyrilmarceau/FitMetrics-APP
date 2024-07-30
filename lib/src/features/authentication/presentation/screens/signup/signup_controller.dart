import 'package:fitmetrics/src/features/authentication/data/models/signup_request_model.dart';
import 'package:fitmetrics/src/features/authentication/providers/auth_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'signup_controller.g.dart';

@riverpod
class SignupController extends _$SignupController {
  @override
  FutureOr<void> build() async => null;

  Future<void> signup({required SignupRequest request}) async {
    final authRepository = ref.read(authRepositoryProvider);

    state = const AsyncLoading();

    state = await AsyncValue.guard(() => authRepository.signup(request));
  }
}
