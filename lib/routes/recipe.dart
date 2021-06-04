import 'package:flutter/material.dart';
import '../models/food.dart';

class RecipePage extends StatelessWidget {
  final FoodData data;

  RecipePage({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "test",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
