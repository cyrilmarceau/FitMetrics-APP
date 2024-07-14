abstract interface class LocalOnboardingRepositoryRepository {
  Future<void> setOnboardingComplete();
  Future<void> resetOnboardingComplete();
  bool isOnboardingComplete();
}
