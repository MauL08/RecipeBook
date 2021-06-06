import 'package:flutter/material.dart';
import 'package:recipe_book/models/recipe.dart';
import 'package:recipe_book/routes/recipe/responsive/horizontal_recipe.dart';
import 'package:recipe_book/routes/recipe/responsive/vertical_recipe.dart';

class HomeListRecipePage extends StatelessWidget {
  final RecipeData data;

  HomeListRecipePage({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          data.name,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: Icon(Icons.favorite),
          )
        ],
      ),
      body: LayoutBuilder(
        builder: (context, constraint) {
          if (constraint.maxWidth < 1800) {
            return VerticalRecipePage(data: data);
          } else {
            return HorizontalRecipePage(data: data);
          }
        },
      ),
    );
  }
}
