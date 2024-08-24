import 'package:fitmetrics/src/core/mixins/logging_mixin.dart';
import 'package:fitmetrics/src/features/exercise/presentation/controller/exercise_filter_controller.dart';
import 'package:fitmetrics/src/features/exercise/providers/exercise_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum ExerciseFilter { walking, running, cycling, hiking }

class MuscleGroupFilter extends ConsumerWidget with LoggingMixin {
  const MuscleGroupFilter({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final muscleGroups = ref.watch(getMuscleGroupProvider);
    final muscleGroupIDsFilter = ref.watch(muscleGroupIdsControllerProvider);

    log.d('[MuscleGroupFilter]: muscleGroupFilterIDS $muscleGroupIDsFilter');

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
                    selected: muscleGroupIDsFilter.contains(muscle.id),
                    onSelected: (bool selected) {
                      ref.read(muscleGroupIdsControllerProvider.notifier).updateMuscleGroupIds(muscle.id);
                    },
                  );
                }).toList(),
              );
            },
          ),
          const Divider(),
        ],
      ),
    );
  }
}
