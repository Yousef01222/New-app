import 'package:flutter/material.dart';
import 'package:news_app/widget/categroies_list.dart';
import 'package:news_app/widget/news_list_view_bliduer.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'News',
                style: TextStyle(color: Colors.black),
              ),
              Text(
                'Cloud',
                style: TextStyle(color: Colors.orange),
              )
            ],
          )),
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: CategroiesList(),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 30,
                ),
              ),
              NewsListViewBliduer(
                category: 'sports',
              ),
            ],
          ),
        ),

        // const Padding(
        //    padding: const EdgeInsets.symmetric(horizontal: 16),
        //    child: Column(
        //     children: [
        //        CategroiesWidegt(),
        //        SizedBox(
        //         height: 30,
        //        ),
        //        Expanded(child: CategroyNews()),
        //     ],
        //    ),
        //  ),
    
    
    );
  }
}
