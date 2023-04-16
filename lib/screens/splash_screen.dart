import 'dart:async';

import 'package:flutter/material.dart';
import 'package:netflix_clone/screens/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => OnboardingScreen(),
          ));
    });
  }

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
