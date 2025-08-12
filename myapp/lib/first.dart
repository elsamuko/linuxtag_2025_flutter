import 'package:flutter/material.dart';
import 'second.dart';
import 'third_with_params.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String fromThird = "";

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [
      TextButton(
        style: TextButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue,
        ),
        key: Key("second"),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute<Second>(builder: (BuildContext context) {
            return Second();
          }));
        },
        child: Text("Go to second"),
      ),
      TextButton(
        style: TextButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue,
        ),
        child: Text("Go to third with param"),
        onPressed: () async {
          String? rv = await Navigator.of(context).push(MaterialPageRoute<String>(builder: (BuildContext context) {
            return ThirdWithParams("Hello");
          }));
          if (rv != null) {
            fromThird = rv;
          } else {
            fromThird = "";
          }
          setState(() {});
        },
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      )
    ];

    widgets.add(Text(fromThird));

    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Column(
          children: widgets,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
