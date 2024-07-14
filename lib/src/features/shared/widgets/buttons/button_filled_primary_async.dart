import 'package:fitmetrics/src/features/shared/widgets/circular_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// [ButtonFilledPrimaryAsync] is a custom widget that displays an elevated button with a loading indicator.
///
/// It is used to display a loading indicator when the button is pressed and the state is [AsyncLoading].
///
/// It also disables the button when the [isValidated] is false.
///
/// The button is enabled when the state is not [AsyncLoading] and [isValidated] is true.
///
/// The button is disabled when the state is [AsyncLoading] or [isValidated] is false.
class ButtonFilledPrimaryAsync<T> extends StatelessWidget {
  const ButtonFilledPrimaryAsync({
    super.key,
    required this.text,
    required this.isValidated,
    required this.state,
    required this.onPressed,
  });

  final String text;
  final bool isValidated;
  final AsyncValue<T> state;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: ElevatedButton.styleFrom(
        textStyle: const TextStyle(fontSize: 20),
      ),
      onPressed: state is AsyncLoading || !isValidated ? null : onPressed,
      child: Center(
        child: state is AsyncLoading
            ? const CircularIndicator()
            : Text(
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
