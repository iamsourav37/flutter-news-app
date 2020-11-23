import 'package:flutter/material.dart';

AppBar getAppBar() {
  return AppBar(
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
        )
      ],
    ),
    elevation: 0.0,
  );
}
