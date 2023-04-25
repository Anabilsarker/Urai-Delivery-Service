import 'package:flutter/material.dart';

class CustomText {
  static Text text({
    required String content,
    Color fontColor = Colors.black,
    FontWeight fontWeight = FontWeight.normal,
    double fontSize = 14,
  }) {
    TextStyle textStyle =
        TextStyle(color: fontColor, fontWeight: fontWeight, fontSize: fontSize);

    return Text(
      content,
      style: textStyle,
    );
  }
}
