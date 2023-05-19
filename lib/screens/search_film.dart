import 'package:flutter/material.dart';
import 'package:netflix_clone/controller/jsonfile_reader.dart';
import '../model/film_model.dart';
import '../widgets/searchfilm_tile.dart';

class UserListView extends StatefulWidget {
  const UserListView({super.key});

  @override
  State<UserListView> createState() => _UserListViewState();
}

class _UserListViewState extends State<UserListView> {
  JsonFileHelper jsonReader = JsonFileHelper();
  double width = 65;
  double height = 95;
  double left = 7;
  double previous = 8;
  int selectedIndex = 0;
  TextEditingController username = TextEditingController();
  List<String> searchFilm = [];

  @override
  void initState() {
    jsonReader.getFilmDetail().then((value) => reload());

    super.initState();
  }

  reload() {
    setState(() {});
  }

  searchUser(String username) {
    print("===========inside search method");
    setState(() {
      searchFilm = filmList
          .where((element) =>
              element.titleFilm.toLowerCase().contains(username.toLowerCase()))
          .cast<String>()
          .toList();
      print("============Data found=============$username");
    });
  }

  loadData() {
    searchFilm = List.from(filmList);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff191919),
      resizeToAvoidBottomInset: false,
      extendBody: true,
      body: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 40,
              child: TextField(
                autofocus: false,
                style:
                    const TextStyle(color: Color.fromARGB(221, 255, 255, 255)),
                controller: username,
                decoration: InputDecoration(
                    hintStyle: const TextStyle(
                      color: Color(0xffe6e6e6),
                    ),
                    contentPadding: EdgeInsets.zero,
                    filled: true,
                    hintText: "Search",
                    prefixIcon: const Icon(
                      Icons.search_rounded,
                      size: 18,
                      color: Color(0xffe6e6e6),
                    ),
                    suffixIcon: IconButton(
                        color: Colors.transparent,
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onPressed: () {
                          username.clear();
                        },
                        icon: const Icon(
                          Icons.cancel_rounded,
                          size: 18,
                          color: Color(0xffe6e6e6),
                        )),
                    fillColor: const Color(0xff737373),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(5),
                    )),
                onChanged: (value) => searchUser(value.toString()),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 18, top: 5, bottom: 5),
            child: Text(
              "Top Searches",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  fontFamily: "sans"),
            ),
          ),

          Expanded(
              child: filmList.isEmpty
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : ListView.builder(
                      padding: EdgeInsets.zero,
                      itemCount: filmList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Scaffold(
                                          appBar: AppBar(
                                              // title: Text(searchFilm[index].titleFilm),
                                              ),
                                          body: Hero(
                                            tag: "Film",
                                            child: Center(
                                              child: Image(
                                                image: NetworkImage(
                                                    searchFilm[index]
                                                    //   .imagesFilm[1])),
                                                    ),
                                              ),
                                            ),
                                          ))));
                            },
                            child: SearchFilmTile(
                                filmList[index].titleFilm,
                                filmList[index].imagesFilm[1],
                                filmList[index].ratedFilm));
                      },
                    ))
          // Expanded(
          //   child: Container(
          //     child: usersSearchedList.length == 0
          //         ? Center(
          //             child: Text("No record found"),
          //           )
          //         : ListView.builder(
          //             itemCount: usersSearchedList.length,
          //             itemBuilder: (BuildContext context, int index) {
          //               return MyCard();
          // Card(
          //   child: ListTile(
          //     leading: Hero(
          //         tag: "user-profile",
          //         child: GestureDetector(
          //             onTap: () {
          //               Navigator.of(context).push(MaterialPageRoute(
          //                   builder: (BuildContext context) =>
          //                       Scaffold(
          //                         appBar: AppBar(
          //                           title: const Text("User detail"),
          //                         ),
          //                         body: Hero(
          //                             tag: "user-profile",
          //                             child: Center(
          //                               child: SizedBox(
          //                                 height: 300,
          //                                 width: 300,
          //                                 child: Image(
          //                                     image: AssetImage(
          //                                         "./images/pic1.jpg")),
          //                               ),
          //                             )),
          //                       )));
          //             },
          //             child: Image(
          //                 image: AssetImage(
          //                     usersSearchedList[index].Image)))),
          //     title: Text(usersSearchedList[index].userName),
          //     subtitle: Text(usersSearchedList[index].userDepartment),
          //   ),
          // );
          //  },
          //  ),
          //  ),
          //  ),
        ]),
      ),
    );
  }
}
