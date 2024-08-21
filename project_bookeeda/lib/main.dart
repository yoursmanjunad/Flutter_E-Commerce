import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';

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
          titleTextStyle: TextStyle(color: Colors.pinkAccent),
        ),
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
        body: Column(
          children: [
            // Carousel directly below the AppBar
            CarouselSlider(
              options: CarouselOptions(
                height: 600.0, // Set the desired height for the carousel
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
              items: [
                Container(
                  margin: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: AssetImage(
                          "assets/book_images/breaktherules.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: AssetImage(
                          "assets/book_images/thehookupequation.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image:
                          AssetImage("assets/book_images/bestfakefiance.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            // Other widgets below the carousel
            Expanded(
              child: Center(
                child: Text("Content below the carousel"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
