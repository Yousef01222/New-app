// import 'package:dio/dio.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:news_app/models/article_modles.dart';
// import 'package:news_app/services/new_service.dart';
// import 'package:news_app/widget/news_tile.dart';

// class ListNew extends StatefulWidget {
//   const ListNew({super.key});

//   @override
//   State<ListNew> createState() => _ListNewState();
// }

// class _ListNewState extends State<ListNew> {
//   List<ArticleModles> articles = [];
//   bool isloading = true;

//   @override
//   void initState() {
//     super.initState();
//     getGeneralNews();
//   }

//   Future<void> getGeneralNews() async {
//     articles = await NewService(Dio()).getNew();
//     isloading = false;
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return isloading
//         ? const SliverToBoxAdapter(
//             child: Center(
//                 child: CircularProgressIndicator(
//                   color: Colors.green,
//                   strokeAlign:BorderSide.strokeAlignCenter
//                 )))
//         : SliverList(
//             delegate: SliverChildBuilderDelegate(
//             childCount: articles.length,
//             (context, index) {
//               return Padding(
//                 padding: const EdgeInsets.only(bottom: 22),
//                 child: NewsTile(
//                   articleModles: articles[index],
//                 ),
//               );
//             },
//           ));
//   }
// }
