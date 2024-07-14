import 'package:fitmetrics/src/features/onboarding/data/repositories/local/onboarding_repository_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'onboarding_provider.g.dart';

@Riverpod(keepAlive: true)
Future<LocalOnboardingRepositoryRepositoryImpl> onboardingRepository(OnboardingRepositoryRef ref) async {
  return LocalOnboardingRepositoryRepositoryImpl(sharedPreferences: await SharedPreferences.getInstance());
}
