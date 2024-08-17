import 'package:flutter/material.dart';
import 'package:project_bookeeda/features/CartPage/cart_page.dart';
import 'package:project_bookeeda/features/ProductPage/product_page.dart';
import 'package:project_bookeeda/Onboarding/screen1.dart';
import 'package:project_bookeeda/Onboarding/screen2.dart';
import 'package:project_bookeeda/features/LandingPage/landing_page.dart';
import 'package:project_bookeeda/features/PurchasePage/purchase_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'; // Import the LandingPage

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LandingPage(),
        '/product': (context) => ProductPage(),
        '/cart': (context) => CartPage(),
        '/purchase': (context) => PurchasePage(),
      },
    );
  }
}

class MyMainPage extends StatefulWidget {
  const MyMainPage({super.key});

  @override
  State<MyMainPage> createState() => _MyMainPageState();
}

class _MyMainPageState extends State<MyMainPage> {
  PageController pageController = PageController();
  String buttonText = "Next";
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            onPageChanged: (index) {
              currentPageIndex = index;
              if (index == 1) {
                buttonText = "Finish";
              } else {
                buttonText = "Next";
              }
              setState(() {});
            },
            children: [
              Screen1(),
              Screen2(),
            ],
          ),
          Container(
            alignment: const Alignment(0, 0.9),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(),
                GestureDetector(
                  onTap: () {
                    if (currentPageIndex == 1) {
                      // Navigate to LandingPage
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => LandingPage()),
                      );
                    } else {
                      pageController.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeIn);
                    }
                  },
                  child: Text("$buttonText"),
                ),
                SmoothPageIndicator(controller: pageController, count: 2),
                currentPageIndex == 1
                    ? SizedBox(width: 80)
                    : GestureDetector(
                        onTap: () {
                          pageController.nextPage(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeIn);
                        },
                        child: Text("Next"),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
