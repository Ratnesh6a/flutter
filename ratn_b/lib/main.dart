import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String output = "0";
  String _output = "0";
  double num1 = 0.0;
  double num2 = 0.0;
  String operand = "";

  operations(String btntext) {
    if (btntext == "C") {
      _output = "0";
      num2 = 0.0;
      num1 = 0.0;
      operand = "";
    } else if (btntext == "+" ||
        btntext == "-" ||
        btntext == "*" ||
        btntext == "/") {
      num1 = double.parse(output);
      operand = btntext;
      _output = "0";
    } else if (btntext == "=") {
      num2 = double.parse(output);
      if (operand == "+") {
        _output = (num1 + num2).toString();
      }
      if (operand == "-") {
        _output = (num1 - num2).toString();
      }
      if (operand == "*") {
        _output = (num1 * num2).toString();
      }
      if (operand == "/") {
        _output = (num1 / num2).toString();
      }
      num1 = 0.0;
      num2 = 0.0;
      operand = "";
    } else {
      _output = _output + btntext;
    }
    setState(() {
      output = double.parse(_output).toStringAsFixed(2);
    });
  }

  Widget button(String btntext) {
    return Expanded(
      child: RawMaterialButton(
        splashColor: Colors.black,
        hoverColor: Colors.pink,
        shape: Border.all(color: Colors.amberAccent, width: 2),
        fillColor: Colors.green,
        padding: EdgeInsets.all(30.0),
        child: Text(
          "$btntext",
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        onPressed: () {
          operations(btntext);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Calculator",
            style: TextStyle(
              color: Colors.blue,
            ),
          ),
          backgroundColor: Colors.black,
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.bottomRight,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.brown, width: 8),
                  ),
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.only(bottom: 8),
                  child: Text(
                    "$output",
                    style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  button("9"),
                  SizedBox(
                    width: 5,
                  ),
                  button("8"),
                  SizedBox(
                    width: 5,
                  ),
                  button("7"),
                  SizedBox(
                    width: 5,
                  ),
                  button("/"),
                  SizedBox(
                    width: 5,
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  button("6"),
                  SizedBox(
                    width: 5,
                  ),
                  button("5"),
                  SizedBox(
                    width: 5,
                  ),
                  button("4"),
                  SizedBox(
                    width: 5,
                  ),
                  button("*"),
                  SizedBox(
                    width: 5,
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  button("3"),
                  SizedBox(
                    width: 5,
                  ),
                  button("2"),
                  SizedBox(
                    width: 5,
                  ),
                  button("1"),
                  SizedBox(
                    width: 5,
                  ),
                  button("-"),
                  SizedBox(
                    width: 5,
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  button("C"),
                  SizedBox(
                    width: 5,
                  ),
                  button("0"),
                  SizedBox(
                    width: 5,
                  ),
                  button("="),
                  SizedBox(
                    width: 5,
                  ),
                  button("+"),
                  SizedBox(
                    width: 5,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
