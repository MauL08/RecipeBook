import 'package:flutter/material.dart';
import '../models/list.dart';

class HomeListRecipePage extends StatelessWidget {
  final HomeData data;

  HomeListRecipePage({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          data.name,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Text(data.name),
      ),
    );
  }
}
