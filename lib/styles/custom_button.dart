import 'dart:ffi';

import 'package:flutter/material.dart';

class CustomButton {
  // AppBar Desktop
  static SizedBox elevatedButton(String content, Void Function() pressedEvent,
      {double height = 35.0, double width = 100.0, double fontSize = 16}) {
    ButtonStyle elevatedButtonStyle =
        ElevatedButton.styleFrom(textStyle: TextStyle(fontSize: fontSize));

    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: pressedEvent,
        style: elevatedButtonStyle,
        child: Text(content),
      ),
    );
  }

  static SizedBox outlinedButton(String content, void Function() pressedEvent,
      {double height = 35.0,
      double width = 100.0,
      double fontSize = 16,
      double borderWidth = 0.5,
      Color color = Colors.blue}) {
    ButtonStyle outlinedButtonStyle = OutlinedButton.styleFrom(
        textStyle: TextStyle(fontSize: fontSize),
        side: BorderSide(width: borderWidth, color: color));

    return SizedBox(
      height: height,
      width: width,
      child: OutlinedButton(
        onPressed: pressedEvent,
        style: outlinedButtonStyle,
        child: Text(content),
      ),
    );
  }

  static SizedBox textButton(
    String content,
    Void Function() pressedEvent, {
    double height = 35.0,
    double width = 100.0,
    double fontSize = 16,
  }) {
    ButtonStyle textButtonStyle =
        OutlinedButton.styleFrom(textStyle: TextStyle(fontSize: fontSize));

    return SizedBox(
      height: height,
      width: width,
      child: TextButton(
        onPressed: pressedEvent,
        style: textButtonStyle,
        child: Text(content),
      ),
    );
  }

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
