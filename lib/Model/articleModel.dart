import 'package:flutter/foundation.dart';

class Article {
  String sourceName;
  String authorName;
  String title;
  String description;
  String newsUrl;
  String imageUrl;
  Article(
      {@required this.authorName,
      @required this.description,
      @required this.imageUrl,
      @required this.newsUrl,
      @required this.sourceName,
      @required this.title});
}
