import 'package:flutter/material.dart';

class ThirdWithParams extends StatefulWidget {
  final String param;
  const ThirdWithParams(this.param, {super.key});

  @override
  State<ThirdWithParams> createState() => ThirdWithParamsState();
}

class ThirdWithParamsState extends State<ThirdWithParams> {
  @override
  Widget build(BuildContext context) {
    TextButton buttonWithParam = TextButton(
      style: TextButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
      ),
      child: Text("Go back with param"),
      onPressed: () {
        Navigator.pop(context, "Hello from third!");
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Third"),
      ),
      body: Center(
          child: Column(
        children: [
          Text("ThirdWithParams : ${widget.param}"),
          buttonWithParam,
        ],
      )),
    );
  }
}
