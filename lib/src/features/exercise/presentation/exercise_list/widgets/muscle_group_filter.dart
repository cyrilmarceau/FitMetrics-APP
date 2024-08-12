import 'package:fitmetrics/src/features/exercise/providers/exercise_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum ExerciseFilter { walking, running, cycling, hiking }

class MuscleGroupFilter extends ConsumerWidget {
  const MuscleGroupFilter({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final muscleGroups = ref.watch(getMuscleGroupProvider);

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
          muscleGroups.when(
            loading: () => const CircularProgressIndicator(),
            error: (error, stack) => Text('Error: $error'),
            data: (muscleGroup) {
              return Wrap(
                spacing: 5.0,
                children: muscleGroup.data.map((muscle) {
                  return FilterChip(
                    label: Text(muscle.name),
                    selected: false,
                    onSelected: (bool selected) {},
                  );
                }).toList(),
              );
            },
          ),
          // Wrap(
          //   spacing: 5.0,
          //   children: ExerciseFilter.values.map((ExerciseFilter exercise) {
          //     return FilterChip(
          //       label: Text(exercise.name),
          //       selected: false,
          //       onSelected: (bool selected) {},
          //     );
          //   }).toList(),
          // ),
          const Divider(),
        ],
      ),
    );
  }
}
