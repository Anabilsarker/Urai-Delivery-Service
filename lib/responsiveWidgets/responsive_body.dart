import 'package:flutter/material.dart';
import '../strings.dart';

class ResponsiveBody extends StatelessWidget {
  const ResponsiveBody({super.key, required this.screenWidth, required this.screenHeight});
  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return background();
  }

  Widget body() {
    ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20), minimumSize: const Size(150.0, 50.0), backgroundColor: Colors.green);

    return Row(children: <Widget>[
      background()
      // Padding(
      //   padding: const EdgeInsets.only(left: 0.0, top: 20.0, right: 0.0, bottom: 0.0),
      //   child: ElevatedButton(
      //     onPressed: _dummy,
      //     style: style,
      //     child: const Text(Variables.merchant),
      //   ),
      // ),
      // Padding(
      //   padding: const EdgeInsets.only(left: 0.0, top: 20.0, right: 0.0, bottom: 0.0),
      //   child: ElevatedButton(
      //     onPressed: _dummy,
      //     style: style,
      //     child: const Text(Variables.customer),
      //   ),
      // ),
      // Padding(
      //   padding: const EdgeInsets.only(left: 0.0, top: 20.0, right: 0.0, bottom: 0.0),
      //   child: ElevatedButton(
      //     onPressed: _dummy,
      //     style: style,
      //     child: const Text(Variables.rider),
      //   ),
      // )
    ]);
  }

  Widget background() {
    return Container(height: screenWidth * 0.35, width: screenWidth, decoration: const BoxDecoration(color: Colors.blue));
  }
}
