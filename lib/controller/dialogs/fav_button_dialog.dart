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

class FavButtonDialog extends StatelessWidget {
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
          width: 400,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.orange,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(24.0),
            border: Border.all(color: Colors.black, width: 5.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Resep ditambahkan ke Favorit",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              SizedBox(height: 30.0),
              RaisedButton(
                color: Colors.orange[800],
                hoverColor: Colors.red,
                child: Text(
                  "OK",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12.0,
                  ),
                ),
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

  static confirm(context) {
    showDialog(
      context: context,
      builder: (context) {
        return FavButtonDialog();
      },
    );
  }
}
