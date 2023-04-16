import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class WatchingCard extends StatelessWidget {
  String imageLink;
  WatchingCard(this.imageLink);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Container(
        height: 195,
        width: 100,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: Stack(
          children: [
            Container(
              height: 195,
              width: 160,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: CachedNetworkImageProvider(imageLink),
                      fit: BoxFit.cover)),
            ),
            Positioned(
              left: 5,
              top: 5,
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
