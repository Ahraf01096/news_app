import 'package:flutter/material.dart';
import 'package:news/models/category_model.dart';
import 'package:news/widgets/category_card.dart';
class CategoryList extends StatelessWidget {
   CategoryList({super.key});
  final List<CategoryModel> categories =  [
    CategoryModel(
      image: 'assets/general.jpg',
      categoryName: 'general',
    ),
    CategoryModel(
      image: 'assets/sports.jpg',
      categoryName: 'sports',
    ),
    CategoryModel(
      image: 'assets/health.avif',
      categoryName: 'health',
    ),
    CategoryModel(
      image: 'assets/business.jpg',
      categoryName: 'business',
    ),
    CategoryModel(
      image: 'assets/entertaiment.avif',
      categoryName: 'entertainment',
    ),
    CategoryModel(
      image: 'assets/science.avif',
      categoryName: 'science',
    ),
    CategoryModel(
      image: 'assets/technology.jpeg',
      categoryName: 'technology',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        itemCount: categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context , index){
            return CategoryCard(
              category: categories[index],
            );
          }),
    );
  }
}
