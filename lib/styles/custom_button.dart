import 'package:flutter/material.dart';
import 'package:urai_web/main.dart';

// class StatefulButton extends StatefulWidget {
//   const StatefulButton({super.key});

//   @override
//   State<StatefulWidget> createState() => CustomButton();
// }extends State<StatefulButton> 

class CustomButton {
  static List<dynamic>? _items;
  static dynamic dropDownValue;
  static dynamic _value;
  static const double height = 35.0;
  static const double width = 100.0;
  static const double fontSize = 16;
  static const double borderWidth = 0.5;

  // @override
  // Widget build(BuildContext context) {
  //   return dropdownButton;
  // }

  static SizedBox elevatedButton({
    required String content,
    required void Function() onPressed,
    double height = height,
    double width = width,
    double fontSize = fontSize,
    dynamic foreground,
    dynamic background,
  }) {
    background ??= theme.colorScheme.primary;
    foreground ??= theme.colorScheme.onBackground;
    ButtonStyle elevatedButtonStyle = ElevatedButton.styleFrom(
      textStyle: TextStyle(fontSize: fontSize),
      foregroundColor: foreground,
      backgroundColor: background,
    );

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
    double height = height,
    double width = width,
    double fontSize = fontSize,
    double borderWidth = borderWidth,
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
      backgroundColor: background,
    );

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
    double height = height,
    double width = width,
    double fontSize = fontSize,
    dynamic foreground,
    dynamic background,
  }) {
    ButtonStyle textButtonStyle = OutlinedButton.styleFrom(
      textStyle: TextStyle(fontSize: fontSize),
      foregroundColor: foreground,
      backgroundColor: background,
    );

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
    required List<dynamic> items,
    required void Function(dynamic) onChanged,
    Widget hint = const Text("Place Holder Hint Text"),
    double height = height,
    double width = width,
    double fontSize = fontSize,
  }) {
    _items = items;
    return SizedBox(
      height: height,
      width: width,
      child: DropdownButton(
        value: dropDownValue,
        items: getMenuItems(_items!),
        hint: hint,
        onChanged: (dynamic) => _onChanged(_value, onChanged),
      ),
    );
  }

  static void _onChanged(dynamic value, dynamic onChanged) {
    dropDownValue = value!;
    onChanged;
  }

  static List<DropdownMenuItem<dynamic>> getMenuItems(List<dynamic> items) {
    return items.map<DropdownMenuItem<dynamic>>((dynamic value) {
      return DropdownMenuItem<dynamic>(
        value: value,
        child: Text(value),
      );
    }).toList();
  }
}
