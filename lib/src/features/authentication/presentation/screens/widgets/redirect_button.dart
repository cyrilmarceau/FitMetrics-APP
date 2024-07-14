import 'package:fitmetrics/src/core/constants/app_strings.dart';
import 'package:fitmetrics/src/core/enums/app_page_enum.dart';
import 'package:fitmetrics/src/core/extension/app_route_extension.dart';
import 'package:fitmetrics/src/features/shared/widgets/buttons/button_outlined_primary.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RedirectAuthButton extends StatelessWidget {
  final bool isNavigateToSignup;

  const RedirectAuthButton({super.key, required this.isNavigateToSignup});

  void onRedirect(BuildContext context) {
    GoRouter.of(context).pushNamed(isNavigateToSignup ? AppPage.signup.routeName : AppPage.login.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return ButtonOutlinedPrimary(
      text: isNavigateToSignup ? AppStrings.signUp : AppStrings.signIn,
      onPressed: () => onRedirect(context),
    );
  }
}
