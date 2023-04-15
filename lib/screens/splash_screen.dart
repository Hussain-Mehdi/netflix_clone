import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xff010101),
      child: SafeArea(
          child: Center(
        child: Container(
          height: 100,
          decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage("./images/logo.png"))),
        ),
      )),
    );
  }
}
