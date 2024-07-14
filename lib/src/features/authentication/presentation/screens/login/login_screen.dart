import 'package:fitmetrics/src/core/constants/app_sizes.dart';
import 'package:fitmetrics/src/features/authentication/presentation/screens/login/login_form.dart';
import 'package:fitmetrics/src/features/authentication/presentation/screens/widgets/curved_painter.dart';
import 'package:fitmetrics/src/features/authentication/presentation/screens/widgets/redirect_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColors.rootBackgroundColor,
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
              const Padding(
                padding: EdgeInsets.all(AppSizes.p12),
                child: Center(
                  // Ajout du widget Center ici
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center, // Centrer les éléments de la colonne
                    children: [
                      LoginForm(),
                      gapH12,
                      RedirectAuthButton(
                        isNavigateToSignup: true,
                      ),
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
