import 'package:flutter/material.dart';
import 'package:flutter_simple_calculator/flutter_simple_calculator.dart';
import 'package:gap/gap.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              }),
          title: Container(
            child: const Text('Calculator',
                style: TextStyle(
                  fontSize: 15,
                )),
          ),
          backgroundColor: Color(0xFF2BCBD9),
        ),
        body: SimpleCalculator(
          value: 0.0,
          hideExpression: true,
          onChanged: (key, value, expression) {
            /*...*/
          },
          theme: const CalculatorThemeData(
            displayColor: Colors.black,
            displayStyle: const TextStyle(fontSize: 80, color: Colors.yellow),
          ),
        ));
  }
}
