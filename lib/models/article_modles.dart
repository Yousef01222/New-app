class ArticleModles {
  final String? image;
  final String title;
  final String? description;
  final String url;
 

  ArticleModles( 
      {
     required this.url,
      required this.image,
      required this.title,
      required this.description});

  factory ArticleModles.fromJson(json) {
    return ArticleModles(
        url: json['url'],
        image: json['urlToImage'],
        title: json['title'],
        description: json['description']);
  }
}
