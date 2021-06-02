import 'package:flutter/material.dart';
import 'package:recipe_book/controller/menulist_controller.dart';
import 'package:recipe_book/controller/optionmenu_controller.dart';
import 'package:recipe_book/controller/slideshow_controller.dart';
import '../models/list.dart';

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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SlideHomePreview(),
            MenuController(),
            HomeListMenu(),
          ],
        ),
      ),
    );
  }
}
