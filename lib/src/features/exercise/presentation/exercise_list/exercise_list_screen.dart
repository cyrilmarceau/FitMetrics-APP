import 'package:fitmetrics/src/core/constants/app_sizes.dart';
import 'package:fitmetrics/src/core/enums/app_page_enum.dart';
import 'package:fitmetrics/src/core/extension/app_route_extension.dart';
import 'package:fitmetrics/src/features/exercise/presentation/exercise_list/exercise_list.dart';
import 'package:fitmetrics/src/features/exercise/presentation/exercise_list/widgets/muscle_group_filter.dart';
import 'package:fitmetrics/src/features/exercise/presentation/exercise_list/widgets/muscle_group_owner_filter.dart';
import 'package:fitmetrics/src/features/shared/widgets/bottom_sheet_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class ExerciseListScreen extends ConsumerWidget {
  const ExerciseListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.filter_list),
          onPressed: () => showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            enableDrag: true,
            backgroundColor: Colors.white,
            shape: const RoundedRectangleBorder(
              borderRadius: bottomSheetBorderRadius,
            ),
            builder: (context) => SingleChildScrollView(
              controller: ModalScrollController.of(context),
              child: const Column(
                children: [
                  BottomSheetTitle(title: "Filtrer des exercices"),
                  Divider(),
                  MuscleGroupFilter(),
                  MuscleGroupOwnerFilter(),
                ],
              ),
            ),
          ),
        ),
        title: Text(AppPage.exercise.routePageTitle),
        automaticallyImplyLeading: false,
        titleSpacing: 0,
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () => debugPrint('Add exercise'),
          ),
        ],
      ),
      body: const ExerciseList(),
    );
  }
}
