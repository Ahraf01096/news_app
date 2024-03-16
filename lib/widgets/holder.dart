// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:news/models/article_model.dart';
// import 'package:news/services/news_services.dart';
// import 'package:news/widgets/news_tile.dart';
//
// class NewsList extends StatefulWidget {
//   const NewsList({
//     super.key, required List<ArticleModel> articles,
//   });
//
//   @override
//   State<NewsList> createState() => _NewsListState();
// }
//
// class _NewsListState extends State<NewsList> {
//   List<ArticleModel> articles = [];
//
//   bool isLoading = true;
//   @override
//   void initState() {
//     super.initState();
//     getGeneralNews();
//   }
//
//   Future<void> getGeneralNews() async {
//     articles = await NewsService(Dio()).getNews();
//     isLoading = false;
//     setState(() {});
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return isLoading
//         ? const SliverToBoxAdapter(
//       child: Center(
//         child: Padding(
//           padding: EdgeInsets.only(top: 300),
//           child: CircularProgressIndicator(
//             color: Colors.orange,
//           ),
//         ),
//       ),
//     )
//         : SliverList(
//         delegate: SliverChildBuilderDelegate(childCount: articles.length,
//                 (context, index) {
//               return Padding(
//                 padding: const EdgeInsets.only(bottom: 30),
//                 child: NewsTile(
//                   articleModel: articles[index],
//                 ),
//               );
//             }));
//   }
// }
