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
        child: Column(
          children: [
            Text("Keluar Aplikasi?"),
            Row(
              children: [
                RaisedButton(
                  child: Text("Tidak"),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                RaisedButton(
                  child: Text("Ya"),
                  onPressed: () {
                    return Navigator.of(context).pop(true);
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  static exit(context) {
    showDialog(
      context: context,
      builder: (context) {
        return ExitDialog();
      },
    );
  }
}
