import 'package:flutter/material.dart';
import 'package:urai_web/main.dart';

class CustomButton {
  static SizedBox elevatedButton({
    required String content,
    required void Function() onPressed,
    double height = 35.0,
    double width = 100.0,
    double fontSize = 16,
    dynamic foreground,
    dynamic background,
  }) {
    background ??= theme.colorScheme.primary;
    foreground ??= theme.colorScheme.onBackground;
    ButtonStyle elevatedButtonStyle = ElevatedButton.styleFrom(
        textStyle: TextStyle(fontSize: fontSize),
        foregroundColor: foreground,
        backgroundColor: background);

    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: elevatedButtonStyle,
        child: Text(content),
      ),
    );
  }

  static SizedBox outlinedButton({
    required String content,
    required void Function() onPressed,
    double height = 35.0,
    double width = 100.0,
    double fontSize = 16,
    double borderWidth = 0.5,
    dynamic borderColor,
    dynamic foreground,
    dynamic background,
  }) {
    borderColor ??= theme.colorScheme.shadow;
    background ??= theme.colorScheme.onBackground;
    foreground ??= theme.colorScheme.primary;
    ButtonStyle outlinedButtonStyle = OutlinedButton.styleFrom(
        textStyle: TextStyle(fontSize: fontSize),
        side: BorderSide(width: borderWidth, color: borderColor),
        foregroundColor: foreground,
        backgroundColor: background);

    return SizedBox(
      height: height,
      width: width,
      child: OutlinedButton(
        onPressed: onPressed,
        style: outlinedButtonStyle,
        child: Text(content),
      ),
    );
  }

  static SizedBox textButton({
    required String content,
    required void Function() onPressed,
    double height = 35.0,
    double width = 100.0,
    double fontSize = 16,
    dynamic foreground,
    dynamic background,
  }) {
    ButtonStyle textButtonStyle = OutlinedButton.styleFrom(
        textStyle: TextStyle(fontSize: fontSize),
        foregroundColor: foreground,
        backgroundColor: background);

    return SizedBox(
      height: height,
      width: width,
      child: TextButton(
        onPressed: onPressed,
        style: textButtonStyle,
        child: Text(content),
      ),
    );
  }

  static SizedBox dropdownButton({
    required List<DropdownMenuItem<dynamic>> items,
    required void Function(dynamic) onChanged,
    double height = 35.0,
    double width = 100.0,
    double fontSize = 16,
  }) {
    return SizedBox(
      height: height,
      width: width,
      child: DropdownButton(items: items, onChanged: onChanged),
    );
  }
}
