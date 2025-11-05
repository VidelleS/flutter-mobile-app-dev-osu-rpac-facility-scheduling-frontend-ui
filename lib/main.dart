import 'package:flutter/material.dart';
import 'package:rpac_fitness/Pages/Home.dart';
import 'package:rpac_fitness/Pages/splashpage.dart';

void main() {
  runApp((MainApp()));
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(goToPage: Home(),duration: 3 )
    );
  }
}

