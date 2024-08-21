import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        textTheme: GoogleFonts.aboretoTextTheme(),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Bookeeda"),
          titleTextStyle:
              TextStyle(color: Colors.pinkAccent, fontWeight: FontWeight.bold),
        ),
        body: Center(),
        drawer: Drawer(
          child: ListView(
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 36, 34, 34),
                ),
                child: Text("Drawer Header"),
              ),
              ListTile(
                title: const Text("Purchases"),
                onTap: () {},
              ),
              ListTile(
                title: const Text("Following"),
                onTap: () {},
              ),
              ListTile(
                title: const Text(""),
                onTap: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
