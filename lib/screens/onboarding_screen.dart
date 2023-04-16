import 'package:flutter/material.dart';
import 'package:netflix_clone/screens/home_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xff010101),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("./images/logo.png"))),
                  ),
                  Row(
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Privacy",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'sans',
                                fontWeight: FontWeight.w200),
                          )),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Sign In",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'sans',
                                fontWeight: FontWeight.w200),
                          ))
                    ],
                  )
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 38.0, right: 38, bottom: 20),
                    child: const Text(
                      "Unlimited movies, TV shows, and more",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xffE6E6E6),
                          fontSize: 27,
                          fontFamily: 'sans',
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                  const Text(
                    "Watch anywhere. cancel anytime.\nTap the link below to sign up.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xffE6E6E6),
                        fontSize: 16,
                        fontFamily: 'sans',
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => UserHomeScreen(),
                        ));
                  },
                  child: Ink(
                    height: 44,
                    decoration: BoxDecoration(
                        color: Color(0xffD22F26),
                        borderRadius: BorderRadius.circular(2)),
                    child: Center(
                      child: Text(
                        "Get Started",
                        style: TextStyle(
                            color: Color(0xffE6E6E6),
                            fontSize: 14,
                            fontFamily: 'sans',
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
