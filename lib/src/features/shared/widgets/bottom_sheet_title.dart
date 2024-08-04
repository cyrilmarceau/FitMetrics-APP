import 'package:flutter/material.dart';

class BottomSheetTitle extends StatelessWidget {
  const BottomSheetTitle({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: const Icon(Icons.close),
          onPressed: () => Navigator.of(context).pop(),
        ),
        Expanded(
          child: Center(
            widthFactor: 24.0,
            child: Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        const SizedBox(width: 48.0),
      ],
    );
  }
}
