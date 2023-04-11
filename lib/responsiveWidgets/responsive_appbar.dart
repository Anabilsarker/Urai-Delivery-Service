import 'package:flutter/material.dart';
import 'package:urai_web/styles/button_styles.dart';

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
            child: SizedBox(
              height: 35.0,
              width: 100.0,
              child: TextButton(
                onPressed: _dummy,
                style: CustomButtonStyle.textButtonAppBarDesktop,
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
                style: CustomButtonStyle.textButtonAppBarDesktop,
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
                style: CustomButtonStyle.outlinedButtonAppBarDesktop,
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
                style: CustomButtonStyle.elevatedButtonAppBarDesktop,
                child: const Text(Variables.login),
              ),
            )),
      ],
    );
  }

  Widget mobileAppBarView() {
    return Row(
      children: <Widget>[
        Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: SizedBox(
              height: 30.0,
              width: 80.0,
              child: OutlinedButton(
                onPressed: _dummy,
                style: CustomButtonStyle.outlinedButtonAppBarMobile,
                child: const Text(Variables.login),
              ),
            )),
        PopupMenuButton(
          icon: const Icon(
            Icons.dehaze_rounded,
            color: Colors.blue,
          ),
          itemBuilder: (context) => [
            PopupMenuItem(child: SizedBox(child: TextButton(onPressed: _dummy, child: const Text(Variables.register)))),
            PopupMenuItem(child: SizedBox(child: TextButton(onPressed: _dummy, child: const Text(Variables.pricing)))),
            PopupMenuItem(child: SizedBox(child: TextButton(onPressed: _dummy, child: const Text(Variables.contactUs)))),
          ],
        )
      ],
    );
  }

  void _dummy() {}
}
