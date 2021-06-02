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
        if (constraint.maxWidth < 800) {
          return SingleListMenu();
        } else if (constraint.maxWidth < 1600) {
          return Container(
            child: Text("Width Max 1600"),
          );
        } else if (constraint.maxWidth < 2400) {
          return Container(
            child: Text("Width Max 2400"),
          );
        } else {
          return Container(
            child: Text("Width Max > 2400"),
          );
        }
      },
    );
  }
}
