import 'package:fitmetrics/src/core/constants/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PagerModel extends StatelessWidget {
  final String assetPath;
  final String title;
  final String description;

  const PagerModel({
    super.key,
    required this.assetPath,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Center(
          child: SvgPicture.asset(assetPath, height: 150),
        ),
        gapH32,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSizes.p32),
          child: Text(
            title,
            style: TextStyle(
              fontSize: AppSizes.p24,
              color: Theme.of(context).colorScheme.primary,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.2,
            ),
          ),
        ),
        gapH8,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSizes.p32),
          child: Text(
            description,
            style: const TextStyle(
              fontSize: AppSizes.p16,
              fontWeight: FontWeight.w400,
            ),
          ),
        )
      ],
    );
  }
}
