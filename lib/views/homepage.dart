import 'package:flutter/material.dart';
import 'package:urai_web/responsiveWidgets/responsive_appbar.dart';
import 'package:urai_web/responsiveWidgets/responsive_body.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double screenHeight = 0.0;
  double screenWidth = 0.0;

  AppBar appBar() {
    return AppBar(
      toolbarHeight: 80,
      backgroundColor: Colors.white,
      title: const Image(image: AssetImage('assets/images/UraiBanner.jpg'), height: 80),
      actions: <Widget>[ResponsiveAppBar(screenWidth: screenWidth)],
    );
  }

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: appBar(),
      body: ResponsiveBody(screenWidth: screenWidth, screenHeight: screenHeight),
    );
  }
}
