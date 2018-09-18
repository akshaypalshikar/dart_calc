import 'package:flutter/material.dart';

class NumberButton extends StatelessWidget {
  final int number;
  final void onNumberPressed;
  NumberButton({this.number, @required this.onNumberPressed});

  int getNumber() {
    return number;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: ButtonTheme(
        minWidth: 100.0,
        height: 100.0,
        padding: EdgeInsets.all(10.0),
        child: RaisedButton(
          onPressed: () {
         //   onNumberPressed(this.number);
          },
          child: Text(
            number.toString(),
            textScaleFactor: 5.0,
          ),
          elevation: 1.0,
          animationDuration: Duration(
            milliseconds: 200,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          materialTapTargetSize: MaterialTapTargetSize.padded,
        ),
      ),
    );
  }
}
