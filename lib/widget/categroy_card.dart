
import 'package:flutter/material.dart';
import 'package:news_app/models/colected_models.dart';
import 'package:news_app/view/categroy_view.dart';

class CategroyCard extends StatelessWidget {
  const CategroyCard({super.key, required this.colection});
  final ColectedModels colection;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context){
          return  CategroyView( 
            category: colection.catrgroyName);
        }));
      },
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(right: 16),
        height: 85,
        width: 200,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(colection.image),
               fit: BoxFit.fill),
          color: Colors.orange,
          borderRadius: BorderRadius.circular(11),
        ),
        child: Center(
            child: Text(
          colection.catrgroyName,
          style:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
