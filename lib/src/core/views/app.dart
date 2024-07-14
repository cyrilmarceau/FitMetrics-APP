import 'package:fitmetrics/src/core/router/app_router.dart';
import 'package:fitmetrics/src/core/theme/theme.dart';
import 'package:fitmetrics/src/core/theme/util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FitmetricsApp extends ConsumerWidget {
  const FitmetricsApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(goRouterProvider);

    TextTheme textTheme = createTextTheme(context, "Barlow", "Barlow");
    MaterialTheme theme = MaterialTheme(textTheme);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: theme.light(),
      title: 'Fitmetrics',
      routerConfig: goRouter,
    );
  }
}
