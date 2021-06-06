import 'package:flutter/material.dart';

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
      child: Container(
        child: Column(
          children: [
            Text("Tambahkan ke Favorit?"),
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
                  onPressed: () {},
                )
              ],
            )
          ],
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

class name extends StatefulWidget {
  @override
  _nameState createState() => _nameState();
}

class _nameState extends State<name> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
