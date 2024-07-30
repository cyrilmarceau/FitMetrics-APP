import 'package:fitmetrics/src/core/enums/app_page_enum.dart';
import 'package:fitmetrics/src/core/extension/app_route_extension.dart';
import 'package:fitmetrics/src/core/router/not_found_screen.dart';
import 'package:fitmetrics/src/features/authentication/presentation/screens/login/login_screen.dart';
import 'package:fitmetrics/src/features/authentication/presentation/screens/signup/signup_screen.dart';
import 'package:fitmetrics/src/features/authentication/providers/auth_provider.dart';
import 'package:fitmetrics/src/features/authentication/providers/auth_state.dart';
import 'package:fitmetrics/src/features/exercise/presentation/exercise_screen.dart';
import 'package:fitmetrics/src/features/home/presentation/home_screen.dart';
import 'package:fitmetrics/src/features/home/presentation/widgets/scaffold_with_nav_bar.dart';
import 'package:fitmetrics/src/features/onboarding/presentations/onboarding_screen.dart';
import 'package:fitmetrics/src/features/onboarding/providers/onboarding_provider.dart';
import 'package:fitmetrics/src/features/settings/presentation/settings_screen.dart';
import 'package:fitmetrics/src/features/startup/providers/app_startup.dart';
import 'package:fitmetrics/src/features/startup/widgets/app_startup_screen.dart';
import 'package:fitmetrics/src/features/workout/presentation/workout_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_router.g.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _sectionHomeNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'HomeNav');
final GlobalKey<NavigatorState> _sectionExerciseNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'ExerciseNav');
final GlobalKey<NavigatorState> _sectionWorkoutNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'WorkoutNav');
final GlobalKey<NavigatorState> _sectionSettingsNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'SettingsNav');

const transitionDuration = Duration(milliseconds: 200);

@riverpod
GoRouter goRouter(GoRouterRef ref) {
  final listenable = ValueNotifier<bool?>(null);

  ref.listen(
    authControllerProvider,
    (_, authState) => listenable.value = switch (authState.asData?.value) {
      Authenticated() => true,
      Unauthenticated() => false,
      _ => false,
    },
  );

  // final logger = Logger(
  //   printer: PrettyPrinter(methodCount: 0),
  // );

  // rebuild GoRouter when app startup state changes
  final appStartupState = ref.watch(appStartupProvider);

  return GoRouter(
    initialLocation: AppPage.login.routePath,
    navigatorKey: _rootNavigatorKey,
    refreshListenable: listenable,
    debugLogDiagnostics: true,
    redirect: (context, state) {
      if (appStartupState.isLoading || appStartupState.hasError) {
        return AppPage.startup.routePath;
      }

      final onboardingRepository = ref.read(onboardingRepositoryProvider).requireValue;
      final didCompleteOnboarding = onboardingRepository.isOnboardingComplete();

      final path = state.uri.path;

      if (!didCompleteOnboarding) {
        if (path != AppPage.onboarding.routePath) {
          return AppPage.onboarding.routePath;
        }
        return null;
      }

      final authState = ref.read(authControllerProvider);
      final isLoggedIn = authState.asData?.value is Authenticated;

      if (isLoggedIn) {
        /// User is successfully authenticated when the path is '/login'
        if (path == AppPage.login.routePath) {
          return AppPage.home.routePath;
        } else {
          return null;
        }
      } else {
        if (path == AppPage.login.routePath || path == AppPage.signup.routePath) {
          return null;
        } else {
          return AppPage.login.routePath;
        }
      }
    },
    errorPageBuilder: (context, state) => const NoTransitionPage(
      child: NotFoundScreen(),
    ),
    routes: [
      GoRoute(
        path: AppPage.startup.routePath,
        name: AppPage.startup.routeName,
        pageBuilder: (context, state) => NoTransitionPage(
          child: AppStartupWidget(
            // * This is just a placeholder
            // * The loaded route will be managed by GoRouter on state change
            onLoaded: (_) => const SizedBox.shrink(),
          ),
        ),
      ),
      GoRoute(
        path: AppPage.onboarding.routePath,
        name: AppPage.onboarding.routeName,
        pageBuilder: (context, state) => const CustomTransitionPage(
          child: OnBoardingScreen(),
          transitionsBuilder: _buildFadeTransition,
          transitionDuration: transitionDuration,
        ),
      ),
      GoRoute(
        path: AppPage.login.routePath,
        name: AppPage.login.routeName,
        pageBuilder: (context, state) => const CustomTransitionPage(
          child: LoginScreen(),
          transitionsBuilder: _buildFadeTransition,
          transitionDuration: transitionDuration,
        ),
      ),
      GoRoute(
        path: AppPage.signup.routePath,
        name: AppPage.signup.routeName,
        pageBuilder: (context, state) => const CustomTransitionPage(
          child: SignupScreen(),
          transitionsBuilder: _buildFadeTransition,
          transitionDuration: transitionDuration,
        ),
      ),
      StatefulShellRoute.indexedStack(
        builder: (BuildContext context, state, navigationShell) => ScaffoldWithNavBar(navigationShell: navigationShell),
        branches: <StatefulShellBranch>[
          StatefulShellBranch(
            navigatorKey: _sectionHomeNavigatorKey,
            routes: <RouteBase>[
              GoRoute(
                path: AppPage.home.routePath,
                name: AppPage.home.routeName,
                pageBuilder: (context, state) => const CustomTransitionPage(
                  child: HomeScreen(),
                  transitionsBuilder: _buildFadeTransition,
                  transitionDuration: transitionDuration,
                ),
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _sectionExerciseNavigatorKey,
            routes: <RouteBase>[
              GoRoute(
                path: AppPage.exercise.routePath,
                name: AppPage.exercise.routeName,
                pageBuilder: (context, state) => const CustomTransitionPage(
                  child: ExerciseScreen(),
                  transitionsBuilder: _buildFadeTransition,
                  transitionDuration: transitionDuration,
                ),
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _sectionWorkoutNavigatorKey,
            routes: <RouteBase>[
              GoRoute(
                path: AppPage.workout.routePath,
                name: AppPage.workout.routeName,
                pageBuilder: (context, state) => const CustomTransitionPage(
                  child: WorkoutScreen(),
                  transitionsBuilder: _buildFadeTransition,
                  transitionDuration: transitionDuration,
                ),
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _sectionSettingsNavigatorKey,
            routes: <RouteBase>[
              GoRoute(
                path: AppPage.settings.routePath,
                name: AppPage.settings.routeName,
                pageBuilder: (context, state) => const CustomTransitionPage(
                  child: SettingsScreen(),
                  transitionsBuilder: _buildFadeTransition,
                  transitionDuration: transitionDuration,
                ),
              ),
            ],
          ),
        ],
      )
    ],
  );
}

Widget _buildFadeTransition(
  BuildContext context,
  Animation<double> animation,
  Animation<double> secondaryAnimation,
  Widget child,
) =>
    FadeTransition(opacity: animation, child: child);
