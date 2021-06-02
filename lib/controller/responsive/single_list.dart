import 'package:flutter/material.dart';
import '../../models/list.dart';

class SingleListMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: HomeDataList.length,
        itemBuilder: (context, index) {
          HomeData menu = HomeDataList[index];
          return Container(
            child: Text(menu.name),
          );
        },
      ),
    );
  }
}
