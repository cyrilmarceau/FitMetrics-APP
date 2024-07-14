import 'package:flutter/material.dart';

/// [ButtonFilledPrimary] is a custom widget that displays an elevated button with a primary color.
class ButtonFilledPrimary extends StatelessWidget {
  const ButtonFilledPrimary({
    super.key,
    required this.text,
    required this.onPressed,
  });

  final String text;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: FilledButton.styleFrom(
        textStyle: const TextStyle(fontSize: 20),
      ),
      onPressed: onPressed,
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Theme.of(context).colorScheme.onPrimary,
          ),
        ),
      ),
    );
  }
}
