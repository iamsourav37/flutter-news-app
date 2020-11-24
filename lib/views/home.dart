import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_news_app/Model/articleModel.dart';
import 'package:flutter_news_app/helper/data.dart' as Data;
import 'package:flutter_news_app/Model/categoryModel.dart';
import 'package:flutter_news_app/helper/news.dart';
import 'package:flutter_news_app/widgets/AppBar.dart';
import 'package:flutter_news_app/widgets/HorizontalListForCategory.dart';
import 'package:flutter_news_app/widgets/VerticalListForNews.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CategoryModel> allCategories;
  List<Article> allNews;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    allCategories = Data.getCategories();
    this.getNews();
  }

  getNews() async {
    News newsClass = News();
    await newsClass.getNews();
    allNews = newsClass.allNews;
    setState(() {
      isLoading = false;
    });
    log("getNews method is complete");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      body: Container(
        child: Column(
          children: [
            HorizontalListForCategory(allCategories: allCategories),
            isLoading
                ? Container(
                    height: MediaQuery.of(context).size.height / 1.4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircularProgressIndicator(
                          backgroundColor: Colors.redAccent,
                          strokeWidth: 3.4,
                        ),
                      ],
                    ),
                  )
                : VerticalListForNews(allNews: this.allNews),
          ],
        ),
      ),
    );
  }
}
