import 'package:fitmetrics/src/core/constants/constants.dart';
import 'package:flutter/material.dart';

/// [CircularIndicator] is a custom widget that displays a circular loading indicator.
/// It is used to display a loading indicator when the button is pressed and the state is [AsyncLoading].
///
/// Actually it will be used with [ButtonFilledPrimaryAsync] widget.
class CircularIndicator extends StatelessWidget {
  const CircularIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: AppSizes.p20,
      width: AppSizes.p20,
      child: CircularProgressIndicator(
        strokeWidth: 2,
        color: Color.fromRGBO(246, 246, 246, 1),
      ),
    );
  }
}
