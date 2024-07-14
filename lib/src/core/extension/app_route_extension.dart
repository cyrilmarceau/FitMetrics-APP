import 'package:fitmetrics/src/core/enums/app_page_enum.dart';

extension AppPageExtension on AppPage {
  /// Returns the complete route path for the given [APP_PAGE]
  /// Complet path are construct with the nested route path and the complete route path
  String get routePath {
    switch (this) {
      case AppPage.startup:
        return '/startup';
      case AppPage.onboarding:
        return '/onboarding';
      default:
        return '/startup';
    }
  }

  /// Returns the nested route path for the given [APP_PAGE]

  /// Returns the route name for the given [APP_PAGE]
  /// So when you need to redirect in your app, you can use this method to get the route name
  String get routeName {
    switch (this) {
      case AppPage.startup:
        return 'STARTUP';
      case AppPage.onboarding:
        return 'ONBOARDING';
      default:
        return 'STARTUP';
    }
  }

  /// Returns the page title for the given [APP_PAGE]
  String get routePageTitle {
    switch (this) {
      case AppPage.startup:
        return 'Startup';
      case AppPage.onboarding:
        return 'Onboarding';
      default:
        return 'Startup';
    }
  }
}
