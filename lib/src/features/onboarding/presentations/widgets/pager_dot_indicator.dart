import 'package:fitmetrics/src/core/constants/constants.dart';
import 'package:fitmetrics/src/core/enums/app_page_enum.dart';
import 'package:fitmetrics/src/core/extension/app_route_extension.dart';
import 'package:fitmetrics/src/features/onboarding/presentations/onboarding_controller.dart';
import 'package:fitmetrics/src/features/shared/widgets/buttons/button_filled_primary.dart';
import 'package:fitmetrics/src/features/shared/widgets/buttons/button_outlined_primary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PagerDotIndicator extends ConsumerWidget {
  const PagerDotIndicator({
    super.key,
    required this.pageViewController,
    required this.currentPageIndex,
    required this.onUpdateCurrentPageIndex,
  });

  final PageController pageViewController;
  final int currentPageIndex;

  final void Function(int) onUpdateCurrentPageIndex;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    onboardingComplete() async {
      await ref.watch(onboardingControllerProvider.notifier).completeOnboarding();
      if (context.mounted) {
        GoRouter.of(context).push(AppPage.login.routePath);
      }
    }

    Future<void> onNextPage() async {
      if (currentPageIndex + 1 == 3) {
        await onboardingComplete();
      } else {
        onUpdateCurrentPageIndex(currentPageIndex + 1);
      }
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: ButtonOutlinedPrimary(
            text: "Passer",
            onPressed: onboardingComplete,
          ),
        ),
        gapW20,
        SmoothPageIndicator(
          controller: pageViewController,
          count: 3,
          effect: ExpandingDotsEffect(
            dotWidth: AppSizes.p12,
            dotHeight: AppSizes.p12,
            activeDotColor: Theme.of(context).colorScheme.primary,
          ),
        ),
        gapW20,
        Expanded(
          child: ButtonFilledPrimary(
            text: "Suivant",
            onPressed: onNextPage,
          ),
        )
      ],
    );
  }
}
