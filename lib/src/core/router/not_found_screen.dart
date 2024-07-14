import 'package:fitmetrics/src/core/constants/constants.dart';
import 'package:flutter/material.dart';

class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Cette page n\'existe plus :(',
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: AppSizes.p20,
                fontWeight: FontWeight.bold,
              ),
            ),
            gapH20,
            ElevatedButton(
              key: key,
              onPressed: () {
                // TODO: Push to home page when created
              },
              style: ButtonStyle(
                padding: WidgetStateProperty.all(const EdgeInsets.all(AppSizes.p12)),
              ),
              child: const Text(
                'Revenir à l\'accueil',
              ),
            )
          ],
        ),
      ),
    );
  }
}
