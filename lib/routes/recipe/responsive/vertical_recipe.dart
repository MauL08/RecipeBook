import 'package:flutter/material.dart';
import 'package:recipe_book/models/recipe.dart';

class VerticalRecipePage extends StatelessWidget {
  final RecipeData data;

  VerticalRecipePage({required this.data});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Image.asset(data.image),
          ),
          Container(
            margin: EdgeInsets.only(top: 25.0),
            child: Text(
              "Bahan-Bahan",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(120.0),
            child: Container(
              margin: EdgeInsets.all(24.0),
              padding: EdgeInsets.only(
                top: 16.0,
                bottom: 16.0,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.orange,
                  width: 5.0,
                ),
                color: Colors.white,
              ),
              child: Column(
                children: data.ingredients.map(
                  (value) {
                    return Container(
                      margin: EdgeInsets.only(
                        left: 16.0,
                        top: 10.0,
                        bottom: 4.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            ">  ",
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            value,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    );
                  },
                ).toList(),
              ),
            ),
          ),
          Container(
            child: Text(
              "Cara Masak",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(120.0),
              child: Container(
                margin: EdgeInsets.all(24.0),
                padding: EdgeInsets.only(
                  top: 16.0,
                  bottom: 16.0,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.orange,
                    width: 5.0,
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  children: data.howTo.map(
                    (value) {
                      return Container(
                        height: 15,
                        margin: EdgeInsets.fromLTRB(
                          10.0,
                          10.0,
                          10.0,
                          4.0,
                        ),
                        child: FittedBox(
                          child: Text(
                            value,
                            textAlign: TextAlign.start,
                          ),
                        ),
                      );
                    },
                  ).toList(),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
