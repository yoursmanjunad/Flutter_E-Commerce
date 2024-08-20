import 'package:flutter/material.dart';

class Homeview extends StatelessWidget {
  const Homeview({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Homeview",
      home: Material(
        child: Container(
          color: Colors.indigo,
          child: const Center(
            child: Text(
              "Hello Readers!",
              style: TextStyle(
                fontSize: 46,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
