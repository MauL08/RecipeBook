import 'package:flutter/material.dart';
import 'package:recipe_book/controller/menu_controller.dart';
import 'package:recipe_book/controller/theme_controller.dart';
import 'package:recipe_book/routes/drinks.dart';
import 'package:recipe_book/routes/favorite.dart';
import 'package:recipe_book/routes/food.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Buku Resep Masakan Indonesia",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ThemeControl(),
            Container(
              padding: EdgeInsets.only(top: 10.0),
              child: Row(
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
              ),
            ),
            MenuController(),
          ],
        ),
      ),
    );
  }
}
