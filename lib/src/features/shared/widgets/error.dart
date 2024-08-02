import 'package:flutter/material.dart';

class SharedErrorWidget extends StatelessWidget {
  const SharedErrorWidget({super.key, required this.onErrorCallback});

  final VoidCallback onErrorCallback;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.error, size: 50),
        const SizedBox(height: 20),
        const Text('An error occurred'),
        const SizedBox(height: 20),
        FilledButton(
          onPressed: onErrorCallback,
          style: ElevatedButton.styleFrom(
            textStyle: const TextStyle(fontSize: 20),
          ),
          child: Center(
            child: Text(
              'Retry',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
          ),
        )
      ],
    );
  }
}
