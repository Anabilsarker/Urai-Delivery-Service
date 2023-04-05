import 'package:flutter/material.dart';

class CustomButtonStyle {
  // AppBar Desktop
  static ButtonStyle elevatedButtonAppBarDesktop =
      ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 16));
  static ButtonStyle textButtonAppBarDesktop =
      TextButton.styleFrom(textStyle: const TextStyle(fontSize: 16));
  static ButtonStyle outlinedButtonAppBarDesktop = OutlinedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 16),
      side: const BorderSide(width: 0.5));
  // AppBar Desktop
  // AppBar Mobile
  static ButtonStyle outlinedButtonAppBarMobile = OutlinedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 14),
      side: const BorderSide(width: 0.5, color: Colors.blue));
  // AppBar Mobile

  // Body
  static ButtonStyle elevatedButtonBody = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 16),
      backgroundColor: Colors.white,
      foregroundColor: Colors.blue);
  // Body
}
