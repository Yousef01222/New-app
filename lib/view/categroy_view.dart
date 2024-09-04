
import 'package:flutter/material.dart';
import 'package:news_app/widget/news_list_view_bliduer.dart';

class CategroyView extends StatelessWidget {
  const CategroyView({super.key, required this.category});
  final String category;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: CustomScrollView(
        slivers: [
          NewsListViewBliduer(
            category: category,
          ),
        ],
      ) ,
      
    );
  }
}