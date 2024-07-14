import 'package:fitmetrics/src/features/onboarding/presentations/widgets/pager_dot_indicator.dart';
import 'package:fitmetrics/src/features/onboarding/presentations/widgets/pager_model.dart';
import 'package:fitmetrics/src/features/onboarding/presentations/widgets/smooth_curved_painter.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> with TickerProviderStateMixin {
  late PageController _pageViewController;
  late TabController _tabController;
  int _currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageViewController = PageController();
    _tabController = TabController(length: 3, vsync: this, initialIndex: 0);
  }

  @override
  void dispose() {
    super.dispose();
    _pageViewController.dispose();
    _tabController.dispose();
  }

  void _handlePageViewChanged(int currentPageIndex) {
    _tabController.index = currentPageIndex;
    setState(() {
      _currentPageIndex = currentPageIndex;
    });
  }

  void _updateCurrentPageIndex(int index) {
    _tabController.index = index;
    _pageViewController.animateToPage(
      index,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 150, // Fixed height for header
            child: CustomPaint(
              painter: SmoothCurvedPainter(color: Theme.of(context).colorScheme.primary),
              child: Container(
                height: 150,
              ),
            ),
          ),
          Expanded(
            child: PageView(
              padEnds: false,
              onPageChanged: _handlePageViewChanged,
              controller: _pageViewController,
              children: const <Widget>[
                PagerModel(
                  assetPath: 'assets/onboarding/activity_tracker.svg',
                  title: 'Une rapide intro ?',
                  description: 'Fitstats vous permettra de suivre votre progression chaques semaines',
                ),
                PagerModel(
                  assetPath: 'assets/onboarding/fitness_stats.svg',
                  title: 'Pour qui ?',
                  description: 'Fitstats est destiné à toutes personnes souhaitant suivre son évolution physique quelques soit son niveau',
                ),
                PagerModel(
                  assetPath: 'assets/onboarding/personal_training.svg',
                  title: 'Un suivis complet !',
                  description: 'Fitstats vous aideras dans votre surcharge progressive pendant l\'intégralité des cycles',
                ),
              ],
            ),
          ),
          Container(
            height: 80, // Assurez-vous que la hauteur est suffisante pour les enfants.
            padding: const EdgeInsets.all(16),
            child: PagerDotIndicator(
              pageViewController: _pageViewController,
              currentPageIndex: _currentPageIndex,
              onUpdateCurrentPageIndex: _updateCurrentPageIndex,
            ),
          ),
        ],
      ),
    );
  }
}
