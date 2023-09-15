import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'NotesHandler',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 255, 251, 251)),
        useMaterial3: true,
      ),
      home: const HomePage(),
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // elevation: 0,
          title: const Text(
            'Welcome User',
            style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic),
          ),
          backgroundColor: Colors.deepPurple,
          toolbarHeight: 55,
          centerTitle: true,
          actions: [
            Container(
              height: 64.0,
              width: 64.0,
              padding: const EdgeInsets.only(right: 24.9, bottom: 15),
              child: IconButton(
                icon: const Icon(Icons.account_circle),
                iconSize: 38,
                color: Colors.white,
                tooltip: 'Open login button',
                onPressed: () {},
              ),
            ),
          ],
        ),
        body: TextButton(
          onPressed: () {},
          child: const Text('Login'),
        ));
  }
}
