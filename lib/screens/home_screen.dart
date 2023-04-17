import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:netflix_clone/model/film_model.dart';
import '../controller/jsonfile_reader.dart';
import '../widgets/bottom_navigationbar.dart';
import '../widgets/watching_card.dart';

class UserHomeScreen extends StatefulWidget {
  @override
  State<UserHomeScreen> createState() => _UserHomeScreenState();
}

class _UserHomeScreenState extends State<UserHomeScreen> {
  JsonFileHelper jsonReader = JsonFileHelper();

  @override
  void initState() {
    jsonReader.getFilmDetail().then((value) => reload());
    super.initState();
  }

  reload() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyBottomNavigationBar(),
      backgroundColor: const Color(0xff010101),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(top: 50),
                height: 430,
                foregroundDecoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                      Color.fromARGB(255, 0, 0, 0),
                      Color(0x00000000),
                      Color(0x00000000),
                      Color.fromARGB(230, 0, 0, 0),
                    ])),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: CachedNetworkImageProvider(
                            filmList[1].imagesFilm[0]))),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 70,
                      width: 25,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("./images/n.png"))),
                    ),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.cast_rounded,
                              color: Colors.white,
                              size: 22,
                            )),
                        const CircleAvatar(
                          radius: 16,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 14,
                            backgroundImage: AssetImage("./images/user.jpg"),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 70,
                child: SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
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
                top: 420,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: const [
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
                          children: const [
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
                        children: const [
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
              ),
              Positioned(
                top: 380,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text("Exciting",
                          style: TextStyle(
                              fontFamily: 'sans',
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      Text("Reality TV",
                          style: TextStyle(
                              fontFamily: 'sans',
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      Text("Competition",
                          style: TextStyle(
                              fontFamily: 'sans',
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ],
                  ),
                ),
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 18.0),
            child: Text("Continue watching for Ellie",
                style: TextStyle(
                    fontFamily: 'sans',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: createWatchingCards(),
            ),
          )
        ],
      )),
    );
  }

  List<Widget> createWatchingCards() {
    List<Widget> watchingCards = [];
    int i = 0;
    while (i <= 10) {
      watchingCards.add(WatchingCard(filmList[i].imagesFilm[1]));
      i++;
    }
    return watchingCards;
  }
}
