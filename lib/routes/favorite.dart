import 'package:flutter/material.dart';

class FavoritePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Resep Favorit",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Text("Daftar Favorite Kosong"),
      ),
    );
  }
}
