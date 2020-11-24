import 'dart:developer';
import 'package:flutter/material.dart';
import '../views/category.dart';

class NewsCategoryTile extends StatelessWidget {
  final String imageUrl, categoryName;
  NewsCategoryTile({@required this.categoryName, @required this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (coontext) => CategoryNewsView(
              categoryName: categoryName.toLowerCase(),
            ),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(right: 12.0),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
                width: 150.0,
                height: 90.0,
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: 90.0,
              width: 150.0,
              decoration: BoxDecoration(
                color: Colors.black45.withOpacity(0.3),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                categoryName,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
