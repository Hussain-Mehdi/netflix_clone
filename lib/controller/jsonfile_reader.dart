import 'dart:convert';
import 'package:flutter/services.dart';
import '../model/film_model.dart';

class JsonFileHelper {
  Future<bool> getFilmDetail() async {
    final jsonData = await rootBundle.loadString("./jsonfile/data.json");
    var jsonfile = json.decode(jsonData) as List;
    filmList = jsonfile.map((e) => Films.fromJson(e)).toList();
    return true;
  }
}
