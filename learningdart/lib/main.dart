import 'package:flutter/material.dart';

void main() {
  const MyApp();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
        ),
        body: const Center(
            child: Text(
          'Hello World!!!!',
          style: TextStyle(color: Colors.pink),
        )),
      ),
    );
  }
}
