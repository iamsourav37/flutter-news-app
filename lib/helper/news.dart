import 'dart:convert';
import 'dart:developer';

import 'package:flutter_news_app/Model/articleModel.dart';
import 'dart:async';
import 'package:http/http.dart' as http;

class News {
  List<Article> allNews = List<Article>();

  Future<void> getNews() async {
    String apiUrl =
        "http://newsapi.org/v2/top-headlines?country=in&apiKey=d7c9fa2f58894513b2428c56b0a9d8a3";

    var response = await http.get(apiUrl);
    var data = jsonDecode(response.body);

    if (data['status'] == 'ok') {
      data['articles'].forEach(
        (element) {
          if (element['urlToImage'] != null && element['description'] != null) {
            allNews.add(
              Article(
                  authorName: element['author'],
                  description: element['description'],
                  imageUrl: element['urlToImage'],
                  newsUrl: element['url'],
                  sourceName: element['source']['name'],
                  title: element['title']),
            );
          }
        },
      );
    } else {
      log("data is not comming from the internet");
    }
  }
}

class CategoryNews {
  List<Article> allNews = List<Article>();

  Future<void> getNews(String categoryName) async {
    String apiUrl =
        "http://newsapi.org/v2/top-headlines?country=in&category=$categoryName&apiKey=d7c9fa2f58894513b2428c56b0a9d8a3";

    var response = await http.get(apiUrl);
    var data = jsonDecode(response.body);

    if (data['status'] == 'ok') {
      data['articles'].forEach(
        (element) {
          if (element['urlToImage'] != null && element['description'] != null) {
            allNews.add(
              Article(
                  authorName: element['author'],
                  description: element['description'],
                  imageUrl: element['urlToImage'],
                  newsUrl: element['url'],
                  sourceName: element['source']['name'],
                  title: element['title']),
            );
          }
        },
      );
    } else {
      log("data is not comming from the internet");
    }
  }
}
