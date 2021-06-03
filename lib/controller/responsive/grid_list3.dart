import 'package:flutter/material.dart';
import 'package:recipe_book/routes/home_list_recipe.dart';
import '../../models/list.dart';

class GridListThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 32.0),
      child: GridView.builder(
        itemCount: HomeDataList.length,
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
        ),
        itemBuilder: (context, index) {
          HomeData menu = HomeDataList[index];
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return HomeListRecipePage(
                      data: menu,
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
                      menu.image,
                      width: 450,
                      height: 450,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20.0),
                  child: Text(
                    menu.name,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
