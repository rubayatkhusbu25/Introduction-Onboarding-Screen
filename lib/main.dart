import 'package:flutter/material.dart';
import 'package:introduction_ui/intro_screen.dart';

import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          "/": (context) =>IntroScreen(),
          "home": (context) =>HomeScreen(),
        },
    );
  }
}
