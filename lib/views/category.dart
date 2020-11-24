import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_news_app/Model/articleModel.dart';
import 'package:flutter_news_app/widgets/newsTile.dart';
import '../helper/news.dart';
import 'dart:async';

class CategoryNewsView extends StatefulWidget {
  final String categoryName;
  CategoryNewsView({@required this.categoryName});
  @override
  _CategoryNewsViewState createState() => _CategoryNewsViewState();
}

class _CategoryNewsViewState extends State<CategoryNewsView> {
  List<Article> allNews = List<Article>();
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    this.getNews();
  }

  getNews() async {
    CategoryNews newsClass = CategoryNews();
    await newsClass.getNews(widget.categoryName);
    allNews = newsClass.allNews;
    setState(() {
      isLoading = false;
    });
    log("category get news method is complete");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.lightBlueAccent,
              size: 30.0,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Flutter",
              style: TextStyle(
                fontSize: 25.0,
              ),
            ),
            Text(
              "News",
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 27.0,
              ),
            ),
          ],
        ),
        actions: [
          Opacity(
            opacity: 0.0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Icon(
                Icons.share,
                color: Colors.red,
              ),
            ),
          ),
        ],
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: ListView.builder(
          physics: ClampingScrollPhysics(),
          shrinkWrap: true,
          itemCount: allNews.length,
          itemBuilder: (context, index) {
            var data = allNews[index];
            return NewsTile(
              newsUrl: data.newsUrl,
              title: data.title,
              imageUrl: data.imageUrl,
              desc: data.description,
              source: data.sourceName,
            );
          },
        ),
      ),
    );
  }
}
