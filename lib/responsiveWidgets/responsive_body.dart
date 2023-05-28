import 'package:flutter/material.dart';
import 'package:urai_web/styles/custom_button.dart';
import 'package:urai_web/styles/responsive.dart';
import 'package:urai_web/styles/custom_text.dart';
import '../strings.dart';

class ResponsiveBodyStateful extends StatefulWidget {
  const ResponsiveBodyStateful({super.key, required this.screenWidth, required this.screenHeight});
  final double screenWidth;
  final double screenHeight;

  @override
  // ignore: no_logic_in_create_state
  State<StatefulWidget> createState() => ResponsiveBody(screenHeight, screenWidth);

}

class ResponsiveBody extends State<ResponsiveBodyStateful> {
  double screenWidth = 0.0;
  double screenHeight = 0.0;
  ResponsiveBody(double screenHeight, double screenWidth) {
    // ignore: prefer_initializing_formals
    this.screenHeight = screenHeight;
    // ignore: prefer_initializing_formals
    this.screenWidth = screenWidth;
    //build(context);
  }

  @override
  Widget build(BuildContext context) {
    if (screenWidth > Responsive.mobileView) {
      return desktopBodyView();
    } else {
      return mobileBodyView();
    }
  }

  Widget mobileBackground() {
    return Container(
      height: this.screenWidth * 0.50,
      width: this.screenWidth,
      decoration: const BoxDecoration(color: Colors.blue),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0, right: 20.0),
                child: CustomText.text(
                  content: "Our Motto\nWith 2nd Line",
                  fontSize: 24,
                  fontColor: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: CustomButton.elevatedButton(
                  content: Variables.login,
                  onPressed: _dummy,
                  foreground: Colors.blue,
                  background: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget pricing() {
    List<String> drop = [];
    drop.add("ghiuh");
    drop.add("werwer");
    return Center(
      child: Card(
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text("From", textAlign: TextAlign.left),
                    CustomButton.dropdownButton(items: drop, onChanged: _dummy2, width: 190, hint: const Text("data")),
                    const Text("Category", textAlign: TextAlign.left),
                    CustomButton.dropdownButton(items: drop, onChanged: _dummy2, width: 190),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text("To"),
                  CustomButton.dropdownButton(items: drop, onChanged: _dummy2, width: 190),
                  const Text("Service"),
                  CustomButton.dropdownButton(items: drop, onChanged: _dummy2, width: 190),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget desktopBodyView() {
    return Column(
      children: <Widget>[pricing()],
    );
  }

  Widget mobileBodyView() {
    return Column(
      children: <Widget>[mobileBackground(), pricing()],
    );
  }

  void _dummy2(dynamic bha) { }
  void _dummy() {}
}
