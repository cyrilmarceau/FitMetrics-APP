import 'dart:async';

import 'package:fitmetrics/src/features/onboarding/data/repositories/local/onboarding_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalOnboardingRepositoryRepositoryImpl implements LocalOnboardingRepositoryRepository {
  LocalOnboardingRepositoryRepositoryImpl({required this.sharedPreferences});

  final SharedPreferences sharedPreferences;

  static const onboardingCompleteKey = 'FITMETRICS__onboardingComplete';
  @override
  Future<void> setOnboardingComplete() async {
    await sharedPreferences.setBool(onboardingCompleteKey, true);
  }

  @override
  Future<void> resetOnboardingComplete() async {
    await sharedPreferences.setBool(onboardingCompleteKey, false);
  }

  @override
  bool isOnboardingComplete() {
    return sharedPreferences.getBool(onboardingCompleteKey) ?? false;
  }
}
