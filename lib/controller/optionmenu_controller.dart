import 'package:flutter/material.dart';
import 'package:recipe_book/routes/drinks.dart';
import 'package:recipe_book/routes/favorite.dart';
import 'package:recipe_book/routes/food.dart';

class MenuController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10.0),
      child: LayoutBuilder(
        builder: (builder, constraint) {
          if (constraint.maxWidth < 1000) {
            return Column(
              children: [
                Container(
                  padding: EdgeInsets.only(bottom: 20.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: RaisedButton(
                      padding: EdgeInsets.fromLTRB(60.0, 24.0, 60.0, 24.0),
                      color: Colors.orange,
                      child: Text(
                        "Makanan",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return FoodPage();
                            },
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 20.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: RaisedButton(
                      padding: EdgeInsets.fromLTRB(60.0, 24.0, 60.0, 24.0),
                      color: Colors.orange,
                      child: Text(
                        "Minuman",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return DrinksPage();
                            },
                          ),
                        );
                      },
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: RaisedButton(
                    padding: EdgeInsets.fromLTRB(80.0, 22.0, 80.0, 22.0),
                    color: Colors.red,
                    child: Icon(Icons.favorite),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return FavoritePage();
                          },
                        ),
                      );
                    },
                  ),
                ),
              ],
            );
          } else {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: RaisedButton(
                    padding: EdgeInsets.fromLTRB(60.0, 24.0, 60.0, 24.0),
                    color: Colors.orange,
                    child: Text(
                      "Makanan",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return FoodPage();
                          },
                        ),
                      );
                    },
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: RaisedButton(
                    padding: EdgeInsets.fromLTRB(60.0, 24.0, 60.0, 24.0),
                    color: Colors.orange,
                    child: Text(
                      "Minuman",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return DrinksPage();
                          },
                        ),
                      );
                    },
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: RaisedButton(
                    padding: EdgeInsets.fromLTRB(60.0, 22.0, 60.0, 22.0),
                    color: Colors.red,
                    child: Icon(Icons.favorite),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return FavoritePage();
                          },
                        ),
                      );
                    },
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }
}
