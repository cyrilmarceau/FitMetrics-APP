import 'package:fitmetrics/src/features/exercise/domain/exercise.dart';
import 'package:fitmetrics/src/features/exercise/providers/exercise_provider.dart';
import 'package:fitmetrics/src/features/shared/widgets/circular_indicator.dart';
import 'package:fitmetrics/src/features/shared/widgets/error.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ExerciseList extends ConsumerWidget {
  const ExerciseList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final exercises = ref.watch(getExercisesProvider);

    return switch (exercises) {
      AsyncLoading() => const CircularIndicator(),
      AsyncError() => SharedErrorWidget(
          onErrorCallback: () => ref.refresh(getExercisesProvider.future),
        ),
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
          onRefresh: () async => ref.refresh(getExercisesProvider.future),
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
    return Container(
      color: Colors.white,
      margin: const EdgeInsets.all(0),
      child: ListTile(
        title: Text(exercise.name, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(exercise.muscleGroups.map((e) => e.name).join(', ')),
        trailing: const Icon(Icons.chevron_right),
        onTap: onTap,
      ),
    );
  }
}
