import 'package:flutter/material.dart';
import '../recipe/drink_page_recipe.dart';
import 'package:recipe_book/models/recipe.dart';

class DrinksPage extends StatelessWidget {
  final List<RecipeData> data = DrinkDataContent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Resep Minuman",
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
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return DrinkPageRecipe(
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
