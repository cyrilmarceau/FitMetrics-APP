import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum Owner { me, predefined, all }

class MuscleGroupOwnerFilter extends ConsumerWidget {
  const MuscleGroupOwnerFilter({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
          SegmentedButton<Owner>(
            segments: const <ButtonSegment<Owner>>[
              ButtonSegment<Owner>(value: Owner.me, label: Text('Moi')),
              ButtonSegment<Owner>(value: Owner.predefined, label: Text('Prédéfinit')),
              ButtonSegment<Owner>(value: Owner.all, label: Text('Tous')),
            ],
            selected: const <Owner>{Owner.me},
            onSelectionChanged: (Set<Owner> newSelection) {
              debugPrint('Selected: $newSelection');
            },
          ),
          const Divider()
        ],
      ),
    );
  }
}
