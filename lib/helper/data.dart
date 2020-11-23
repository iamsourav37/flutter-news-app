import 'package:flutter_news_app/Model/categoryModel.dart';

List<CategoryModel> getCategories() {
  List<CategoryModel> categoryModel = List<CategoryModel>();

  categoryModel.addAll([
    CategoryModel(
        imageUrl:
            "https://images.unsplash.com/photo-1507679799987-c73779587ccf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1051&q=80",
        categoryName: "Business"),
    CategoryModel(
        imageUrl:
            "https://images.unsplash.com/photo-1499364615650-ec38552f4f34?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8NXx8ZW50ZXJ0YWlubWVudHxlbnwwfHwwfA%3D%3D&auto=format&fit=crop&w=600&q=60",
        categoryName: "Entertainment"),
    CategoryModel(
        imageUrl:
            "https://images.unsplash.com/photo-1495020689067-958852a7765e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
        categoryName: "General"),
    CategoryModel(
        imageUrl:
            "https://images.unsplash.com/photo-1532938911079-1b06ac7ceec7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1489&q=80",
        categoryName: "Health"),
    CategoryModel(
        imageUrl:
            "https://images.unsplash.com/photo-1446776811953-b23d57bd21aa?ixlib=rb-1.2.1&auto=format&fit=crop&w=1052&q=80",
        categoryName: "Science"),
    CategoryModel(imageUrl: "https://bit.ly/3702xD1", categoryName: "Sports"),
    CategoryModel(
        imageUrl:
            "https://images.unsplash.com/photo-1519389950473-47ba0277781c?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8dGVjaG5vbG9neXxlbnwwfHwwfA%3D%3D&auto=format&fit=crop&w=600&q=60",
        categoryName: "Technology"),
  ]);

  return categoryModel;
}
