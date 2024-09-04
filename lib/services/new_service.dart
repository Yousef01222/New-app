import 'package:dio/dio.dart';
import 'package:news_app/models/article_modles.dart';

class NewService{
   
   final Dio dio;
   final String baseUrl='https://newsapi.org/v2';
   final String apiKey='1c7090aab5204625a5ea4cf87a3f4881';

  NewService( this.dio);

    
   Future<List<ArticleModles>> getHeadLines({required String category}) async{

    try {
  var response = await dio.get(
    '$baseUrl/everything?apiKey=$apiKey&language=en&q=$category');
  
   Map<String, dynamic> jsonData = response.data;
   List<dynamic> articles = jsonData['articles'];
   List<ArticleModles> articlesList= [];
  
   for (var article in articles) {
  
    ArticleModles articleModles = ArticleModles.fromJson(article);
     articlesList.add(articleModles);
   }
     return articlesList;
}  catch (e) {
  return [];
}
 }
}