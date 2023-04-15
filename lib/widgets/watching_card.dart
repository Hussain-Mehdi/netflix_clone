import 'package:flutter/material.dart';

class WatchingCard extends StatelessWidget {
  const WatchingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 195,
        width: 160,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: Stack(
          children: [
            Container(
              height: 195,
              width: 160,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                      image: AssetImage("./images/main.jpg"),
                      fit: BoxFit.cover)),
            ),
            Positioned(
              left: 10,
              top: 10,
              child: Container(
                height: 25,
                width: 15,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("./images/n.png"),
                        fit: BoxFit.cover)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
