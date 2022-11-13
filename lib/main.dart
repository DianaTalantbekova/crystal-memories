import 'dart:async';
import 'package:crystal_memories/screens/game_screen.dart';
import 'package:crystal_memories/screens/screens.dart';
import 'package:crystal_memories/screens/settings_screen.dart';
import 'package:crystal_memories/services/preference_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  PreferenceService().init();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);

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

  final GoRouter _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) =>
            const FailedScreen(),
        routes: [
          GoRoute(
            path: 'level_screen',
            builder: (BuildContext context, GoRouterState state) =>
                const LevelScreen(),
          ),
        ],
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerDelegate: _router.routerDelegate,
      routeInformationParser: _router.routeInformationParser,
      routeInformationProvider: _router.routeInformationProvider,
    );
  }
}
