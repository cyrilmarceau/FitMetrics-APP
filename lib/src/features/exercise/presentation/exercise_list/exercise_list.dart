import 'package:fitmetrics/src/core/enums/exercise_filter_enum.dart';
import 'package:fitmetrics/src/features/exercise/domain/exercise.dart';
import 'package:fitmetrics/src/features/exercise/presentation/controller/exercise_filter_controller.dart';
import 'package:fitmetrics/src/features/exercise/providers/exercise_provider.dart';
import 'package:fitmetrics/src/features/shared/widgets/circular_indicator.dart';
import 'package:fitmetrics/src/features/shared/widgets/error.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ExerciseList extends ConsumerWidget {
  const ExerciseList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final muscleGroupIDSFilter = ref.watch(muscleGroupIdsControllerProvider);
    final nameFilter = ref.watch(nameControllerProvider);
    final ownerFilter = ref.watch(ownerFilterControllerProvider);
    final exercises = ref.read(getExercisesProvider(queryData: (
      muscleGroupIds: null,
      name: null,
      ownerFilter: ExerciseOwnerFilterEnum.all,
    )));

    debugPrint('exercises: $exercises');

    return switch (exercises) {
      AsyncLoading() => const CircularIndicator(),
      AsyncError() => SharedErrorWidget(
          onErrorCallback: () => ref.refresh(getExercisesProvider(queryData: (
                muscleGroupIds: muscleGroupIDSFilter,
                name: nameFilter,
                ownerFilter: ownerFilter,
              )).future)),
      AsyncData(:final value) => RefreshIndicator(
          child: ListView.builder(
            itemCount: 10, // Replace with actual number of exercises
            itemBuilder: (context, index) {
              return ExerciseListItem(
                exercise: value.data[index],
                onTap: () {},
              );
            },
          ),
          onRefresh: () async => ref.refresh(getExercisesProvider(queryData: (
            muscleGroupIds: muscleGroupIDSFilter,
            name: nameFilter,
            ownerFilter: ownerFilter,
          )).future),
        ),
      _ => const Text('unknown'),
    };
  }
}

class ExerciseListItem extends StatelessWidget {
  final Exercise exercise;
  final VoidCallback onTap;

  const ExerciseListItem({super.key, required this.exercise, required this.onTap});

  @override
  Widget build(BuildContext context) {
    debugPrint('exercise: $exercise');
    return Column(
      children: [
        ListTile(
          title: Text(exercise.name),
          subtitle: Text(exercise.description ?? ''),
          onTap: onTap,
        ),
      ],
    );
  }
}
