import 'package:flutter/material.dart';
import 'package:parking_flutter/screens/app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Parking',
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          primaryColor: Colors.black,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: const App(),
    );
  }
}
