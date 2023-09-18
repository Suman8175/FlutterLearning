import 'package:flutter/material.dart';

class CurrencyConvertor extends StatelessWidget {
  const CurrencyConvertor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 239),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 100),
                  child: const Text(
                    'Your Currency',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(30, 0, 30, 70),
                  child: const TextField(
                    style: TextStyle(
                        color: Colors.black, fontStyle: FontStyle.italic),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.vertical(
                              bottom: Radius.circular(29),
                              top: Radius.circular(29)),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'Enter the currency',
                        hintStyle: TextStyle(color: Colors.black),
                        focusedBorder: InputBorder.none,
                        prefixIcon: Icon(Icons.monetization_on_outlined)),
                    keyboardType: TextInputType.numberWithOptions(
                      decimal: true,
                    ),
                  ),
                ),
                ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.redAccent),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Convert',
                    style: TextStyle(color: Colors.amber),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
