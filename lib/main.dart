import 'package:flutter/material.dart';

void main() {
  runApp(Calculator());
}

class Calculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: SimpleCalculator(),
    );
  }
}

class SimpleCalculator extends StatefulWidget {
  @override
  _SimpleCalculatorState createState() => _SimpleCalculatorState();
}

class _SimpleCalculatorState extends State<SimpleCalculator> {
  Widget buildButton(
      String buttonText, double buttonHeight, Color buttonColor) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1 * buttonHeight,
      color: buttonColor,
      child: TextButton(
        onPressed: null,
        child: Text(
          buttonText,
          style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.normal,
              color: Colors.white),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.fromLTRB(10, 30, 10, 0),
            child: Text(
              '0',
              style: TextStyle(fontSize: 30.0),
            ),
          ),
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
            child: Text(
              '0',
              style: TextStyle(fontSize: 48.0),
            ),
          ),
          Expanded(
            child: Divider(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width * 0.75,
                child: Table(
                  children: [
                    TableRow(children: [
                      buildButton('C', 1, Colors.redAccent),
                      buildButton('x', 1, Colors.blue),
                      buildButton('/', 1, Colors.blue)
                    ]),
                    TableRow(children: [
                      buildButton('7', 1, Colors.black54),
                      buildButton('8', 1, Colors.black54),
                      buildButton('9', 1, Colors.black54)
                    ]),
                    TableRow(children: [
                      buildButton('4', 1, Colors.black54),
                      buildButton('5', 1, Colors.black54),
                      buildButton('6', 1, Colors.black54)
                    ]),
                    TableRow(children: [
                      buildButton('1', 1, Colors.black54),
                      buildButton('2', 1, Colors.black54),
                      buildButton('3', 1, Colors.black54)
                    ]),
                    TableRow(children: [
                      buildButton('.', 1, Colors.black54),
                      buildButton('0', 1, Colors.black54),
                      buildButton('00', 1, Colors.black54)
                    ])
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * .25,
                child: Table(
                  children: [
                    TableRow(children: [buildButton('x', 1, Colors.blue)]),
                    TableRow(children: [buildButton('-', 1, Colors.blue)]),
                    TableRow(children: [buildButton('+', 1, Colors.blue)]),
                    TableRow(children: [buildButton('=', 2, Colors.redAccent)])
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
