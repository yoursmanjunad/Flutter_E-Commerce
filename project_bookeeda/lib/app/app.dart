import 'package:flutter/material.dart';
import 'package:project_bookeeda/views/homeview.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Bookeeda",
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const Homeview(),
    );
  }
}
