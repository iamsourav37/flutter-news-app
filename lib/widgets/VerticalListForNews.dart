import 'package:flutter/material.dart';
import 'package:flutter_news_app/Model/articleModel.dart';

import 'newsTile.dart';

class VerticalListForNews extends StatelessWidget {
  final List<Article> allNews;

  VerticalListForNews({@required this.allNews});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: Container(
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
      ),
    );
  }
}
