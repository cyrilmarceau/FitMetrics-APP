import 'package:flutter/material.dart';

class ButtonOutlinedPrimary extends StatelessWidget {
  const ButtonOutlinedPrimary({
    super.key,
    required this.text,
    required this.onPressed,
  });

  final String text;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
