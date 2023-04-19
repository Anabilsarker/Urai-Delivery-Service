import 'package:flutter/material.dart';
import 'package:urai_web/styles/custom_button.dart';
import 'package:urai_web/styles/responsive.dart';

import '../strings.dart';

class ResponsiveAppBar extends StatelessWidget {
  const ResponsiveAppBar({super.key, required this.screenWidth});
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    if (screenWidth > Responsive.mobileView) {
      return desktopAppBarView();
    } else {
      return mobileAppBarView();
    }
  }

  Widget desktopAppBarView() {
    return Row(
      children: <Widget>[
        Padding(padding: const EdgeInsets.only(), child: CustomButton.textButton(content: Variables.pricing, onPressed: _dummy)),
        Padding(padding: const EdgeInsets.only(), child: CustomButton.textButton(content: Variables.contactUs, onPressed: _dummy)),
        Padding(padding: const EdgeInsets.only(left: 20.0), child: CustomButton.outlinedButton(content: Variables.register, onPressed: _dummy)),
        Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0), child: CustomButton.elevatedButton(content: Variables.login, onPressed: _dummy)),
      ],
    );
  }

  Widget mobileAppBarView() {
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: CustomButton.outlinedButton(content: Variables.login, onPressed: _dummy, height: 30, width: 80, fontSize: 14),
        ),
        PopupMenuButton(
          icon: const Icon(
            Icons.dehaze_rounded,
            color: Colors.blue,
          ),
          itemBuilder: (context) => [
            PopupMenuItem(child: CustomButton.textButton(content: Variables.register, onPressed: _dummy)),
            PopupMenuItem(child: CustomButton.textButton(content: Variables.pricing, onPressed: _dummy)),
            PopupMenuItem(child: CustomButton.textButton(content: Variables.contactUs, onPressed: _dummy)),
          ],
        )
      ],
    );
  }

  void _dummy() {}
}
