import 'package:flutter/material.dart';
import 'package:project_bookeeda/Onboarding/screen1.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'Onboarding/screen2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PageController pageController = PageController();
  String buttonText = "Skip";
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
                      pageController.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeIn);
                    },
                    child: Text("$buttonText"),
                  ),
                  SmoothPageIndicator(controller: pageController, count: 2),
                  currentPageIndex == 1
                      ? SizedBox(
                          width: 80,
                        )
                      : GestureDetector(
                          onTap: () {},
                          child: Text("Next"),
                        ),
                ],
              ),
            )
          ],
        ));
  }
}
