import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_news_app/helper/data.dart' as Data;
import 'package:flutter_news_app/Model/categoryModel.dart';
import 'package:flutter_news_app/widgets/AppBar.dart';
import 'package:flutter_news_app/widgets/HorizontalListForCategory.dart';
import 'package:flutter_news_app/widgets/VerticalListForNews.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CategoryModel> allCategories;

  @override
  void initState() {
    super.initState();
    allCategories = Data.getCategories();
    log("all categories are imported, $allCategories");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      body: Container(
        child: Column(
          children: [
            HorizontalListForCategory(allCategories: allCategories),
            // VerticalListForNews(),
          ],
        ),
      ),
    );
  }
}
