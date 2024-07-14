import 'package:fitmetrics/src/core/theme/theme.dart';
import 'package:fitmetrics/src/core/theme/util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FitmetricsApp extends ConsumerWidget {
  const FitmetricsApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    TextTheme textTheme = createTextTheme(context, "Barlow", "Barlow");
    MaterialTheme theme = MaterialTheme(textTheme);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme.light(),
      title: 'Fitmetrics',
      home: const Scaffold(
        body: Center(
          child: Text('Fitmetrics'),
        ),
      ),
    );
  }
}
