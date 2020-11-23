import 'package:flutter/material.dart';
import 'package:flutter_news_app/Model/categoryModel.dart';
import 'NewsCategoryTile.dart';

class HorizontalListForCategory extends StatelessWidget {
  const HorizontalListForCategory({
    @required this.allCategories,
  });

  final List<CategoryModel> allCategories;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      height: 90.0,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: allCategories.length,
        itemBuilder: (context, index) {
          return NewsCategoryTile(
            categoryName: allCategories[index].categoryName,
            imageUrl: allCategories[index].imageUrl,
          );
        },
      ),
    );
  }
}
