import 'package:fitmetrics/src/core/constants/constants.dart';
import 'package:fitmetrics/src/core/enums/app_page_enum.dart';
import 'package:fitmetrics/src/core/extension/app_route_extension.dart';
import 'package:fitmetrics/src/features/authentication/presentation/screens/login/login_form.dart';
import 'package:fitmetrics/src/features/authentication/presentation/screens/widgets/curved_painter.dart';
import 'package:fitmetrics/src/features/shared/widgets/buttons/button_outlined_primary.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  void _onRedirect(BuildContext context) {
    GoRouter.of(context).pushNamed(AppPage.signup.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomPaint(
                painter: LoginCurvedPainter(
                  color: Theme.of(context).primaryColor,
                ),
                child: const SizedBox(
                  height: 150,
                  width: double.infinity,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(AppSizes.p12),
                child: Center(
                  // Ajout du widget Center ici
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center, // Centrer les éléments de la colonne
                    children: [
                      const LoginForm(),
                      gapH12,
                      ButtonOutlinedPrimary(
                        text: AppStrings.signUp,
                        onPressed: () => _onRedirect(context),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
