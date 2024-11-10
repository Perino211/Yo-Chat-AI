import 'package:chatai/pages/login.dart';
import 'package:chatai/pages/mainscreen.dart';
import 'package:chatai/pages/signup.dart';
import 'package:chatai/pages/splashscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Splashscreen(),
      routes: {
        '/to_signup': (context) => Signup(),
        '/to_signin': (context) => Login(),
        '/to_main': (context) => Mainscreen(),
      },
    );
  }
}
