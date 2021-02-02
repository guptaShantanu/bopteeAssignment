import 'package:flutter/material.dart';
import 'package:gobuzy_assignment/Screens/dashboard_screen.dart';
import 'package:gobuzy_assignment/Screens/login_screen.dart';

void main() {
  runApp(GoBuzzyApp());
}

class GoBuzzyApp extends StatelessWidget {
  var lightThemeData = ThemeData(
      fontFamily: 'Poppins'
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
