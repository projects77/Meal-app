

import 'package:flutter/material.dart';
import 'package:meal_app/widgets/meal_item.dart';
import '../models/meal.dart';
class FavoritesScreen extends StatelessWidget {

  final List<Meal> favoriteMeals;

   FavoritesScreen( this.favoriteMeals) ;


  @override
  Widget build(BuildContext context) {
     if(favoriteMeals.isEmpty){
       return Center(
         child: Text("favorites"),
       );
     }
    else{
      return  ListView.builder(
        itemBuilder:(ctx,index){
          return MealItem(
            id:favoriteMeals [index].id,
            imageUrl:favoriteMeals [index].imageUrl,
            title:favoriteMeals [index].title,
            duration:favoriteMeals [index].duration,
            complexity: favoriteMeals[index].complexity,
            affordability:favoriteMeals[index].affordability,




          );
        } ,
        itemCount: favoriteMeals .length ,

      ) ;
     }




  }
}
