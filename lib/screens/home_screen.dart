import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.height * 0.378,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xffF8EDD8), Color(0xffFFF6E5)])),
        )
      ],
    ));
  }
}
