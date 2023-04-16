import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class SearchFilmTile extends StatelessWidget {
  String imagePath;
  String filmTitle;
  String ratedFilm;
  SearchFilmTile(this.filmTitle, this.imagePath, this.ratedFilm);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5.0, left: 8, right: 8),
      child: Container(
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.only(right: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 80,
                        width: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: DecorationImage(
                                image: CachedNetworkImageProvider(imagePath),
                                fit: BoxFit.cover)),
                      ),
                      Positioned(
                          right: 0,
                          child: ratedFilm == 'R'
                              ? Container(
                                  margin: EdgeInsets.zero,
                                  padding: EdgeInsets.zero,
                                  height: 28,
                                  width: 21,
                                  decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(5)),
                                      image: DecorationImage(
                                        image: AssetImage("./images/top.png"),
                                      )),
                                )
                              : Container()),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Text(filmTitle,
                        style: const TextStyle(
                          fontFamily: 'sans',
                          fontSize: 13,
                          color: Color.fromARGB(255, 211, 211, 211),
                          fontWeight: FontWeight.w600,
                        )),
                  ),
                ],
              ),
              Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(35),
                    border: Border.all(color: Colors.white, width: 3)),
                child: const Center(
                  child: Icon(
                    Icons.play_arrow_rounded,
                    color: Colors.white,
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
