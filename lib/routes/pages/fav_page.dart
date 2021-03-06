import 'package:flutter/material.dart';
import 'package:recipe_book/controller/dialogs/trash_button_dialog.dart';
import 'package:recipe_book/models/recipe.dart';
import 'package:recipe_book/routes/recipe/fav_page_recipe.dart';

class FavoritePage extends StatelessWidget {
  final List<RecipeData> data = FavoriteDataContent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Resep Favorit",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: data.map((value) {
          return Container(
            padding: EdgeInsets.fromLTRB(4.0, 4.0, 4.0, 4.0),
            child: Card(
              child: ListTile(
                leading: Container(
                  height: 50,
                  width: 50,
                  child: Image.asset(
                    value.image,
                    fit: BoxFit.cover,
                  ),
                ),
                title: Text(value.name),
                subtitle: Text("Makanan Khas Indonesia"),
                trailing: IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {
                    return TrashButtonDialog.confirm(context);
                  },
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return FavoritePageRecipe(
                          data: value,
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
