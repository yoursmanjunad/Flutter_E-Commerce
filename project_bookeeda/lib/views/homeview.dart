import 'package:flutter/material.dart';
import 'package:project_bookeeda/views/calc_view.dart';

class Homeview extends StatelessWidget {
  const Homeview({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.pink,
      body: SafeArea(
        child: CalcView(),
      ),
    );
  }
}
