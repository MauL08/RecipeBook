import 'package:flutter/material.dart';
import 'package:recipe_book/controller/responsive/grid_list1.dart';
import 'package:recipe_book/controller/responsive/grid_list2.dart';
import 'package:recipe_book/controller/responsive/grid_list3.dart';
import 'package:recipe_book/controller/responsive/single_list.dart';

class HomeListMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (builder, constraint) {
        if (constraint.maxWidth < 1000) {
          return SingleListMenu();
        } else if (constraint.maxWidth < 1400) {
          return GridListOne();
        } else if (constraint.maxWidth < 1800) {
          return GridListTwo();
        } else {
          return GridListThree();
        }
      },
    );
  }
}
