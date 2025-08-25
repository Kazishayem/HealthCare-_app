import 'package:flutter/material.dart';
import 'package:healthcare/HealthOpenPage.dart';
import 'package:healthcare/RegistrationPage.dart';
import 'package:healthcare/LoginPage.dart';
import 'package:healthcare/HealthDetails.dart';
import 'package:healthcare/DoctorList.dart';

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
      // home: RegistrationPage(),

      initialRoute: '/openpage',
      routes: {
        '/openpage': (context) => HealthOpenPage(),
        '/registration': (context) => RegistrationPage(),
        '/login': (context) => LoginPage(),
        '/healthdetails': (context) => HealthDetails(
              email: "admin@gmail.com",
              password: "admin",
            ),
        '/doctorlist': (context) => DoctorList(),
      },
      onUnknownRoute: (settings) => MaterialPageRoute(
        builder: (_) =>
            Scaffold(body: Center(child: Text("404-Page not found"))),
      ),
    );
  }
}
