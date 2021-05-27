import 'package:flutter/material.dart';
import 'package:recipe_book/models/food.dart';
import 'package:recipe_book/routes/recipe.dart';

class FoodPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Resep Makanan",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          FoodData data = FoodDataList[index];
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return RecipePage(
                      data: data,
                    );
                  },
                ),
              );
            },
          );
        },
        itemCount: FoodDataList.length,
      ),
    );
  }
}
