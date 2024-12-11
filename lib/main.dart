import 'package:explore_space/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
            theme: ThemeData(
        fontFamily: 'Space Grotesk',
      ),

      home: const SplashScreen(),
    );
  }
}