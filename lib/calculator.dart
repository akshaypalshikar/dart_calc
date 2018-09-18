import 'package:flutter/material.dart';
import 'package:dart_calc/number_button.dart';

class Calculator extends StatefulWidget {
  final double number;
  Calculator({this.number = 0.0});

  @override
  State<StatefulWidget> createState() {
    return _CalculatorState();
  }
}

class _CalculatorState extends State<Calculator> {
  //Information for calculation
  double number;
  double newNumber;
  String currentOperator;

  //structure
  Text _expression;

  @override
  void initState() {
    _expression = Text(
      widget.number.toString(),
      textScaleFactor: 3.0,
      style: TextStyle(
        fontFamily: 'Georgia',
      ),
    );
    super.initState();
  }

  bool _onButtonPress(int newNumber) {
    Text newEx = Text(_expression.data + newNumber.toString());
    this._expression = newEx;
    this.newNumber = newNumber.toDouble();
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _expression,
        Row(
          children: [
            NumberButton(number: 7, onNumberPressed: _onButtonPress),
            NumberButton(number: 8, onNumberPressed: _onButtonPress),
            NumberButton(number: 9, onNumberPressed: _onButtonPress),
          ],
        ),
        Row(
          children: [
            NumberButton(number: 4, onNumberPressed: _onButtonPress),
            NumberButton(number: 5, onNumberPressed: _onButtonPress),
            NumberButton(number: 6, onNumberPressed: _onButtonPress),
          ],
        ),
        Row(
          children: [
            NumberButton(number: 1, onNumberPressed: _onButtonPress),
            NumberButton(number: 2, onNumberPressed: _onButtonPress),
            NumberButton(number: 3, onNumberPressed: _onButtonPress),
          ],
        ),
      ],
    );
  }
}
