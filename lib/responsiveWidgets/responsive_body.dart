import 'package:flutter/material.dart';
import 'package:urai_web/styles/button_styles.dart';
import 'package:urai_web/styles/text_styles.dart';
import '../strings.dart';

class ResponsiveBody extends StatelessWidget {
  const ResponsiveBody(
      {super.key, required this.screenWidth, required this.screenHeight});
  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    if (screenWidth > 680.0) {
      return desktopBodyView();
    } else {
      return mobileBodyView();
    }
  }

  Widget mobileBackground() {
    return Container(
        height: screenWidth * 0.50,
        width: screenWidth,
        decoration: const BoxDecoration(color: Colors.blue),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Padding(
                    padding: EdgeInsets.only(bottom: 20.0, right: 20.0),
                    child: Text("Our Motto\nWith 2nd Line",
                        style: CustomTextStyle.mottoTextBody)),
                Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: SizedBox(
                      height: 35.0,
                      width: 100.0,
                      child: ElevatedButton(
                        onPressed: _dummy,
                        style: CustomButtonStyle.elevatedButtonBody,
                        child: const Text(Variables.login),
                      ),
                    )),
              ],
            )
          ],
        ));
  }

  Widget pricing() {
    List<DropdownMenuItem> drop = <DropdownMenuItem>[
      const DropdownMenuItem<dynamic>(value: "Heyy", child: Text("data"))
    ];
    return Container(
      child: Table(
        children: <TableRow>[
          const TableRow(children: <Widget>[Text("From"), Text("To")]),
          TableRow(children: <Widget>[
            DropdownButton(
              items: drop,
              onChanged: _dummy2,
            ),
            DropdownButton(
              items: drop,
              onChanged: _dummy2,
            )
          ]),
        ],
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

  void _dummy2(dynamic bha) {}
  void _dummy() {}
}
