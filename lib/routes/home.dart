import 'package:flutter/material.dart';
import 'package:recipe_book/controller/menulist_controller.dart';
import 'package:recipe_book/controller/optionmenu_controller.dart';
import 'package:recipe_book/controller/slideshow_controller.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Buku Resep Nusantara",
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
