import 'package:flutter/material.dart';

class Carousel extends StatelessWidget {
  const Carousel({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Bookeeda"),
        ),
        body: ListView(
          children: [
            CarouselSlider
          ],
        ),
      ),
    );
  }
}
