import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Landing Page'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/product');
            },
            child: Text('Go to Product Page'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/cart');
            },
            child: Text('Go to Cart Page'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/purchase');
            },
            child: Text('Go to Purchase Page'),
          ),
        ],
      ),
    );
  }
}
