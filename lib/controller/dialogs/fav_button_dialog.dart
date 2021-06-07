import 'package:flutter/material.dart';

class FavButton extends StatefulWidget {
  @override
  _FavButtonState createState() => _FavButtonState();
}

class _FavButtonState extends State<FavButton> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.favorite,
        color: status ? Colors.red : Colors.black,
      ),
      onPressed: () {
        setState(() {
          status = true;
        });
        return FavButtonDialog.confirm(context);
      },
    );
  }
}

class FavButtonDialog extends StatefulWidget {
  @override
  _FavButtonDialogState createState() => _FavButtonDialogState();

  static confirm(context) {
    showDialog(
      context: context,
      builder: (context) {
        return FavButtonDialog();
      },
    );
  }
}

class _FavButtonDialogState extends State<FavButtonDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: Center(
        child: Container(
          child: Column(
            children: [
              Text("Resep ditambahkan ke Favorit"),
              RaisedButton(
                child: Text("OK"),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
