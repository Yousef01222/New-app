

import 'package:flutter/material.dart';
import 'package:news_app/models/colected_models.dart';
import 'package:news_app/widget/categroy_card.dart';

class CategroiesList extends StatelessWidget {
  const CategroiesList({super.key});
  final List<ColectedModels> colocete = const [
    ColectedModels(
      image: 'assets/technology.jpeg',
       catrgroyName: 'technology'),

    ColectedModels
    (image: 'assets/business.jpg', 
    catrgroyName: 'Business'),

    ColectedModels(
      image: 'assets/science.jpg',
       catrgroyName: 'Science'),

    ColectedModels(
      image: 'assets/health.jpg',
       catrgroyName: 'Healthy'),

    ColectedModels(
      image: 'assets/general.jpg',
       catrgroyName: 'General'),

    ColectedModels(
        image: 'assets/entertaiment.jpg',
         catrgroyName: 'Entertaiment'),

    ColectedModels(
      image: 'assets/sports.jpg',
       catrgroyName: 'Sports'),
       ColectedModels(
        image: 'assets/photo_2024-08-29_22-01-09.jpg',
         catrgroyName: 'spots'),
         ColectedModels(
          image: 'assets/photo_2024-08-30_15-23-04.jpg',
           catrgroyName: 'zamalek'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: colocete.length,
          itemBuilder: (context, index) {
            return CategroyCard(
              colection: colocete[index],
            );
          }),
    );
  }
}
