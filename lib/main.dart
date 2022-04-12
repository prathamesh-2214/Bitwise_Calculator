import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Bitwise Calculator'),
        ),
        body: Calculator(),
      ),
    );
  }
}

class Calculator extends StatefulWidget {
  State createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String answer = 'Result  : ';
  var firstnum = TextEditingController();
  var secondnum = TextEditingController();
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            TextFormField(
              controller: firstnum,
              decoration: InputDecoration(
                  labelText: 'First Number', hintText: 'Enter a number '),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: secondnum,
              decoration: InputDecoration(
                  labelText: 'Second Number', hintText: 'Enter a number '),
            ),
            const SizedBox(
              height: 20,
              width: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      calculation("+");
                    },
                    child: Text(
                      "+",
                      style: TextStyle(fontSize: 30),
                    )),
                SizedBox(
                  height: 20,
                  width: 30,
                ),
                ElevatedButton(
                    onPressed: () {
                      calculation("-");
                    },
                    child: Text(
                      "-",
                      style: TextStyle(fontSize: 30),
                    )),
                SizedBox(
                  height: 20,
                  width: 30,
                ),
                ElevatedButton(
                    onPressed: () {
                      calculation("*");
                    },
                    child: Text(
                      "*",
                      style: TextStyle(fontSize: 30),
                    )),
                SizedBox(
                  height: 20,
                  width: 30,
                ),
                ElevatedButton(
                    onPressed: () {
                      calculation("/");
                    },
                    child: Text(
                      "/",
                      style: TextStyle(fontSize: 30),
                    )),
                SizedBox(
                  height: 20,
                  width: 30,
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Text(
                answer,
                style: TextStyle(fontSize: 30),
              ),
            )
          ],
        ));
  }

  void calculation(String value) {
    int valueOne = int.parse(firstnum.text.toString());
    int valuetwo = int.parse(secondnum.text.toString());
    switch (value) {
      case "+":
        int value = valueOne + valuetwo;
        setState(() {
          answer = "Your Ans is : " + value.toString();
        });
        break;
      case "-":
        int value = valueOne - valuetwo;
        setState(() {
          answer = "Your Ans is : " + value.toString();
        });
        break;
      case "*":
        int value = valueOne * valuetwo;
        setState(() {
          answer = "Your Ans is : " + value.toString();
        });
        break;
      case "/":
        double value = valueOne / valuetwo;
        setState(() {
          answer = "Your Ans is : " + value.toString();
        });
        break;
    }
  }
}
