import 'package:flutter/material.dart';
import 'package:urai_web/strings.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  List<Widget> appBarActions() {
    return <Widget>[
      Padding(
        padding: const EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0, bottom: 20.0),
        child: OutlinedButton(
          onPressed: _incrementCounter,
          child: const Text(Variables.register),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 0.0, top: 20.0, right: 20.0, bottom: 20.0),
        child: ElevatedButton(
          onPressed: _incrementCounter,
          child: const Text(Variables.login),
        ),
      )
    ];
  }

  AppBar appBar() {
    return AppBar(
      toolbarHeight: 80,
      backgroundColor: Colors.white,
      title: const Image(image: AssetImage('assets/images/UraiBanner.jpg'), height: 80),
      actions: appBarActions(),
    );
  }

  List<Widget> status() {
    ButtonStyle style = ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20), minimumSize: const Size(150.0, 50.0), backgroundColor: Colors.green);

    return <Widget>[
      Padding(
        padding: const EdgeInsets.only(left: 0.0, top: 20.0, right: 0.0, bottom: 0.0),
        child: ElevatedButton(
          onPressed: _incrementCounter,
          style: style,
          child: const Text(Variables.merchant),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 0.0, top: 20.0, right: 0.0, bottom: 0.0),
        child: ElevatedButton(
          onPressed: _incrementCounter,
          style: style,
          child: const Text(Variables.customer),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 0.0, top: 20.0, right: 0.0, bottom: 0.0),
        child: ElevatedButton(
          onPressed: _incrementCounter,
          style: style,
          child: const Text(Variables.rider),
        ),
      )
    ];
  }

  Center body() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: status(),
      ),
    );
  }

  FloatingActionButton increamentButton() {
    return FloatingActionButton(
      onPressed: _incrementCounter,
      tooltip: 'Increment',
      child: const Icon(Icons.add),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: body(),
      floatingActionButton: increamentButton(),
    );
  }
}
