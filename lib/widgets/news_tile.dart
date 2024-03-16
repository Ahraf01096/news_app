import 'package:flutter/material.dart';
import 'package:news/models/article_model.dart';
import 'package:url_launcher/url_launcher.dart';
class NewsTile extends StatelessWidget {

   const NewsTile({super.key, required this.articleModel});
  final ArticleModel articleModel;


   Future<void> _launchUrl() async {
     if (!await launchUrl(Uri.parse(articleModel.url))) {
       throw Exception('Could not launch $Uri.parse(articleModel.url');
     }
   }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: (){
            _launchUrl();
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: articleModel.image != null
                ? Image.network(
                    articleModel.image!,
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  )
                : Image.asset('assets/newscloud.jpg'),
          ),
        ),
        Text(
          articleModel.title,
          textAlign: TextAlign.right,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          articleModel.subtitle ?? '',
          textAlign: TextAlign.right,
          maxLines: 2,
          style: const TextStyle(color: Colors.black38),
        )
      ],
    );
  }
}
