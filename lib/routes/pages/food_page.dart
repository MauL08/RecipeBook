import 'package:flutter/material.dart';
import 'package:recipe_book/routes/recipe/food_page_recipe.dart';
import '../../models/recipe.dart';

class FoodPage extends StatelessWidget {
  final List<RecipeData> data = RecipeDataContent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Resep Makanan",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: data.map((value) {
          if (value.type == "Food") {
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
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return FoodPageRecipe(
                            data: value,
                          );
                        },
                      ),
                    );
                  },
                ),
              ),
            );
          } else {
            return Container();
          }
        }).toList(),
      ),
    );
  }
}
