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
      title: const Text(
        'Hello User',
        style: TextStyle(
            color: Colors.black,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
            letterSpacing: 4,
            wordSpacing: 12,
            shadows: [
              Shadow(
                color: Colors.pink,
                blurRadius: 4.0,
                offset: Offset(14, 4),
              )
            ]),
      ),
      backgroundColor: Colors.white,
      titleSpacing: 24,
      actions: [
        Container(
            padding: const EdgeInsets.only(right: 32.5),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.settings,
              ),
              iconSize: 29.5,
            ))
      ],
    ));
  }
}
