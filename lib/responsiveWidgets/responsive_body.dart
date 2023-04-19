import 'package:flutter/material.dart';
import 'package:urai_web/styles/custom_button.dart';
import 'package:urai_web/styles/responsive.dart';
import 'package:urai_web/styles/text_styles.dart';
import '../strings.dart';

class ResponsiveBody extends StatelessWidget {
  const ResponsiveBody({super.key, required this.screenWidth, required this.screenHeight});
  final double screenWidth;
  final double screenHeight;

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
                    child: Text("Our Motto\nWith 2nd Line", style: CustomTextStyle.mottoTextBody)),
                Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: CustomButton.elevatedButton(content: Variables.login, onPressed: _dummy, foreground: Colors.blue, background: Colors.white)),
              ],
            )
          ],
        ));
  }

  Widget pricing() {
    List<DropdownMenuItem> drop = <DropdownMenuItem>[const DropdownMenuItem<dynamic>(value: "Heyy", child: Text("ghiuh"))];
    return SizedBox(
      height: screenWidth * 0.3,
      width: screenWidth - 100,
      child: Table(
        children: <TableRow>[
          const TableRow(children: <Widget>[Text("From"), Text("To")]),
          TableRow(children: <Widget>[
            CustomButton.dropdownButton(items: drop, onChanged: _dummy2),
            CustomButton.dropdownButton(items: drop, onChanged: _dummy2),
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
