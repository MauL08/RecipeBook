import 'package:flutter/material.dart';
import 'package:recipe_book/controller/dialogs/exit_dialog.dart';
import 'package:recipe_book/controller/optionmenu_controller.dart';
import 'package:recipe_book/controller/slideshow_controller.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        backgroundColor: Colors.green,
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
              Container(
                padding: EdgeInsets.all(20.0),
                margin: EdgeInsets.only(top: 28.0),
                decoration: BoxDecoration(
                  color: Colors.orange,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Column(
                  children: [
                    Text(
                      "Selamat Datang di",
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Image.asset("images/logo/logo.png")
                  ],
                ),
              ),
              SlideHomePreview(),
              MenuController(),
            ],
          ),
        ),
      ),
      onWillPop: () {
        return ExitDialog.exit(context);
      },
    );
  }
}
