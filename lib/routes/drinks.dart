import 'package:flutter/material.dart';

class DrinksPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Resep Minuman",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Text("Menu Kosong"),
      ),
    );
  }
}
