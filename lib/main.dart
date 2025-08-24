import 'package:flutter/material.dart';
import 'package:healthcare/HealthOpenPage.dart';
import 'package:healthcare/RegistrationPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HealthOpenPage(),
      home: RegistrationPage(),
    );
  }
}
