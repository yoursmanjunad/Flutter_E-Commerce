import 'package:flutter/material.dart';
import 'package:project_bookeeda/views/homeview.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Bookeeda",
      home: Homeview(),
    );
  }
}
