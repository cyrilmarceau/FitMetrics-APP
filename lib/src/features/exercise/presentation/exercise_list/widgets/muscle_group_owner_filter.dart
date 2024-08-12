import 'package:fitmetrics/src/core/enums/exercise_filter_enum.dart';
import 'package:fitmetrics/src/features/exercise/presentation/controller/exercise_filter_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MuscleGroupOwnerFilter extends ConsumerWidget {
  const MuscleGroupOwnerFilter({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final owner = ref.watch(ownerFilterControllerProvider);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Source',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SegmentedButton<ExerciseOwnerFilterEnum>(
            segments: const <ButtonSegment<ExerciseOwnerFilterEnum>>[
              ButtonSegment<ExerciseOwnerFilterEnum>(value: ExerciseOwnerFilterEnum.me, label: Text('Moi')),
              ButtonSegment<ExerciseOwnerFilterEnum>(value: ExerciseOwnerFilterEnum.predefined, label: Text('Prédéfinit')),
              ButtonSegment<ExerciseOwnerFilterEnum>(value: ExerciseOwnerFilterEnum.all, label: Text('Tous')),
            ],
            selected: <ExerciseOwnerFilterEnum>{owner},
            onSelectionChanged: (Set<ExerciseOwnerFilterEnum> newSelection) {
              ref.read(ownerFilterControllerProvider.notifier).updateOwnerFilter(newSelection.first);
            },
          ),
          const Divider()
        ],
      ),
    );
  }
}
