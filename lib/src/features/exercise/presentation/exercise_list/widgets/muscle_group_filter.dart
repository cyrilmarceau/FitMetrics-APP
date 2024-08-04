import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum ExerciseFilter { walking, running, cycling, hiking }

class MuscleGroupFilter extends ConsumerWidget {
  const MuscleGroupFilter({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Groupes musculaires',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Wrap(
            spacing: 5.0,
            children: ExerciseFilter.values.map((ExerciseFilter exercise) {
              return FilterChip(
                label: Text(exercise.name),
                selected: false,
                onSelected: (bool selected) {},
              );
            }).toList(),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
