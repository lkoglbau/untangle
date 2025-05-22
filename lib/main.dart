import 'package:flutter/material.dart';
import 'package:untangle_1/pages/home.dart';
import 'package:untangle_1/pages/konflikt.dart';
import 'package:untangle_1/pages/login.dart';
import 'package:untangle_1/pages/register.dart';
import 'package:untangle_1/pages/weeklyRef.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      routes: {
        '/register': (context) => RegisterPage(),
        '/login': (context) => LoginPage(), // Route hinzufügen
        '/home': (context) => HomePage(),
        '/weeklyRef': (context) => WeeklyReflexion(),
        '/konflikt': (context) => KonfliktPage(),
      }, // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
