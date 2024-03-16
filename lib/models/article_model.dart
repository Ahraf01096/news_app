class ArticleModel {
 final String? image;
 final String title;
 final String? subtitle;
 final String url;
 final String? country;
  ArticleModel(
      {required this.image, required this.title, required this.subtitle, required this.url, required this.country,});
 factory ArticleModel.fromJson(json){
    return ArticleModel(
      image: json['image'],
      title: json['title'],
      subtitle: json['description'],
      url: json['url'],
      country: '',

    );
  }
}
