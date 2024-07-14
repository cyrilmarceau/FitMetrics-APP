import 'package:fitmetrics/src/core/enums/app_page_enum.dart';
import 'package:fitmetrics/src/core/extension/app_route_extension.dart';
import 'package:fitmetrics/src/core/router/not_found_screen.dart';
import 'package:fitmetrics/src/features/startup/providers/app_startup.dart';
import 'package:fitmetrics/src/features/startup/widgets/app_startup_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_router.g.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

const transitionDuration = Duration(milliseconds: 200);

@riverpod
GoRouter goRouter(GoRouterRef ref) {
  // final logger = Logger(
  //   printer: PrettyPrinter(methodCount: 0),
  // );

  // rebuild GoRouter when app startup state changes
  final appStartupState = ref.watch(appStartupProvider);

  return GoRouter(
    navigatorKey: _rootNavigatorKey,
    debugLogDiagnostics: true,
    redirect: (context, state) {
      if (appStartupState.isLoading || appStartupState.hasError) {
        return AppPage.startup.routePath;
      }
      return null;
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
    ],
  );
}
