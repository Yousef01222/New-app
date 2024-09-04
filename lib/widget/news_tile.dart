import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_modles.dart';
import 'package:news_app/view/web_view.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModles});
  final ArticleModles articleModles;

  String imgUrl() {
    if (articleModles.image == null || articleModles.image == '') {
      return 'https://salonlfc.com/wp-content/uploads/2018/01/image-not-found-scaled-1150x647.png';
    } else {
      return articleModles.image!;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return WebViewww(url: articleModles.url);
        }));
      },
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: CachedNetworkImage(
              imageUrl: imgUrl(),
              placeholder: (context, url) =>
                  const Center(child: CircularProgressIndicator()),
            ),
          ),
          Text(
            articleModles.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.w500, fontSize: 20),
          ),
          Text(
            articleModles.description ?? '',
            maxLines: 2,
            style: const TextStyle(
                color: Colors.grey, fontWeight: FontWeight.w500, fontSize: 14),
          ),
        ],
      ),
    );
  }
}
