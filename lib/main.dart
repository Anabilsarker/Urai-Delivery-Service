import 'package:flutter/material.dart';
import 'package:urai_web/strings.dart';
import 'views/homepage.dart';

ThemeData theme = ThemeData();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    theme = ThemeData(
      // This is the theme of the application.
      primarySwatch: Colors.blue,
    );
    return MaterialApp(
      title: Variables.title,
      theme: theme,
      home: const MyHomePage(title: Variables.title),
    );
  }
}
