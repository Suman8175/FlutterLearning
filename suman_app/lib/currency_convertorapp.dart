import 'package:flutter/material.dart';

class CurrencyConvertorFull extends StatefulWidget {
  const CurrencyConvertorFull({super.key});
  @override
  State<CurrencyConvertorFull> createState() => _CurrencyConvertorFullState();
}

class _CurrencyConvertorFullState extends State<CurrencyConvertorFull> {
  TextEditingController textEditingController = TextEditingController();
  double result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          leading: const Padding(
            padding: EdgeInsets.only(left: 32.0),
            child: Icon(
              Icons.monetization_on,
              color: Colors.green,
            ),
          ),
          // iconTheme: const IconThemeData(color: Colors.black),
          //Or directly use color and size property in Icon
          flexibleSpace: const Padding(
            padding: EdgeInsets.only(left: 132, top: 42),
            child: Text(
              'Money Convertor',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          actions: const [Icon(Icons.more_vert)],
        ),
        // drawer: const Drawer(),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 139),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 70),
                  child: const Text(
                    'Your Currency',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 1),
                  child: Text(
                    'NPR ${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}', //Ternary operator if result !=0..else
                    style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(30, 0, 30, 30),
                  child: TextField(
                    controller: textEditingController,
                    style: const TextStyle(
                        color: Colors.black, fontStyle: FontStyle.italic),
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.vertical(
                              bottom: Radius.circular(29),
                              top: Radius.circular(29)),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'Enter the currencyy',
                        hintStyle: TextStyle(color: Colors.black),
                        focusedBorder: InputBorder.none,
                        prefixIcon: Icon(Icons.monetization_on_outlined)),
                    keyboardType: const TextInputType.numberWithOptions(
                      decimal: true,
                    ),
                  ),
                ),
                ElevatedButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.brown,
                  ),
                  onPressed: () {
                    setState(() {
                      result =
                          double.parse(textEditingController.text) * 121.21;
                    });
                  },
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
