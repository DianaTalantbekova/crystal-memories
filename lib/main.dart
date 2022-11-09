import 'dart:async';

import 'package:crystal_memories/screens/premium_screen.dart';
import 'package:crystal_memories/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runZonedGuarded(
      () => runApp(
            ScreenUtilInit(
              designSize: const Size(375, 812),
              builder: (BuildContext context, Widget? child) => MyApp(),
            ),
          ), (error, stack) {
    debugPrint(error.toString());
    debugPrintStack(stackTrace: stack);
  });
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerDelegate: _router.routerDelegate,
        routeInformationParser: _router.routeInformationParser,
        routeInformationProvider: _router.routeInformationProvider,
      );
  final GoRouter _router = GoRouter(
    routes: [
      GoRoute(
        routes: [],
        path: '/',
        builder: (BuildContext context, GoRouterState state) =>
            const LevelScreen(),
      ),
    ],
  );
}
