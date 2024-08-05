import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/3.png'),
        // Title(color: Colors.black26, child: Text("Hello!"),),
        const SizedBox(height: 40),
        const Text(
          "Bookeeda!",
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.w400),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: const Text(
            "Welcome to our app called Bookeeda!, where you can purcahse and read all the formats of book",
            style: TextStyle(
                color: Color.fromARGB(255, 51, 48, 48),
                fontSize: 14,
                fontWeight: FontWeight.normal),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
