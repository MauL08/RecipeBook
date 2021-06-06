import 'package:flutter/material.dart';
import 'package:recipe_book/routes/recipe/home_list_recipe.dart';
import '../../models/recipe.dart';

class GridListOne extends StatelessWidget {
  final List<RecipeData> data = HomeDataContent;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 32.0),
      child: GridView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        children: data.map((value) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return HomeListRecipePage(
                      data: value,
                    );
                  },
                ),
              );
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(70.0),
                    child: Image.asset(
                      value.image,
                      width: 450,
                      height: 450,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20.0),
                  child: Text(
                    value.name,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
