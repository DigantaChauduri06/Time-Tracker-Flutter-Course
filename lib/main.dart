import 'package:flutter/material.dart';
import 'package:timetracker/Pages/sign_in/signin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Time Tracker',
      theme: ThemeData.from(colorScheme: ColorScheme.highContrastLight()),
      home: SignInPage(),
    );
  }
}
