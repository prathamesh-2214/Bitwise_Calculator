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
      title: 'BitWise Calculator',
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
                      calculation("AND");
                    },
                    child: Text(
                      "AND",
                      style: TextStyle(fontSize: 18),
                    )),
                SizedBox(
                  height: 20,
                  width: 30,
                ),
                ElevatedButton(
                    onPressed: () {
                      calculation("OR");
                    },
                    child: Text(
                      "OR",
                      style: TextStyle(fontSize: 18),
                    )),
                SizedBox(
                  height: 20,
                  width: 30,
                ),
                ElevatedButton(
                    onPressed: () {
                      calculation("XOR");
                    },
                    child: Text(
                      "XOR",
                      style: TextStyle(fontSize: 18),
                    )),
                SizedBox(
                  height: 20,
                  width: 30,
                ),
                ElevatedButton(
                    onPressed: () {
                      calculation("Shift Right");
                    },
                    child: Text(
                      "Shift Right",
                      style: TextStyle(fontSize: 18),
                    )),
                SizedBox(height: 20, width: 30),
                ElevatedButton(
                    onPressed: () {
                      calculation("Shift Left");
                    },
                    child: Text(
                      "Shift Left",
                      style: TextStyle(fontSize: 18),
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
                style: TextStyle(fontSize: 18),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                "Dart Bitwise Operators \n",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Bitwise operator are used to perform bit level operation over its operand. \n",
                  style: TextStyle(fontSize: 18),
                )),
            SizedBox(
              height: 30,
            ),
            Container(
              alignment: Alignment.bottomLeft,
              child: Image.asset("assets/img.png"),
            )
          ],
        ));
  }

  void calculation(String value) {
    int valueOne = int.parse(firstnum.text.toString());
    int valuetwo = int.parse(secondnum.text.toString());
    switch (value) {
      case "AND":
        int value = valueOne & valuetwo;
        setState(() {
          answer = "Result : " + value.toString();
        });
        break;
      case "OR":
        int value = valueOne | valuetwo;
        setState(() {
          answer = "Result : " + value.toString();
        });
        break;
      case "XOR":
        int value = valueOne ^ valuetwo;
        setState(() {
          answer = "Result : " + value.toString();
        });
        break;
      case "Shift Right":
        var value = valueOne >> valuetwo;
        setState(() {
          answer = "Result :  " + value.toString();
        });
        break;
      case "Shift Left":
        var value = valueOne << valuetwo;
        setState(() {
          answer = "Result : " + value.toString();
        });
        break;
    }
  }
}
