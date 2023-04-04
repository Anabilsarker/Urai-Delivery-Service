import 'package:flutter/material.dart';

import '../strings.dart';

class ResponsiveAppBar extends StatelessWidget {
  const ResponsiveAppBar({super.key, required this.screenWidth});
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    if (screenWidth > 680.0) {
      return desktopAppBarView();
    } else {
      return mobileAppBarView();
    }
  }

  Widget desktopAppBarView() {
    ButtonStyle textButtonStyle = TextButton.styleFrom(textStyle: const TextStyle(fontSize: 16));
    ButtonStyle outlinedButtonStyle = OutlinedButton.styleFrom(textStyle: const TextStyle(fontSize: 16), side: const BorderSide(width: 0.5));
    ButtonStyle elevatedButtonStyle = ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 16));

    return Row(
      children: <Widget>[
        Padding(
            padding: const EdgeInsets.only(),
            child: SizedBox(
              height: 35.0,
              width: 100.0,
              child: TextButton(
                onPressed: _dummy,
                style: textButtonStyle,
                child: const Text(Variables.pricing),
              ),
            )),
        Padding(
            padding: const EdgeInsets.only(),
            child: SizedBox(
              height: 35.0,
              width: 100.0,
              child: TextButton(
                onPressed: _dummy,
                style: textButtonStyle,
                child: const Text(Variables.contactUs),
              ),
            )),
        Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: SizedBox(
              height: 35.0,
              width: 100.0,
              child: OutlinedButton(
                onPressed: _dummy,
                style: outlinedButtonStyle,
                child: const Text(Variables.register),
              ),
            )),
        Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: SizedBox(
              height: 35.0,
              width: 100.0,
              child: ElevatedButton(
                onPressed: _dummy,
                style: elevatedButtonStyle,
                child: const Text(Variables.login),
              ),
            )),
      ],
    );
  }

  Widget mobileAppBarView() {
    return PopupMenuButton(
      icon: const Icon(Icons.add_task, color: Colors.blue,),
      itemBuilder: (context) => [
        const PopupMenuItem(child: Text("Broogh")),
      ],
    );
  }

  void _dummy() {}
}
