import 'package:fitmetrics/src/features/onboarding/providers/onboarding_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_startup.g.dart';

// https://codewithandrea.com/articles/robust-app-initialization-riverpod/
@Riverpod(keepAlive: true)
Future<void> appStartup(AppStartupRef ref) async {
  ref.onDispose(() {
    // ensure dependent providers are disposed as well
    ref.invalidate(onboardingRepositoryProvider);
  });

  // initialize onboarding repository and wait for it to complete before returning
  // await for all initialization code to be complete before returning
  await ref.watch(onboardingRepositoryProvider.future);
}
