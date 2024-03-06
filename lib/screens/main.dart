import 'package:flutter/material.dart';
import 'main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.fallback().copyWith(
          primaryColor: Colors.blue, scaffoldBackgroundColor: Colors.white),
      home: MainScreen(),
    );
  }
}
