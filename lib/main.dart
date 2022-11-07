import 'dart:async';

import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runZonedGuarded(() => runApp(const MyApp()), (error, stack) {
    debugPrint(error.toString());
    debugPrintStack(stackTrace: stack);
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
