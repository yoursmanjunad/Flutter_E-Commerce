import 'package:flutter/material.dart';

class CalcView extends StatelessWidget {
  const CalcView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
              ),
            ),
            labelText: "0",
            hintText: "Enter a number",
          ),
        )
      ],
    );
  }
}
