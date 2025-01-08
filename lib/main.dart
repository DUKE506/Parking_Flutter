import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:parking_flutter/router.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'Parking',
      theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xFFEEF2F5),
          primaryColor: Colors.black,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      // home: const App(),
    );
  }
}
