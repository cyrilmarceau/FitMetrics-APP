import 'dart:async';

import 'package:fitmetrics/src/features/onboarding/providers/onboarding_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'onboarding_controller.g.dart';

@riverpod
class OnboardingController extends _$OnboardingController {
  @override
  FutureOr<void> build() {
    ref.onDispose(() {
      ref.invalidate(onboardingRepositoryProvider);
    });
  }

  Future<void> completeOnboarding() async {
    final onboardingRepository = ref.watch(onboardingRepositoryProvider).requireValue;
    state = const AsyncLoading();
    state = await AsyncValue.guard(onboardingRepository.setOnboardingComplete);
  }

  Future<void> resetOnboarding() async {
    ref.invalidateSelf();
    final onboardingRepository = ref.watch(onboardingRepositoryProvider).requireValue;
    state = const AsyncLoading();
    state = await AsyncValue.guard(onboardingRepository.resetOnboardingComplete);
  }
}
