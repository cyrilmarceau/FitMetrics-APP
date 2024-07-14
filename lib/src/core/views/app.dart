import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FitmetricsApp extends ConsumerWidget {
  const FitmetricsApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fitmetrics',
      home: Scaffold(
        body: Center(
          child: Text('Fitmetrics'),
        ),
      ),
    );
  }
}
