import 'package:flutter/material.dart';
import 'package:urai_web/styles/custom_button.dart';

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
    return Row(
      children: <Widget>[
        Padding(
            padding: const EdgeInsets.only(),
            child: CustomButton.textButton(Variables.pricing, _dummy())),
        Padding(
            padding: const EdgeInsets.only(),
            child: CustomButton.textButton(Variables.contactUs, _dummy())),
        Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: CustomButton.outlinedButton(Variables.register, _dummy())),
        Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: CustomButton.elevatedButton(Variables.login, _dummy())),
      ],
    );
  }

  Widget mobileAppBarView() {
    return Row(
      children: <Widget>[
        Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: CustomButton.outlinedButton(Variables.login, _dummy(), height: 30, width: 80)),
        PopupMenuButton(
          icon: const Icon(
            Icons.dehaze_rounded,
            color: Colors.blue,
          ),
          itemBuilder: (context) => [
            PopupMenuItem(
                child: CustomButton.textButton(Variables.register, _dummy())),
            PopupMenuItem(
                child: CustomButton.textButton(Variables.pricing, _dummy())),
            PopupMenuItem(
                child: CustomButton.textButton(Variables.contactUs, _dummy())),
          ],
        )
      ],
    );
  }

  Void _dummy() {}
}
