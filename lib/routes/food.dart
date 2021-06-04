import 'package:flutter/material.dart';
import 'package:recipe_book/models/food.dart';
import 'package:recipe_book/routes/recipe.dart';

class FoodPage extends StatelessWidget {
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
      body: ListView.builder(
        itemCount: FoodDataList.length,
        itemBuilder: (context, index) {
          FoodData data = FoodDataList[index];
          return Container(
            padding: EdgeInsets.fromLTRB(4.0, 4.0, 4.0, 4.0),
            child: Card(
              child: ListTile(
                leading: Container(
                  height: 50,
                  width: 50,
                  child: Image.asset(
                    data.image,
                    fit: BoxFit.cover,
                  ),
                ),
                title: Text(data.name),
                subtitle: Text("Makanan Khas Indonesia"),
                trailing: Icon(Icons.arrow_forward),
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
              ),
            ),
          );
        },
      ),
    );
  }
}
