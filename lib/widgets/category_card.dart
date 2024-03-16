import 'package:flutter/material.dart';
import 'package:news/models/category_model.dart';
import 'package:news/views/category.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category });
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context){
          return  CategoryView(category: category.categoryName ,appbar: category,);
        }));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Container(
          width: 160,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            image: DecorationImage(
              image: AssetImage(
                  category.image
              ),
              fit: BoxFit.fill,
            ),
            color: Colors.white24,
          ),
          child: Center(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.black12
                ),
                child: Text(
                  category.categoryName,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
