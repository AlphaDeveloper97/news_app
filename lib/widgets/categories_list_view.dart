import 'package:flutter/material.dart';
import 'package:news/models/category_model.dart';
import 'package:news/widgets/category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});

  final List<CategoryModel> categories = const [
    CategoryModel(image: "assets/General.jpeg", text: "General"),
    CategoryModel(image: "assets/sports.jpeg", text: "Sports"),
    CategoryModel(image: "assets/health.jpeg", text: "Health"),
    CategoryModel(image: "assets/technology.jpeg", text: "Technology"),
    CategoryModel(image: "assets/sciences.jpeg", text: "Science"),
    CategoryModel(image: "assets/entertaiment.jpeg", text: "Entertainment"),
    CategoryModel(image: "assets/business.jpeg", text: "Business"),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryCard(category: categories[index]);
        },
      ),
    );
  }
}
