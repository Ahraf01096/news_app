import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news/models/article_model.dart';
import '../services/news_services.dart';
import 'error_message.dart';
import 'news_list.dart';

class NewsListBuilder extends StatefulWidget {
  const NewsListBuilder({
    super.key, required this.category
  });
  final String category;
  @override
  State<NewsListBuilder> createState() => _NewsListBuilderState();
}

class _NewsListBuilderState extends State<NewsListBuilder> {
  var future;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future = NewsService(Dio(),/*country: dropdownValue*/).getNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsList(
              articles: snapshot.data!,
            );
          } else if (snapshot.hasError) {
            return const ErrorMessage();
          } else {
            return const SliverToBoxAdapter(
              child: Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 300),
                  child: CircularProgressIndicator(
                    color: Color(0xffFAB327),
                  ),
                ),
              ),
            );
          }
        });

    // return isLoading
    //     ? const SliverToBoxAdapter(
    //   child: Center(
    //     child: Padding(
    //       padding: EdgeInsets.only(top: 300),
    //       child: CircularProgressIndicator(
    //         color: Colors.orange,
    //       ),
    //     ),
    //   ),
    // )
    //     :articles.isNotEmpty? NewsList(articles: articles)
    //     : SliverToBoxAdapter(
    //   child: Center(child: Padding(
    //     padding: EdgeInsets.only(top: 250),
    //     child: Container(
    //       height: 60,
    //       width: 320,
    //       decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.black12),
    //       child: Center(
    //         child: Text('oops there was an error, try later..',style: TextStyle(
    //           color: Colors.red,
    //           fontSize: 18,
    //         )),
    //       ),
    //     ),
    //   )),
    // )
    // ;
  }
}
