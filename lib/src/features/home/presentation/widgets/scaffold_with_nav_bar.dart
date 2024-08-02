import 'package:fitmetrics/src/core/enums/app_page_enum.dart';
import 'package:fitmetrics/src/core/extension/app_route_extension.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScaffoldWithNavBar extends StatelessWidget {
  /// Constructs an [ScaffoldWithNavBar].
  const ScaffoldWithNavBar({
    required this.navigationShell,
    Key? key,
  }) : super(key: key ?? const ValueKey<String>('ScaffoldWithNavBar'));

  /// The navigation shell and container for the branch Navigators.
  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
            ),
          ],
        ),
        child: NavigationBar(
          height: 65.0,
          elevation: 5.0,
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
          indicatorColor: Theme.of(context).colorScheme.primary,
          onDestinationSelected: (int index) => _onTap(context, index),
          destinations: [
            NavigationDestination(
              icon: const Icon(Icons.home_outlined),
              selectedIcon: const Icon(
                Icons.home,
                color: Colors.white,
              ),
              label: AppPage.home.routePageTitle,
            ),
            NavigationDestination(
              icon: const Icon(Icons.fitness_center_outlined),
              selectedIcon: const Icon(
                Icons.fitness_center,
                color: Colors.white,
              ),
              label: AppPage.exercise.routePageTitle,
            ),
            NavigationDestination(
              icon: const Icon(Icons.calendar_today_outlined),
              selectedIcon: const Icon(
                Icons.calendar_today,
                color: Colors.white,
              ),
              label: AppPage.workout.routePageTitle,
            ),
            NavigationDestination(
              icon: const Icon(Icons.manage_accounts_outlined),
              selectedIcon: const Icon(
                Icons.manage_accounts,
                color: Colors.white,
              ),
              label: AppPage.settings.routePageTitle,
            ),
          ],
          selectedIndex: navigationShell.currentIndex,
        ),
      ),
    );
  }

  void _onTap(BuildContext context, int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }
}
