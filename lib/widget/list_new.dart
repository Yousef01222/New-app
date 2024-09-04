import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:news_app/models/article_modles.dart';
import 'package:news_app/widget/news_tile.dart';

class ListNew extends StatelessWidget {
  final List<ArticleModles> articles;
  const ListNew({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
      childCount: articles.length,
      (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 22),
          child: NewsTile(
            articleModles: articles[index],
          ),
        );
      },
    ));
  }
}
