import 'package:flutter/material.dart';
import 'package:news/models/category_model.dart';
import 'package:news/views/home_page.dart';

import '../widgets/news_list_builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category, required this.appbar});
  final String category;
  final CategoryModel appbar;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop(MaterialPageRoute(builder: (context) {
              return const HomePage();
            }));
          },
          icon: const Icon(Icons.arrow_back_ios_outlined, color: Colors.black),
        ),
        backgroundColor: Colors.white,
        title: Text(appbar.categoryName,
            style: const TextStyle(color: Color(0xffFAB327))),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          slivers: [
            NewsListBuilder(
              category: category,
            ),
          ],
        ),
      ),
    );
  }
}
