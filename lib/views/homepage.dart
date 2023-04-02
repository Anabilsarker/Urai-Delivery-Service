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

  List<Widget> appBarButtons() {
    return <Widget>[];
  }

  List<Widget> appBarActions() {
    return <Widget>[
      Padding(
        padding: const EdgeInsets.only(
            left: 20.0, top: 20.0, right: 20.0, bottom: 20.0),
        child: OutlinedButton(
          onPressed: _incrementCounter,
          child: const Text('Click me'),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(
            left: 20.0, top: 20.0, right: 20.0, bottom: 20.0),
        child: ElevatedButton(
          onPressed: _incrementCounter,
          child: const Text(Variables.login),
        ),
      )
    ];
  }

  Padding appBarBanner() {
    return const Padding(
        padding: EdgeInsets.only(
            left: 20.0, top: 20.0, right: 20.0, bottom: 20.0),
        child: Image(image: AssetImage('assets/images/UraiBanner.jpg')),
      );
  }

  AppBar appBar() {
    return AppBar(
      toolbarHeight: 80,
      backgroundColor: Colors.white,
      title: appBarBanner(),
      actions: appBarActions(),
    );
  }

  List<Widget> status() {
    return <Widget>[
      const Text(
        'You have pushed the button this many times:',
      ),
      Text(
        '$_counter',
        style: Theme.of(context).textTheme.headlineMedium,
      ),
    ];
  }

  Center body() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
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
