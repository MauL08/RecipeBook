import 'package:flutter/material.dart';
import '../../models/recipe.dart';
import 'package:recipe_book/controller/dialogs/fav_button_dialog.dart';
import 'package:recipe_book/routes/recipe/responsive/horizontal_recipe.dart';
import 'package:recipe_book/routes/recipe/responsive/vertical_recipe.dart';

class FavoritePageRecipe extends StatelessWidget {
  final RecipeData data;

  FavoritePageRecipe({required this.data});

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
            child: WillPopScope(
              child: IconButton(
                icon: Icon(Icons.favorite),
                onPressed: () {},
              ),
              onWillPop: () {
                return FavButtonDialog.confirm(context);
              },
            ),
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
