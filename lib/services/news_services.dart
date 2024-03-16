import 'package:dio/dio.dart';
import 'package:news/models/article_model.dart';

class NewsService {
  final Dio dio;
 // final String country;
  NewsService(this.dio, );

 Future<List<ArticleModel>> getNews({required String category, }) async {
       try {
         Response response = await dio.get(
             'https://gnews.io/api/v4/top-headlines?category=$category&lang=ar&country=eg&apikey=be653c2a34018e30639da9386fe09d5d');
          //'https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=084663b908d641dc8db594d66d77ec27');
             Map<String, dynamic> jsonData = response.data;
             List<dynamic> articles = jsonData['articles'];
             List<ArticleModel> articlesList = [];

             for (var article in articles) {
              ArticleModel articleModel = ArticleModel.fromJson(article);
              articlesList.add(articleModel);
             }
             return articlesList;
       }  catch (e) {
         return [];
       }
  }
}
