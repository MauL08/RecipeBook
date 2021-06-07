import 'package:flutter/material.dart';

class ExitDialog extends StatelessWidget {
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
      child: Container(
        width: 400,
        height: 200,
        decoration: BoxDecoration(
          color: Colors.orange,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(24.0),
          border: Border.all(color: Colors.black, width: 5.0),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Keluar Aplikasi?",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              SizedBox(height: 30.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FlatButton(
                    hoverColor: Colors.red,
                    child: Text(
                      "Tidak",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context, false);
                    },
                  ),
                  RaisedButton(
                    color: Colors.orange[800],
                    hoverColor: Colors.red,
                    child: Text(
                      "Ya",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context, true);
                    },
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  static exit(context) async {
    await showDialog(
      context: context,
      builder: (context) {
        return ExitDialog();
      },
    );
  }
}
