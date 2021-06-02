import 'package:flutter/material.dart';

class SlideHomePreview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      height: 300,
      child: ListView(
        scrollDirection: Axis.horizontal,
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
    );
  }
}
