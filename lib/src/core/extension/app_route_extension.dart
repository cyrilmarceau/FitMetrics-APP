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

      /// Authentication
      case AppPage.login:
        return '/login';
      case AppPage.signup:
        return '/signup';

      /// Bottom navigation bar
      case AppPage.home:
        return '/home';
      case AppPage.exercise:
        return '/exercise';
      case AppPage.workout:
        return '/workout';
      case AppPage.settings:
        return '/settings';

      default:
        return '/login';
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

      /// Authentication
      case AppPage.login:
        return 'LOGIN';
      case AppPage.signup:
        return 'SIGNUP';

      /// Bottom navigation bar
      case AppPage.home:
        return 'HOME';
      case AppPage.exercise:
        return 'EXERCISE';
      case AppPage.workout:
        return 'WORKOUT';
      case AppPage.settings:
        return 'SETTINGS';
      default:
        return 'LOGIN';
    }
  }

  /// Returns the page title for the given [APP_PAGE]
  String get routePageTitle {
    switch (this) {
      case AppPage.startup:
        return 'Startup';
      case AppPage.onboarding:
        return 'Onboarding';

      /// Authentication
      case AppPage.login:
        return 'Login';
      case AppPage.signup:
        return 'Signup';

      /// Bottom navigation bar
      case AppPage.home:
        return 'Home';
      case AppPage.exercise:
        return 'Exercise';
      case AppPage.workout:
        return 'Workout';
      case AppPage.settings:
        return 'Settings';
      default:
        return 'Login';
    }
  }
}
