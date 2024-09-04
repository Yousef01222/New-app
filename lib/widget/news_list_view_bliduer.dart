import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:news_app/models/article_modles.dart';
import 'package:news_app/services/new_service.dart';
import 'package:news_app/widget/errors_messege.dart';
import 'package:news_app/widget/list_new.dart';
import 'package:news_app/widget/lodaing_indicator.dart';

class NewsListViewBliduer extends StatelessWidget {
  const NewsListViewBliduer({super.key, required this.category});
  final String category;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder <List<ArticleModles>>(
      future: NewService(Dio()).getHeadLines(category: category),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ListNew(
            articles: snapshot.data!,
          );
        } else if (snapshot.hasError) {
          return const SliverFillRemaining(
            child: Center(child: ErrorMessege(massege: 'oppa there was an error')),
          );
        } else {
          return const SliverFillRemaining(
            child: Center(
              child: LoadingIndicator(),
            ),
          );
        }
      },
    );
  }
}

//   return isloading ?const SliverFillRemaining(
  //     // hasScrollBody: true,
  //     // fillOverscroll: false,
  //     child: Center(
        
  //       child: CircularProgressIndicator(
  //         backgroundColor: Colors.green,
  //         strokeWidth: 2,
  //         strokeAlign: BorderSide.strokeAlignCenter,
  //         //semanticsLabel: String.fromEnvironment('mjhoko'),
  //        // semanticsValue: String.fromEnvironment('yousef'),
          
  //       )))
  //    : articles.isNotEmpty?  ListNew(
  //     articles: articles,
  //     ) : const SliverFillRemaining(
  //       child: Center(
  //         child: Text('opps there was an error , try latter',
  //         style: TextStyle(color: Colors.black, fontSize: 20),)));
  // }

