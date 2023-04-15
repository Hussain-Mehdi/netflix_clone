import 'dart:ui';

import 'package:flutter/material.dart';

class UserHomeScreen extends StatelessWidget {
  const UserHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xff010101),
      child: SafeArea(
          child: Column(
        children: [
          Container(
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(top: 50),
                  height: 500,
                  foregroundDecoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                        Color.fromARGB(255, 0, 0, 0),
                        const Color(0x00000000),
                        const Color(0x00000000),
                        Color.fromARGB(230, 0, 0, 0),
                      ])),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("./images/main.jpg"))),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 70,
                        width: 30,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("./images/n.png"))),
                      ),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.cast_rounded,
                                color: Colors.white,
                                size: 22,
                              )),
                          CircleAvatar(
                            radius: 16,
                            backgroundColor: Colors.blue,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 70,
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "TV Shows",
                          style: TextStyle(
                              fontFamily: 'sans',
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                        Text(
                          "Movies",
                          style: TextStyle(
                              fontFamily: 'sans',
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                        Text(
                          "Categories",
                          style: TextStyle(
                              fontFamily: 'sans',
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 470,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Icon(
                              Icons.add_rounded,
                              color: Colors.white,
                            ),
                            Text("My List",
                                style: TextStyle(
                                    fontFamily: 'sans',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white))
                          ],
                        ),
                        Container(
                          height: 30,
                          width: 87,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.play_arrow,
                              ),
                              Text("Play",
                                  style: TextStyle(
                                    fontFamily: 'sans',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ))
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.info_rounded,
                              color: Colors.white,
                            ),
                            Text("Info",
                                style: TextStyle(
                                    fontFamily: 'sans',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white))
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
