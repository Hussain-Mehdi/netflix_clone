import 'package:flutter/material.dart';

import '../screens/search_film.dart';

class MyBottomNavigationBar extends StatefulWidget {
  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  double width = 65;

  double height = 95;

  double left = 7;

  double previous = 8;

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
          color: const Color(0xff191919),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Stack(fit: StackFit.loose, children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 250),
            curve: Curves.easeInOutExpo,
            margin: EdgeInsets.only(left: left),
            width: 65,
            decoration: BoxDecoration(
                color: const Color.fromARGB(64, 56, 179, 236),
                borderRadius: BorderRadius.circular(15)),
          ),
          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                    onTap: () {
                      previous = 0;
                      positionTheBox(8);
                    },
                    child: const Icon(
                      Icons.home_rounded,
                      size: 25,
                      color: Colors.white,
                    )),
                GestureDetector(
                    onTap: () {
                      previous = 0;
                      positionTheBox(87);
                    },
                    child: const Icon(
                      Icons.bookmark_rounded,
                      size: 25,
                      color: Colors.white,
                    )),
                GestureDetector(
                    onTap: () {
                      previous = 85;
                      positionTheBox(167);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => UserListView(),
                          ));
                    },
                    child: const Icon(
                      Icons.search_rounded,
                      size: 25,
                      color: Colors.white,
                    )),
                GestureDetector(
                    onTap: () {
                      previous = 167;
                      positionTheBox(247);
                    },
                    child: const Icon(
                      Icons.more_vert_rounded,
                      size: 25,
                      color: Colors.white,
                    ))
              ],
            ),
          ),
        ]),
      ),
    );
  }

  positionTheBox(double leftMove) {
    setState(() {
      previous = leftMove;
      left == leftMove ? left = previous : left = leftMove;
    });
  }
}
