import 'package:flutter/material.dart';

class MenuController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 800) {
          return SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 10.0),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset('images/theme/theme1.jpg'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset('images/theme/theme2.jpg'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset('images/theme/theme3.jpg'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset('images/theme/theme4.jpg'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset('images/theme/theme5.jpg'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset('images/theme/theme6.jpg'),
                    ),
                  ),
                ],
              ),
            ),
          );
        } else {
          return Container(
            child: Column(
              children: [
                Image.asset('images/food/telur_balado.jpg'),
                Image.asset('images/food/telur_balado.jpg'),
                Image.asset('images/food/telur_balado.jpg'),
                Image.asset('images/food/telur_balado.jpg'),
                Image.asset('images/food/telur_balado.jpg'),
              ],
            ),
          );
        }
      },
    );
  }
}
